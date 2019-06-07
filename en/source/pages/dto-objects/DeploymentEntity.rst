.. Copyright FUJITSU LIMITED 2016-2019

.. _deploymententity-object:

deploymentEntity
================

an entity represent a node in the deployed blueprint.

Attributes
~~~~~~~~~~

The list of attributes for ``deploymentEntity`` are:

	* ``type`` (string): the type of the entity
	* ``serviceId`` (string): the service id of the entity
	* ``displayName`` (string): the display name of the entity
	* ``applianceUUID`` (string): the UUID of the uforge appliance linked to the entity
	* ``status`` (string): the status of the entity
	* ``hostname`` (string): the hostname of the entity
	* ``ipAddress`` (string): the IP address of the entity
	* ``loginUser`` (string): the user to use to login into the entity
	* ``sshKeyName`` (string): the ssh key name used to login into the entity
	* ``winrmAddress`` (string): the address used to login in a windows entity
	* ``uforgePublishedImageURI`` (anyURI): the uri of the linked published image
	* ``creationTime`` (long): the date of the entity creation
	* ``cloudProvider`` (string): the name of the cloud provider which host the entity
	* ``hardware`` (:ref:`DeploymentHardware-object`): the hardware of the entity
	* ``activities``: the activities linked to the entity
	* ``sensors``: Provide some information on deployment instance.
	* ``config``: Provide actual values of blueprint config entries.
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


