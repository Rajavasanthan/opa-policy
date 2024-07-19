package policy_test

import data.policy.allow


test_allow_id_false_by_default {
    not allow
}

test_allow_if_admin {
    allow with input as {
        "user" : {
            "roles" : ["admin"]
        }
    }
}

test_deny_if_not_admin {
    not allow with input as {
        "user" : {
            "roles" : ["developers"]
        }
    }
}