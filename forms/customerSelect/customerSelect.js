let query = ''
let req = ''
let results = ''
let customerData = []

customerSelect.onshow=function(){
  query = `SELECT * FROM customer`
  //alert(query)
  req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
  
  if (req.status == 200) {
    results = JSON.parse(req.responseText)
    console.log(results)
    customerData = results
  
    if (results.length == 0)
      NSB.MsgBox(`There are no customers.`)
    else {
      console.log(`The parsed JSON is ${results}.`)
      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
      
      let message = ""
        for (i = 0; i <= results.length - 1; i++) {
      drpSelect.addItem(results[i][1]) }
    }
  } else
      NSB.MsgBox(`Error code: ${req.status}.`)
}

drpSelect.onclick=function(s){
  let customerName = ''
  let state = ''
  let foundNames = []
  
  if (typeof (s) == 'object') {
    return
  } else {
      drpSelect.value = s
      customerName = drpSelect.selection
      //console.log(`customerName is ${customerName}`)
      for (i = 0; i <= customerData.length - 1; i++) {
        if (customerName == customerData[i][1]) {
          state = customerData[i][4]
          break
        } //if
      }//for
      for (i = 0; i <= customerData.length - 1; i++) {
        //console.log(`state is ${state} and customer data is ${customerData[i][4]}`)
        if (state == customerData[i][4])
          foundNames.push(customerData[i][1])
      } //for
        //console.log(`The state is ${state} and the names in same state are ${foundNames}`)
        
        //show customers with state same as chosen above
          query = `SELECT name FROM customer WHERE state = "${state}"`
          //alert(query)
          req = Ajax("https://ormond.creighton.edu/courses/375/ajax-connection.php", "POST", "host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=" + query)
          if (req.status == 200) {
            results = JSON.parse(req.responseText)
            if (results.length == 0)
              NSB.MsgBox(`There are no customers.`)
            else {
              //console.log(`The parsed JSON is ${results}.`)
              //console.log(`The first row/item in the big array is a small array: ${results[0]}.`)
              
              let message = ""
                for (i = 0; i <= results.length - 1; i++) {
                  message = message + results[i][0] + "\n"
              txtaSelect.value = message }
            } //else
          } else
              NSB.MsgBox(`Error code: ${req.status}.`)
    } // else not object
  
}

btnSelect.onclick=function(){
  ChangeForm(customerDelete)
}
