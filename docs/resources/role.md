---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "tetration_role Resource - terraform-provider-tetration"
subcategory: ""
description: |-
  Resource for creating a role in Secure Workload (Tetration)
  Example
  An example is shown below:
  hcl
  resource "tetration_role" "role1" {
      app_scope_id = <ID_OF_SCOPE>
      access_app_scope_id = <ID_OF_SCOPE>
      name = "read_role"
      access_type = "scope_read"
      user_ids = ["<USER_IDS>"]
      description = "Demo description for role"
  }
  
  Note: If creating multiple rules during a single terraform apply, remember to use depends_on to chain the rules so that terraform creates it in the same order that you intended.
---

# tetration_role (Resource)

Resource for creating a role in Secure Workload

## Example
An example is shown below: 
```hcl
resource "tetration_role" "role1" {
	 app_scope_id = <ID_OF_SCOPE>
	 access_app_scope_id = <ID_OF_SCOPE>
    name = "read_role"
    access_type = "scope_read"
    description = "Demo description for role"
}
```
**Note:** If creating multiple rules during a single `terraform apply`, remember to use `depends_on` to chain the rules so that terraform creates it in the same order that you intended.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `access_app_scope_id` (String) The scope to which this role will be given access
- `access_type` (String) The type of access to grant the role to the "access_app_scope_id" scope.\n Valid values are SCOPE_READ", "SCOPE_WRITE", "EXECUTE", "ENFORCE", "SCOPE_OWNER", "DEVELOPER"
- `app_scope_id` (String) The scope in which this role will be created
- `description` (String) The role's description

### Optional

- `name` (String) (Optional) User-specified name for the role.
- `user_ids` (Set of String) The users to which this role will be assigned

### Read-Only

- `id` (String) The ID of this resource.


