let query = ''
let req = ''
let results = ''

customerSelect.onshow=function(){
  txtSelect_contents.style.height = "100px"
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

let queryState = ''

btnSelect.onclick=function(){
  queryState = `SELECT state FROM customer WHERE name = "${txtSelect.value}"`
  alert(queryState)
  req1 = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + queryState)
  
  if (req1.status ==200) {
    state = JSON.parse(req1.responseText)
    console.log(state)
  } else
      NSB.MsgBox(`Error code: ${req1.status}`)
  
  query = `SELECT * FROM customer WHERE state = ${state}`
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

