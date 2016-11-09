When updating an application with `cf push`, there is some downtime while the application is updated.
While this may be okay during development, it usually is not for production. You can solve this by having
two copies of the application with a common route and updating them one at a time. This is sometimes called
blue/green deploys.

For instance, a `manifest.yml` with the following attributes

```
...
host: app-name
applications:
- name: app-name-blue
- name: app-name-green
```

will create two applications `app-name-blue.apps.staging.digital.gov.au` and `app-name-green.apps.staging.digital.gov.au`.
The `host` attribute will create a route `app-name.apps.staging.digital.gov.au` that maps to both applications.
When a user goes to `app-name.apps.staging.digital.gov.au`, they can be routed to either the blue
or the green copy of the application.

When you run `cf push` to update this application, it will first update `app-name-blue`.
This will:

1. Unmap the route from `app-name` to `app-name-blue`, causing all traffic to go to `app-name-green`
2. Stop `app-name-blue`
3. Update the files for `app-name-blue`
4. Start `app-name-blue`
5. Remap the route from `app-name` to `app-name-blue`, causing traffic to be shared between the two apps

Then it will do the same thing for `app-name-green`. This ensures the user
never experiences any downtime.

## Using a database

If your application requires a database, you will usually use the same database for the
blue and green applications. This ensures that users has the same view of the data
regardless of which app they are routed to. Unfortunately, this can make it harder to do
database migrations. If the start command performs the database migration,
the migration will be performed twice, once by the blue app and once by the green app.
There is also a period where the green app is running the old code against the new database.
To handle these issues, keep these principles in mind.

1. Database migrations should have the same effect regardless of how many times they are run
2. The new version of the database should work with both the old and new versions of the code
