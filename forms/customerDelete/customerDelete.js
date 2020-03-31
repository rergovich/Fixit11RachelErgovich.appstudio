
customerDelete.onshow=function(){
  txtDelete_contents.style.height = "100px"
  query = `SELECT name FROM customer`
  alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status ==200) {
    results = JSON.parse(req.responseText)
    console.log(results)
  
    if (results.length == 0)
      NSB.MsgBox(`There are no customers.`)
    else {
      console.log(`The parsed JSON is ${results}.`)
      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
      
      let name = ""
        for (i = 0; i <= results.length - 1; i++) {
          name = name + results[i][1] + "\n"
        }
      txtSelect.value = name
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

btnDelete.onclick=function(){
  let customerName = txtDelete.value
  
  query = `DELETE FROM customer WHERE name = ${CustomerName}`
  alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status ==200) {
    results = JSON.parse(req.responseText)
    console.log(results)
  
    if (results.length == 0)
      NSB.MsgBox(`There are no customers that match.`)
    else {
      console.log(`The parsed JSON is ${results}.`)
      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
      
      let message = ""
        for (i = 0; i <= results.length - 1; i++) {
          message = message + results[i][1] + "\n"
        }
      txtSelect.value = message
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}
