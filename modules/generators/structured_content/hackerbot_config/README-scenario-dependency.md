Usually SecGen modules can be used without dependencies on anything specific being present in the scenario definition (other than ensuring conflicts don't exclude the module); any dependencies are typically automatically resolved by adding modules to the current system VM. However, **Hackerbot configs are closely tied to their scenarios**, as Hackerbot interacts with multiple VMs expecting specific modules to be deployed on each system.