# Sentinel configuration file
#
# This is a required configuration file which defines the Sentinel policy set
# in this directory, including which policies to evaluate and their enforcement
# levels.
#
# A policy{} block declares a policy to be evaluated in the policy set.
# Each policy{} block must be accompanied by a file containing the Sentinel
# policy code named "<name>.sentinel", where <name> is the name of the policy.
# The policy code file and the sentinel.hcl file must be in the same directory.
#
# A policy{} block also defines the policy's configuration. The following
# options are customizable for each policy:
#
# enforcement_level
#   Defines the behavior when policies fail. This is a string value with 3
#   possible configurations:
#
#   hard-mandatory
#     Policy must evaluate to "true". No exceptions.
#
#   soft-mandatory
#     Policy must evaluate to "true". Authorized users may override failure.
#
#   advisory
#     Informational only. Policy failure will not halt the workflow.

policy "is-weekday" {
    enforcement_level = "hard-mandatory"
}
