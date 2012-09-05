.class public final Lorg/snmp4j/mp/SnmpConstants;
.super Ljava/lang/Object;
.source "SnmpConstants.java"


# static fields
.field public static final DEFAULT_COMMAND_RESPONDER_PORT:I = 0xa1

.field public static final DEFAULT_NOTIFICATION_RECEIVER_PORT:I = 0xa2

.field public static final MIN_PDU_LENGTH:I = 0x1e4

.field public static MP_ERROR_MESSAGES:[[Ljava/lang/String; = null

.field public static final SNMP_ERROR_AUTHORIZATION_ERROR:I = 0x10

.field public static final SNMP_ERROR_BAD_VALUE:I = 0x3

.field public static final SNMP_ERROR_COMMIT_FAILED:I = 0xe

.field public static final SNMP_ERROR_GENERAL_ERROR:I = 0x5

.field public static final SNMP_ERROR_INCONSISTENT_NAME:I = 0x12

.field public static final SNMP_ERROR_INCONSISTENT_VALUE:I = 0xc

.field public static final SNMP_ERROR_MESSAGES:[Ljava/lang/String; = null

.field public static final SNMP_ERROR_NOT_WRITEABLE:I = 0x11

.field public static final SNMP_ERROR_NO_ACCESS:I = 0x6

.field public static final SNMP_ERROR_NO_CREATION:I = 0xb

.field public static final SNMP_ERROR_NO_SUCH_NAME:I = 0x2

.field public static final SNMP_ERROR_READ_ONLY:I = 0x4

.field public static final SNMP_ERROR_RESOURCE_UNAVAILABLE:I = 0xd

.field public static final SNMP_ERROR_SUCCESS:I = 0x0

.field public static final SNMP_ERROR_TOO_BIG:I = 0x1

.field public static final SNMP_ERROR_UNDO_FAILED:I = 0xf

.field public static final SNMP_ERROR_WRONG_ENCODING:I = 0x9

.field public static final SNMP_ERROR_WRONG_LENGTH:I = 0x8

.field public static final SNMP_ERROR_WRONG_TYPE:I = 0x7

.field public static final SNMP_ERROR_WRONG_VALUE:I = 0xa

.field public static final SNMP_MP_BUILD_ERROR:I = -0x585

.field public static final SNMP_MP_COMMUNITY_ERROR:I = -0x583

.field public static final SNMP_MP_DOUBLED_MESSAGE:I = -0x57c

.field public static final SNMP_MP_ERROR:I = -0x578

.field public static final SNMP_MP_INVALID_ENGINEID:I = -0x57e

.field public static final SNMP_MP_INVALID_MESSAGE:I = -0x57d

.field public static final SNMP_MP_MATCH_ERROR:I = -0x582

.field public static final SNMP_MP_NOT_INITIALIZED:I = -0x57f

.field public static final SNMP_MP_NOT_IN_TIME_WINDOW:I = -0x57b

.field public static final SNMP_MP_OK:I = 0x0

.field public static final SNMP_MP_PARSE_ERROR:I = -0x580

.field public static final SNMP_MP_REPORT_SENT:I = -0x58a

.field public static final SNMP_MP_UNAVAILABLE_CONTEXT:I = -0x588

.field public static final SNMP_MP_UNKNOWN_CONTEXT:I = -0x589

.field public static final SNMP_MP_UNKNOWN_MSGID:I = -0x581

.field public static final SNMP_MP_UNKNOWN_PDU_HANDLERS:I = -0x587

.field public static final SNMP_MP_UNSUPPORTED_SECURITY_MODEL:I = -0x57a

.field public static final SNMP_MP_USM_ERROR:I = -0x586

.field public static final SNMP_MP_WRONG_USER_NAME:I = -0x584

.field public static final SNMPv1v2c_CSM_BAD_COMMUNITY_NAME:I = 0x5dd

.field public static final SNMPv1v2c_CSM_BAD_COMMUNITY_USE:I = 0x5de

.field public static final SNMPv1v2c_CSM_OK:I = 0x0

.field public static final SNMPv3_USM_ADDRESS_ERROR:I = 0x586

.field public static final SNMPv3_USM_AUTHENTICATION_ERROR:I = 0x57f

.field public static final SNMPv3_USM_AUTHENTICATION_FAILURE:I = 0x580

.field public static final SNMPv3_USM_DECRYPTION_ERROR:I = 0x57e

.field public static final SNMPv3_USM_ENCRYPTION_ERROR:I = 0x57d

.field public static final SNMPv3_USM_ERROR:I = 0x579

.field public static final SNMPv3_USM_NOT_IN_TIME_WINDOW:I = 0x583

.field public static final SNMPv3_USM_OK:I = 0x0

.field public static final SNMPv3_USM_PARSE_ERROR:I = 0x581

.field public static final SNMPv3_USM_UNKNOWN_ENGINEID:I = 0x582

.field public static final SNMPv3_USM_UNKNOWN_SECURITY_NAME:I = 0x57c

.field public static final SNMPv3_USM_UNSUPPORTED_AUTHPROTOCOL:I = 0x584

.field public static final SNMPv3_USM_UNSUPPORTED_PRIVPROTOCOL:I = 0x585

.field public static final SNMPv3_USM_UNSUPPORTED_SECURITY_LEVEL:I = 0x57b

.field public static USM_ERROR_MESSAGES:[[Ljava/lang/String; = null

.field public static final authenticationFailure:Lorg/snmp4j/smi/OID; = null

.field public static final coldStart:Lorg/snmp4j/smi/OID; = null

.field public static final linkDown:Lorg/snmp4j/smi/OID; = null

.field public static final linkUp:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInASNParseErrs:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInBadCommunityNames:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInBadCommunityUses:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInBadVersions:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInPkts:Lorg/snmp4j/smi/OID; = null

.field public static final snmpInvalidMsgs:Lorg/snmp4j/smi/OID; = null

.field public static final snmpProxyDrops:Lorg/snmp4j/smi/OID; = null

.field public static final snmpSetSerialNo:Lorg/snmp4j/smi/OID; = null

.field public static final snmpSilentDrops:Lorg/snmp4j/smi/OID; = null

.field public static final snmpTrapAddress:Lorg/snmp4j/smi/OID; = null

.field public static final snmpTrapCommunity:Lorg/snmp4j/smi/OID; = null

.field public static final snmpTrapEnterprise:Lorg/snmp4j/smi/OID; = null

.field public static final snmpTrapOID:Lorg/snmp4j/smi/OID; = null

.field public static final snmpTraps:Lorg/snmp4j/smi/OID; = null

.field public static final snmpUnavailableContexts:Lorg/snmp4j/smi/OID; = null

.field public static final snmpUnknownContexts:Lorg/snmp4j/smi/OID; = null

.field public static final snmpUnknownPDUHandlers:Lorg/snmp4j/smi/OID; = null

.field public static final snmpUnknownSecurityModels:Lorg/snmp4j/smi/OID; = null

.field public static final sysContact:Lorg/snmp4j/smi/OID; = null

.field public static final sysDescr:Lorg/snmp4j/smi/OID; = null

.field public static final sysLocation:Lorg/snmp4j/smi/OID; = null

.field public static final sysName:Lorg/snmp4j/smi/OID; = null

.field public static final sysOREntry:Lorg/snmp4j/smi/OID; = null

.field public static final sysObjectID:Lorg/snmp4j/smi/OID; = null

.field public static final sysServices:Lorg/snmp4j/smi/OID; = null

.field public static final sysUpTime:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsDecryptionErrors:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsUnknownUserNames:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsUnsupportedSecLevels:Lorg/snmp4j/smi/OID; = null

.field public static final usmStatsWrongDigests:Lorg/snmp4j/smi/OID; = null

.field public static final version1:I = 0x0

.field public static final version2c:I = 0x1

.field public static final version3:I = 0x3

.field public static final warmStart:Lorg/snmp4j/smi/OID;

.field public static final zeroDotZero:Lorg/snmp4j/smi/OID;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 103
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_3fa

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnsupportedSecLevels:Lorg/snmp4j/smi/OID;

    .line 105
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_414

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID;

    .line 107
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_42e

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownUserNames:Lorg/snmp4j/smi/OID;

    .line 109
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_448

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID;

    .line 111
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_462

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsWrongDigests:Lorg/snmp4j/smi/OID;

    .line 113
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_47c

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->usmStatsDecryptionErrors:Lorg/snmp4j/smi/OID;

    .line 117
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_496

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownSecurityModels:Lorg/snmp4j/smi/OID;

    .line 119
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_4b0

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInvalidMsgs:Lorg/snmp4j/smi/OID;

    .line 121
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_4ca

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownPDUHandlers:Lorg/snmp4j/smi/OID;

    .line 125
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_4e4

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInPkts:Lorg/snmp4j/smi/OID;

    .line 127
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_4fa

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInBadVersions:Lorg/snmp4j/smi/OID;

    .line 129
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_510

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInBadCommunityNames:Lorg/snmp4j/smi/OID;

    .line 131
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_526

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInBadCommunityUses:Lorg/snmp4j/smi/OID;

    .line 133
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_53c

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpInASNParseErrs:Lorg/snmp4j/smi/OID;

    .line 135
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_552

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpSilentDrops:Lorg/snmp4j/smi/OID;

    .line 137
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_568

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpProxyDrops:Lorg/snmp4j/smi/OID;

    .line 140
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_57e

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapOID:Lorg/snmp4j/smi/OID;

    .line 142
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_598

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapEnterprise:Lorg/snmp4j/smi/OID;

    .line 146
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_5b2

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpTraps:Lorg/snmp4j/smi/OID;

    .line 149
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_5c8

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->coldStart:Lorg/snmp4j/smi/OID;

    .line 151
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_5e0

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->warmStart:Lorg/snmp4j/smi/OID;

    .line 153
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_5f8

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->authenticationFailure:Lorg/snmp4j/smi/OID;

    .line 155
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_610

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->linkDown:Lorg/snmp4j/smi/OID;

    .line 157
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_628

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->linkUp:Lorg/snmp4j/smi/OID;

    .line 161
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_640

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysDescr:Lorg/snmp4j/smi/OID;

    .line 163
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_656

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysObjectID:Lorg/snmp4j/smi/OID;

    .line 165
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_66c

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysUpTime:Lorg/snmp4j/smi/OID;

    .line 167
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_682

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysContact:Lorg/snmp4j/smi/OID;

    .line 169
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_698

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysName:Lorg/snmp4j/smi/OID;

    .line 171
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_6ae

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysLocation:Lorg/snmp4j/smi/OID;

    .line 173
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_6c4

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysServices:Lorg/snmp4j/smi/OID;

    .line 175
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v7, [I

    fill-array-data v1, :array_6da

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->sysOREntry:Lorg/snmp4j/smi/OID;

    .line 179
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_6f0

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpUnavailableContexts:Lorg/snmp4j/smi/OID;

    .line 181
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_708

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpUnknownContexts:Lorg/snmp4j/smi/OID;

    .line 185
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_720

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapAddress:Lorg/snmp4j/smi/OID;

    .line 187
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_738

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapCommunity:Lorg/snmp4j/smi/OID;

    .line 190
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v4, [I

    fill-array-data v1, :array_750

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->zeroDotZero:Lorg/snmp4j/smi/OID;

    .line 193
    new-instance v0, Lorg/snmp4j/smi/OID;

    new-array v1, v8, [I

    fill-array-data v1, :array_758

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->snmpSetSerialNo:Lorg/snmp4j/smi/OID;

    .line 196
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Success"

    aput-object v1, v0, v5

    const-string v1, "PDU encoding too big"

    aput-object v1, v0, v6

    const-string v1, "No such name"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "Bad value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Variable is read-only"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "General variable binding error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "No access"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Wrong type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Variable binding data with incorrect length"

    aput-object v2, v0, v1

    const-string v1, "Variable binding data with wrong encoding"

    aput-object v1, v0, v7

    const/16 v1, 0xa

    const-string v2, "Wrong value"

    aput-object v2, v0, v1

    const-string v1, "Unable to create object"

    aput-object v1, v0, v8

    const/16 v1, 0xc

    const-string v2, "Inconsistent value"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Resource unavailable"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Commit failed"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Undo failed"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Authorization error"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Not writable"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Inconsistent naming used"

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->SNMP_ERROR_MESSAGES:[Ljava/lang/String;

    .line 218
    const/16 v0, 0x12

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "-1400"

    aput-object v2, v1, v5

    const-string v2, "MP error"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "-1402"

    aput-object v2, v1, v5

    const-string v2, "Unsupported security model"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "-1403"

    aput-object v2, v1, v5

    const-string v2, "Message not in time window"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1404"

    aput-object v3, v2, v5

    const-string v3, "Doubled message"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1405"

    aput-object v3, v2, v5

    const-string v3, "Invalid message"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1406"

    aput-object v3, v2, v5

    const-string v3, "Invalid engine ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1407"

    aput-object v3, v2, v5

    const-string v3, "MP not initialized"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1408"

    aput-object v3, v2, v5

    const-string v3, "MP parse error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1409"

    aput-object v3, v2, v5

    const-string v3, "Unknown message ID"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "-1410"

    aput-object v2, v1, v5

    const-string v2, "MP match error"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1411"

    aput-object v3, v2, v5

    const-string v3, "MP community error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "-1412"

    aput-object v2, v1, v5

    const-string v2, "Wrong user name"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/16 v1, 0xc

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1413"

    aput-object v3, v2, v5

    const-string v3, "MP build error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1414"

    aput-object v3, v2, v5

    const-string v3, "USM error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1415"

    aput-object v3, v2, v5

    const-string v3, "Unknown PDU handles"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1416"

    aput-object v3, v2, v5

    const-string v3, "Unavailable context"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1417"

    aput-object v3, v2, v5

    const-string v3, "Unknown context"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "-1418"

    aput-object v3, v2, v5

    const-string v3, "Report sent"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->MP_ERROR_MESSAGES:[[Ljava/lang/String;

    .line 239
    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v5

    const-string v2, "USM OK"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1401"

    aput-object v2, v1, v5

    const-string v2, "USM error"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1403"

    aput-object v2, v1, v5

    const-string v2, "Unsupported security level"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    const/4 v1, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1404"

    aput-object v3, v2, v5

    const-string v3, "Unknown security name"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1405"

    aput-object v3, v2, v5

    const-string v3, "Encryption error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1406"

    aput-object v3, v2, v5

    const-string v3, "Decryption error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1407"

    aput-object v3, v2, v5

    const-string v3, "Authentication error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1408"

    aput-object v3, v2, v5

    const-string v3, "Authentication failure"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1409"

    aput-object v3, v2, v5

    const-string v3, "USM parse error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1410"

    aput-object v2, v1, v5

    const-string v2, "Unknown engine ID"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    const/16 v1, 0xa

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1411"

    aput-object v3, v2, v5

    const-string v3, "Not in time window"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "1412"

    aput-object v2, v1, v5

    const-string v2, "Unsupported authentication protocol"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    const/16 v1, 0xc

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1413"

    aput-object v3, v2, v5

    const-string v3, "Unsupported privacy protocol"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "1414"

    aput-object v3, v2, v5

    const-string v3, "Address error"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/mp/SnmpConstants;->USM_ERROR_MESSAGES:[[Ljava/lang/String;

    return-void

    .line 103
    nop

    :array_3fa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_414
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 107
    :array_42e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 109
    :array_448
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 111
    :array_462
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_47c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 117
    :array_496
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_4b0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 121
    :array_4ca
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 125
    :array_4e4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 127
    :array_4fa
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 129
    :array_510
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 131
    :array_526
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 133
    :array_53c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 135
    :array_552
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 137
    :array_568
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 140
    :array_57e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 142
    :array_598
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 146
    :array_5b2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 149
    :array_5c8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 151
    :array_5e0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 153
    :array_5f8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 155
    :array_610
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 157
    :array_628
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 161
    :array_640
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 163
    :array_656
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 165
    :array_66c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 167
    :array_682
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 169
    :array_698
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 171
    :array_6ae
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 173
    :array_6c4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 175
    :array_6da
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 179
    :array_6f0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 181
    :array_708
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 185
    :array_720
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 187
    :array_738
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 190
    :array_750
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 193
    :array_758
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGenericTrapID(Lorg/snmp4j/smi/OID;)I
    .registers 4
    .parameter "oid"

    .prologue
    const/4 v0, -0x1

    .line 287
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v1

    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpTraps:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_12

    .line 293
    :cond_11
    :goto_11
    return v0

    .line 290
    :cond_12
    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->snmpTraps:Lorg/snmp4j/smi/OID;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OID;->size()I

    move-result v1

    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->snmpTraps:Lorg/snmp4j/smi/OID;

    invoke-virtual {p0, v1, v2}, Lorg/snmp4j/smi/OID;->leftMostCompare(ILorg/snmp4j/smi/OID;)I

    move-result v1

    if-nez v1, :cond_11

    .line 291
    invoke-virtual {p0}, Lorg/snmp4j/smi/OID;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/OID;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_11
.end method

.method public static getTrapOID(Lorg/snmp4j/smi/OID;II)Lorg/snmp4j/smi/OID;
    .registers 5
    .parameter "enterprise"
    .parameter "genericID"
    .parameter "specificID"

    .prologue
    .line 298
    const/4 v1, 0x6

    if-eq p1, v1, :cond_10

    .line 299
    new-instance v0, Lorg/snmp4j/smi/OID;

    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->snmpTraps:Lorg/snmp4j/smi/OID;

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 300
    .local v0, oid:Lorg/snmp4j/smi/OID;
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OID;->append(I)Lorg/snmp4j/smi/OID;

    .line 307
    :goto_f
    return-object v0

    .line 303
    .end local v0           #oid:Lorg/snmp4j/smi/OID;
    :cond_10
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0, p0}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 304
    .restart local v0       #oid:Lorg/snmp4j/smi/OID;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/OID;->append(I)Lorg/snmp4j/smi/OID;

    .line 305
    invoke-virtual {v0, p2}, Lorg/snmp4j/smi/OID;->append(I)Lorg/snmp4j/smi/OID;

    goto :goto_f
.end method

.method public static mpErrorMessage(I)Ljava/lang/String;
    .registers 5
    .parameter "status"

    .prologue
    .line 257
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->MP_ERROR_MESSAGES:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_31

    .line 259
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->MP_ERROR_MESSAGES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 260
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->MP_ERROR_MESSAGES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 265
    :goto_2d
    return-object v2

    .line 258
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 264
    :cond_31
    invoke-static {p0}, Lorg/snmp4j/mp/SnmpConstants;->usmErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 265
    goto :goto_2d
.end method

.method public static usmErrorMessage(I)Ljava/lang/String;
    .registers 5
    .parameter "status"

    .prologue
    .line 269
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->USM_ERROR_MESSAGES:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 271
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->USM_ERROR_MESSAGES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 272
    sget-object v2, Lorg/snmp4j/mp/SnmpConstants;->USM_ERROR_MESSAGES:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 275
    .end local v1           #s:Ljava/lang/String;
    :cond_2d
    return-object v1

    .line 270
    .restart local v1       #s:Ljava/lang/String;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
