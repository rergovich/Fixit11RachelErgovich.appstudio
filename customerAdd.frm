{
  "!type": "Form",
  "_uuid": "0bb9783d27104b94b8e8d0468fdc0eab",
  "HTML": "",
  "attributes": "",
  "background": "",
  "backgroundimage": "",
  "borderColor": "",
  "borderStyle": "",
  "borderWidth": "",
  "cached_js": "/*\ncustomerDelete.onshow=function(){\n  txtCustomer_contents.style.height = \"100px\"\n  query = `SELECT name FROM customer`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtDelete.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n*/\nbtnDelete.onclick=function(){\n  let customerName = txtDelete.value\n  \n  query = `DELETE FROM customer WHERE name = ${CustomerName}`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers that match.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtSelect.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n\ncustomerAdd.onshow=function(){\n  txtCustomer_contents.style.height = \"100px\"\n  query = `SELECT name FROM customer`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtCustomer.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n\nbtnAdd.onclick=function(){\n  query = `INSERT INTO customer (name,street,city,state,zipcode) VALUES (\"Jesse Antiques\", \"1113 F St\", \"Omaha, NE\", \"68178\")`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (req.responseText == 500)\n      NSB.MsgBox(`You have successfully added the customer!`)\n    else {\n      NSB.MsgBox(`There was a problem added the customer`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtCustomer.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n",
  "cached_js_script_hash": "687804708c1e399ae31c6a08375d990f",
  "children": [
    {
      "!type": "Textarea_bs4",
      "_uuid": "1b57d8fcf8b84cfe95ec5475c434a93f",
      "align": "",
      "autocapitalize": "",
      "autocomplete": "",
      "autocorrect": "",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "footer": "",
      "header": "View customers",
      "headerCols": 4,
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "txtCustomer",
      "inputmode": "",
      "left": 18,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "maxlength": "",
      "name": "",
      "onchange": "",
      "onclick": "",
      "oncopy": "",
      "oncut": "",
      "onfocus": "",
      "onfocusout": "",
      "onkeypress": "",
      "onkeyup": "",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onpaste": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "placeholder": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "readonly": "",
      "required": "",
      "right": "auto",
      "rows": "",
      "script": "",
      "spellcheck": "true",
      "style": "",
      "top": 19,
      "validation": "",
      "value": "",
      "valueCols": 8,
      "width": 290
    },
    {
      "!type": "Button_bs4",
      "_uuid": "5ada8e9b4ad74dd2b0399c038b033cb9",
      "ChangeForm": "",
      "appearance": " btn-secondary",
      "backgroundColor": "",
      "badge": "",
      "badgeAppearance": " badge-info",
      "blockLevel": "",
      "borderColor": "",
      "borderStyle": "",
      "borderWidth": "",
      "bottom": "auto",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "class": "",
      "color": "",
      "disabled": "",
      "display": "",
      "expanded_pmp": true,
      "fontFamily": "",
      "fontSize": "",
      "fontStyle": "",
      "fontWeight": "",
      "groupStyle": "",
      "grouping": "",
      "height": "auto",
      "hidden": "",
      "icon": "",
      "iconTitle": "",
      "id": "btnAdd",
      "left": 236,
      "mAll": "",
      "mBottom": "",
      "mLeft": "",
      "mRight": "",
      "mTop": "",
      "onclick": "btnAdd.onclick()",
      "onmousedown": "",
      "onmousemove": "",
      "onmouseout": "",
      "onmouseup": "",
      "onresize": "",
      "ontouchend": "",
      "ontouchmove": "",
      "ontouchstart": "",
      "outline": "",
      "pAll": "",
      "pBottom": "",
      "pLeft": "",
      "pRight": "",
      "pTop": "",
      "popBody": "Body",
      "popClose": "hover",
      "popPosition": "",
      "popStyle": "popover",
      "popTitle": "Title",
      "right": "auto",
      "script": "",
      "size": " btn-md",
      "style": "",
      "toggleControl": "",
      "top": 145,
      "value": "Enter",
      "width": "auto"
    }
  ],
  "class": "",
  "designHeight": 0,
  "designWidth": 0,
  "expanded_pmp": true,
  "fullScreen": "true",
  "height": 460,
  "id": "customerAdd",
  "language": "JavaScript",
  "left": "0",
  "locked": false,
  "modal": "false",
  "onhide": "",
  "onkeypress": "",
  "onresize": "",
  "onshow": "customerAdd.onshow()",
  "openMode": "none",
  "parentForm": "",
  "position": "absolute",
  "script": "/*\ncustomerDelete.onshow=function(){\n  txtCustomer_contents.style.height = \"100px\"\n  query = `SELECT name FROM customer`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtDelete.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n*/\nbtnDelete.onclick=function(){\n  let customerName = txtDelete.value\n  \n  query = `DELETE FROM customer WHERE name = ${CustomerName}`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers that match.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtSelect.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n\ncustomerAdd.onshow=function(){\n  txtCustomer_contents.style.height = \"100px\"\n  query = `SELECT name FROM customer`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (results.length == 0)\n      NSB.MsgBox(`There are no customers.`)\n    else {\n      console.log(`The parsed JSON is ${results}.`)\n      console.log(`The first row/item in the big array is a small array: ${results[0]}.`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtCustomer.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n\nbtnAdd.onclick=function(){\n  query = `INSERT INTO customer (name,street,city,state,zipcode) VALUES (\"Jesse Antiques\", \"1113 F St\", \"Omaha, NE\", \"68178\")`\n  alert(query)\n  req = Ajax(\"https://ormond.creighton.edu/courses/375/ajax-connection.php\", \"POST\", \"host=ormond.creighton.edu&user=rje33080&pass=Bluejays$1!&database=rje33080&query=\" + query)\n  \n  if (req.status ==200) {\n    results = JSON.parse(req.responseText)\n    console.log(results)\n  \n    if (req.responseText == 500)\n      NSB.MsgBox(`You have successfully added the customer!`)\n    else {\n      NSB.MsgBox(`There was a problem added the customer`)\n      \n      let message = \"\"\n        for (i = 0; i <= results.length - 1; i++) {\n          message = message + results[i][1] + \"\\n\"\n        }\n      txtCustomer.value = message\n    }\n  } else\n      NSB.MsgBox(`Error code: ${req.status}.`)\n}\n",
  "setFocusID": "",
  "style": "",
  "theme": "",
  "top": "0",
  "width": 320,
  "_functions": [
    {
      "!type": "Form",
      "_uuid": "8d001aa6d1c246f1a5b0b7666202ffd6",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerDelete.onshow",
      "location": [
        1,
        2
      ],
      "script": "",
      "signature": "customerDelete.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "2899ff646d594258a9eb0af4b452de02",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "btnDelete.onclick",
      "location": [
        27,
        28
      ],
      "script": "",
      "signature": "btnDelete.onclick()"
    },
    {
      "!type": "Form",
      "_uuid": "631f7d6ccb004e4c9a11a4f2b8523e9f",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "customerAdd.onshow",
      "location": [
        54,
        55
      ],
      "script": "",
      "signature": "customerAdd.onshow()"
    },
    {
      "!type": "Form",
      "_uuid": "ed83ca168e83413db479fb29c83ff560",
      "cached_js": "",
      "cached_js_script_hash": "d41d8cd98f00b204e9800998ecf8427e",
      "children": [],
      "expanded_pmp": true,
      "id": "btnAdd.onclick",
      "location": [
        80,
        81
      ],
      "script": "",
      "signature": "btnAdd.onclick()"
    }
  ]
}