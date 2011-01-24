## Controller Python Script "add_dmapping_script"
##bind container=container
##bind context=context
##bind namespace=
##bind script=script
##bind state=state
##bind subpath=traverse_subpath
##parameters=key, value, transform_name
##title=
# $Id: add_dpmapping_script.cpy 53223 2007-11-06 10:26:29Z glenfant $

from Products.CMFCore.utils import getToolByName
from Products.Ploneboard.utils import PloneboardMessageFactory as _

putils = getToolByName(context, 'plone_utils')

dprovider = context.portal_ploneboard.getDataProvider(transform_name)
dprovider.setElement({key : value})

REQUEST = context.REQUEST
REFERER = REQUEST.HTTP_REFERER
message = _(u'Data provider updated.')
putils.addPortalMessage()
return REQUEST.RESPONSE.redirect(REFERER)
