.. Copyright FUJITSU LIMITED 2016-2019

.. _deploymentactivity-object:

deploymentActivity
==================

an activity is launched by an entity, it contains the streams which are useful for logs.

Attributes
~~~~~~~~~~

The list of attributes for ``deploymentActivity`` are:

	* ``description`` (string): the description of the activity.
	* ``displayName`` (string): the display name of the activity.
	* ``statusDetail`` (string): the retrieved status of the activity.
	* ``startTimeUtc`` (long): the start time of the activity.
	* ``endTimeUtc`` (long): the end time of the activity.
	* ``statusSummary`` (string): the summary of the activity status.
	* ``isDone`` (boolean): a boolean flag to know if the activity is done.
	* ``isError`` (boolean): a boolean flag to know if the activity is in error.
	* ``isSubmitted`` (boolean): a boolean flag to know if the activity is submitted.
	* ``isBegun`` (boolean): a boolean flag to know if the activity is started.
	* ``isEffector`` (boolean): a boolean flag to know if the activity is an effector.
	* ``id`` (string): 
	* ``parentId`` (anyURI): the uri of the parent activity.
	* ``children``: a set of children activities objects.
	* ``created`` (dateTime): the date the appliance template is created
	* ``dbId`` (long): the database id of the object
	* ``digest`` (string): the digest value (used for etag)
	* ``lastModified`` (dateTime): the last modified date of this object


