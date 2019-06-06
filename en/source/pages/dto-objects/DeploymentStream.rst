.. Copyright FUJITSU LIMITED 2016-2019

.. _deploymentstream-object:

deploymentStream
================



Attributes
~~~~~~~~~~

The list of attributes for ``deploymentStream`` are:

	* ``type`` (string): the type of the stream, could be: stderr, env, stdin, stdout
	* ``content`` (string): the content of the stream
	* ``size`` (int): the size of the stream in bytes
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


