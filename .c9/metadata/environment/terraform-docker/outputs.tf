{"filter":false,"title":"outputs.tf","tooltip":"/terraform-docker/outputs.tf","undoManager":{"mark":7,"position":7,"stack":[[{"start":{"row":0,"column":0},"end":{"row":12,"column":0},"action":"insert","lines":["output \"IP-Address-1\" {","  value = [for i in docker_container.nodered_container[*] : join(\":\", [i.ip_address],i.ports[*][\"external\"])]","  description = \"IP and port\"","}","","","","output \"containername\" {","  value       = docker_container.nodered_container[*].name","  description = \"name of containername\"","}","",""],"id":1}],[{"start":{"row":2,"column":29},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["s"]},{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"insert","lines":["e"]}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":4},"action":"remove","lines":["se"],"id":3},{"start":{"row":3,"column":2},"end":{"row":3,"column":11},"action":"insert","lines":["sensitive"]}],[{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"insert","lines":[" "],"id":4},{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"insert","lines":["="]}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"insert","lines":[" "],"id":5},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["t"]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":["r"]}],[{"start":{"row":3,"column":14},"end":{"row":3,"column":16},"action":"remove","lines":["tr"],"id":6},{"start":{"row":3,"column":14},"end":{"row":3,"column":18},"action":"insert","lines":["true"]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":18},"action":"remove","lines":["  sensitive = true"],"id":7}],[{"start":{"row":2,"column":29},"end":{"row":3,"column":0},"action":"remove","lines":["",""],"id":8}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":29},"end":{"row":2,"column":29},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1661277536049,"hash":"a6b0241ba9f269733a20c557a3621544006f2346"}