
#!/bin/bash

REPORT="/opt/linux-rbac-lab/security_report.txt"

echo "LINUX RBAC SECURITY AUDIT" > "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo "------------------------------" >> "$REPORT"

test_access() {
    USER="$1"
    SCRIPT="$2"
    EXPECTED="$3"

    if sudo -n -u "$USER" "$SCRIPT" >/dev/null 2>&1; then
        RESULT="ALLOWED"
    else
        RESULT="DENIED"
    fi

    if [ "$RESULT" = "$EXPECTED" ]; then
        STATUS="PASS"
    else
        STATUS="FAIL"
    fi

    echo "$USER | $(basename "$SCRIPT") | $RESULT | $STATUS" >> "$REPORT"
    echo "$USER: $STATUS"
}

test_access user1 /opt/linux-rbac-lab/group1script.sh ALLOWED
test_access user2 /opt/linux-rbac-lab/group1script.sh ALLOWED
test_access user3 /opt/linux-rbac-lab/group2script.sh ALLOWED
test_access user4 /opt/linux-rbac-lab/group2script.sh ALLOWED

test_access user1 /opt/linux-rbac-lab/group2script.sh DENIED
test_access user2 /opt/linux-rbac-lab/group2script.sh DENIED
test_access user3 /opt/linux-rbac-lab/group1script.sh DENIED
test_access user4 /opt/linux-rbac-lab/group1script.sh DENIED

echo "------------------------------" >> "$REPORT"
echo "Audit completed." >> "$REPORT"

