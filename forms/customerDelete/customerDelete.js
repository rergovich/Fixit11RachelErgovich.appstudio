
let customerData = ''

customerDelete.onshow=function(){
  txtUpdate_contents.style.height = "100px"
  query = `SELECT name FROM customer`
  alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status == 200) {
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
      txtDelete.value = message
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

btnDelete.onclick=function(){
  let customerName = txtDelete.value
  
  let found = false
  for (i = 0; i <= customerData.length - 1; i++) {
    if (customerName == customerData[i][1]) {
      found = true
      break
    }
  }
  if (found == false)
    NSB.MsgBox(`That customer is not in the database.`)
  
    else if (found == true) {
      let query = `DELETE FROM customer WHERE name = ${CustomerName}`
      alert(query)
      req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
      
      if (req.status == 200) {
        if (req.response.Text == 500) {
          NSB.MsgBox(`You successfully deleted the customer named ${customerName}`)
          let message = ''
            for (i = 0; i <= results.length - 1; i++) {
              message = message + results[i][1] + "\n"
            }
          txtDelete.value = message
        } else 
            NSB.MsgBox(`There was a problem deleting ${customerName} from the data` )
    } else 
        NSB.MsgBox(`Error: ${req.status}`)
  }
}
