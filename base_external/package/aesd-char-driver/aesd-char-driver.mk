
##############################################################
#
# AESD-CHAR-DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#Link for A3 after changes for socket : https://github.com/cu-ecen-aeld/assignments-3-and-later-nihalthirunakarasu/commit/8c12a2efdf205c44c1408b8fb4da849ce191466e
AESD_CHAR_DRIVER_VERSION = '69ebffacef97ec66df7aaaaacd50a02bc3743309'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-nihalthirunakarasu.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES

AESD_CHAR_DRIVER_MODULE_SUBDIRS += aesd-char-driver/

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
