# shiftzilla-container
Code for containerizing the [shiftzilla](https://github.com/nhr/shiftzilla) bug reporting tool.

![shiftzilla app diagram](https://raw.githubusercontent.com/nhr/shiftzilla-container/master/assets/shiftzilla_project.png)

This repo includes templates useful for configuring and deploying shiftzilla as a container-based application on [OpenShift](https://openshift.com/).

## Debugging
If necessary, you can deploy a pod using this command:

`oc create -f tester-pod.yaml`

And then you can connect to that pod with an exec command:

`oc exec -it tester /bin/bash`

Once connected, you can inspect the contents of the two persistent storage volumes at `/bugzilla-state` and `/shiftzilla-state`.

When you are done you can exit the pod bash shell and delete the pod.
