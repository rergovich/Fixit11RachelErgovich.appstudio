

btnAdd.onclick=function(){
  query = `INSERT INTO customer (name,street,city,state,zipcode) VALUES ("Jesse Antiques", "1113 F St", "Omaha, NE", "68178")`
  alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status ==200) {
    results = JSON.parse(req.responseText)
    console.log(results)
  
    if (req.responseText == 500)
      NSB.MsgBox(`You have successfully added the customer!`)
    else {
      NSB.MsgBox(`There was a problem added the customer`)
      
      let message = ""
        for (i = 0; i <= results.length - 1; i++) {
          message = message + results[i][1] + "\n"
        }
      txtCustomer.value = message
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

customerUpdate.onshow=function(){
  txtCustomer_contents.style.height = "100px"
  query = `SELECT name FROM customer`
  alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status ==200) {
    customerData = JSON.parse(req.responseText)
    console.log(results)
  
    if (results.length == 0)
      NSB.MsgBox(`There are no customers.`)
    else {
      console.log(`The parsed JSON is ${results}.`)
      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
      
      let message = ""
        for (i = 0; i <= results.length - 1; i++) {
          message = message + results[i][1] + "\n"
        }
      txtUpdate.value = message
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

btnUpdate.onclick=function(){
  let newName = inptUpdate.value
  let oldName = txtUpdate.value
  
  let found = false
  for (i = 0; i <= customerData.length - 1; i++) {
    console.log(`FOUND IS false and name is ${customerData[i]}`)
    if (oldName == customerData[i]) {
      found = true
      break
    }
  }   
  if (found == false) 
    NSB.MsgBox("That customer name is not in the database.")
    else if (found == true) {
      query = `UPDATE customer SET name = "${newName}" WHERE name = "${oldName}"`
      alert(query)
      req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
      
      if (req.status == 200) {
        if (req.responseText == 500) {
          NSB.MsgBox(`You have successfully changed the customer name!`)
          let message = ''
            for (i = 0; i <= results.length -1; i++) {
              message = message + results[i][1] + "\n"
            }
          txtUpdate.value = message
        } else
            NSB.MsgBox(`There was a problem changing the customer name`)
      } else
          NSB.MsgBox(`Error: ${req.status}`)
    }
}
