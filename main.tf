locals {
  raw_content = jsondecode(file("${path.module}/zscalar.json"))

  root_node = local.raw_content["zscalerthree.net"]

  # continent - key
  # cities - value (another map)

  #-----------------------------------#
  # first step - output the continent
  #-----------------------------------#

  /* expected_output = [for continent, cities in local.root_node :
    {
        display_name = "${continent}"
    }
  ] */


  #-----------------------------------#
  # second step - get the city value, remove nested list
  #-----------------------------------#

  # city - key ("city : Abu Dhabi II")
  # detail - value (array(list) of maps)

  # by using flatten we achieve single array of maps
  expected_output = flatten(
    [for continent, cities in local.root_node :
      [
        for city, detail in cities :
        {
          display_name = "${replace(continent, "continent : ", "")}/${replace(city, "city : ", "")}"
          ip_addresses = [for detail in detail : detail.range if detail.range != ""]
        }
      ]
    ]
  )
}

