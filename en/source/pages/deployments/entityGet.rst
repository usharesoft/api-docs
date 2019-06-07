.. Copyright FUJITSU LIMITED 2016-2019

.. _entityGet:

entityGet
---------

.. function:: GET /users/{uid}/deployments/{deploymentId}/entities/{entityId}

.. sidebar:: Summary

	* Method: ``GET``
	* Response Code: ``200 / 304``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8fp13``

Returns an entity for a given user, deployment and activity.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``activityId`` (optional): 
* ``deploymentId`` (required): the deployment id
* ``entityId`` (required): entity id of the entity

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

None

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/deployments/{deploymentId}/entities/{entityId}" -X GET \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"

.. seealso::

	 * :ref:`deploymentEntity-object`
	 * :ref:`user-object`
