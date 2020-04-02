
customerDelete.onshow=function(){
  query = `SELECT * FROM customer`
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status == 200) {
    results = JSON.parse(req.responseText)
    console.log(results)
    if (results.length == 0)
      NSB.MsgBox(`There are no customers.`)
    else {
      console.log(`The parsed JSON is ${results}.`)
      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
      
        for (i = 0; i <= results.length - 1; i++) {
          drpDelete.addItem(results[i][1]) 
        }
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

drpDelete.onclick=function(s){
   if (typeof (s) == 'object') {
    return
  } else {
      drpDelete.value = s
      customerName = drpDelete.selection
      console.log(customerName)
  
      query = `DELETE FROM customer WHERE name = "${customerName}"`
      alert(query)
      req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
      if (req.status == 200) {
        results = JSON.parse(req.responseText)
        if (req.responseText == 500) {
          NSB.MsgBox(`The customer was deleted.`)
          }
          else {
            NSB.MsgBox(`Could not delete customer.`)
          }
        } else
            NSB.MsgBox(`Error code: ${req.status}.`)
      }
  query = `SELECT * FROM customer`
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  if (req.status == 200) {
    results = JSON.parse(req.responseText)
    console.log(results)
    if (results.length == 0)
      NSB.MsgBox(`There are no customers.`)
    else {
      //console.log(`The parsed JSON is ${results}.`)
      //console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
        let message = ''
        for (i = 0; i <= results.length - 1; i++) {
          message = message + results[i][1] + "\n"
          txtDelete.value = message
        }
    }
  }
}

btnDelete.onclick=function(){
  ChangeForm(customerAdd)
}
