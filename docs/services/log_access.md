We are able to access our application’s log output with:

```
cf logs app_name
```

This will tail the application logs, from all Application Instances, straight to your development workstation's console.

To see logs from the past:

```
cf logs --recent app_name
```
