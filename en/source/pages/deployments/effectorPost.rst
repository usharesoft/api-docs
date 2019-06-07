.. Copyright FUJITSU LIMITED 2016-2019

.. _effectorPost:

effectorPost
------------

.. function:: POST /users/{uid}/deployments/{deploymentId}/entities/{entityId}/effectors//{effectorName}

.. sidebar:: Summary

	* Method: ``POST``
	* Response Code: ``201``
	* Response Formats: ``application/xml`` ``application/json``
	* Since: ``UForge 3.8fp13``

Trigger an effector for a given user, deployment, entity and effector.

Security Summary
~~~~~~~~~~~~~~~~

* Requires Authentication: ``true``
* Entitlements Required: ``deployments_access``

URI Parameters
~~~~~~~~~~~~~~

* ``uid`` (required): the user name (login name) of the :ref:`user-object`
* ``deploymentId`` (required): deployment id of the deployment
* ``entityId`` (required): entity id of the entity
* ``effectorName`` (required): effector name of the deployment

HTTP Request Body Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~


                                                
                                                A string value
                                            

Example Request
~~~~~~~~~~~~~~~

.. code-block:: bash

	curl "https://uforge.example.com/api/users/{uid}/deployments/{deploymentId}/entities/{entityId}/effectors//{effectorName}" -X POST \
	-u USER_LOGIN:PASSWORD -H "Accept: application/xml"-H "Content-type: application/xml" --data-binary "@representation.xml"

Example of representation.xml content (the request body):

.. code-block:: xml

	<parameters xmlns:ns0="http://www.usharesoft.com/uforge">
		<key1>value</key1>
		<key2>
			<attribute1>value</attribute1>
			<attribute2>true</attribute2>
		</key2>
	</parameters>


.. seealso::

	 * :ref:`deploymentActivity-object`
	 * :ref:`deploymentEffector-object`
	 * :ref:`user-object`
