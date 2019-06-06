.. Copyright FUJITSU LIMITED 2016-2019

.. _activityGet:

activityGet
-----------

.. function:: GET /users/{uid}/deployments/{deploymentId}/entities/{entityId}/activities/{activityId}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8fp13``

Returns an activity for a given user, deployment and activity.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``activityId`` (required): activity id of the activity
* ``deploymentId`` (required): deployment id of the deployment
* ``entityId`` (required): entity id of the entity

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/deployments/{deploymentId}/entities/{entityId}/activities/{activityId}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`deploymentActivity-object`
	 * :ref:`user-object`
