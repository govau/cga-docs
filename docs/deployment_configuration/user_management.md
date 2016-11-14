hide_toc: true

Before you can assign a role to a team member they must have a cloud.gov.au account. The cloud.gov.au team creates new user accounts. Lodge a support ticket requesting to add a new user to cloud.gov.au.

## Give roles to a teammate

Only an Org Manager of Space Manager can assign and edit roles for a Org or Space.

If you're an Org Manager or Space Manager, here's how to give roles to your teammates to give them permissions for your orgs and spaces. For details about how cloud.gov.au org and space roles and permissions work, see [Cloud Foundry roles and permissions](http://docs.cloudfoundry.org/concepts/roles.html#roles).

First make sure you have [installed the CloudFoundry Command Line tools](/getting_started/install_cli/):

```
cf -v
```

Then decide which roles to give them, such as:

* To give them read-only permissions to the organization, run:

        cf set-org-role <email> <org> OrgAuditor

* If you want to make them an admin for your organization, run:

        cf set-org-role <email> <org> OrgManager

* If you want to give them permission to deploy, add them to each space:

        cf set-space-role <email> <org> <space> SpaceDeveloper

For a complete list of cloud.gov roles and permissions see [the Cloud Foundry guide to Org and Space Roles](https://docs.cloudfoundry.org/adminguide/cli-user-management.html#orgs-spaces).
