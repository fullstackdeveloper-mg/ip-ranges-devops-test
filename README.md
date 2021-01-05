# Welcome to gohenry - DevOps Test 👋

> DevOps test

### Requirements

- using Terraform, output the list of IPv4 CIDRs from Json response of the URL https://ip-ranges.atlassian.com/

### Proposed solution

- config `http` provider as datasource to retrieve the data from the URL https://ip-ranges.atlassian.com/
- decode the Json response using the function `jsondecode`
- filter the list of IPs to include only the IPv4 using the function `matchkeys`
- map the result to include only the CIDRs

### Running the solution

- requires Docker installed
- ```sh setup.sh```

## Author

👤 **Miguel Goncalves**

* Github: [@fullstackdeveloper-mg](https://github.com/fullstackdeveloper-mg)
* LinkedIn: [@miguel-goncalves-3a5198201](https://linkedin.com/in/miguel-goncalves-3a5198201)
