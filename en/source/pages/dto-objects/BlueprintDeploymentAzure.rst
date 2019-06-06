.. Copyright FUJITSU LIMITED 2016-2019

.. _blueprintdeploymentazure-object:

BlueprintDeploymentAzure
========================

Provides the information required to deploy a blueprint to the Microsoft Azure environment.

Attributes
~~~~~~~~~~

The list of attributes for ``BlueprintDeploymentAzure`` are:

	* ``region`` (string): the region where the blueprint will be deployed
	* ``storageAccount`` (string): the storage account where the machine images of the blueprint are stored
	* ``name`` (string): the blueprint deployment name used for this deployment
	* ``credAccountUri`` (anyURI): the cloud account uri used for this deployment (see :ref:`credaccount-object`)
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


