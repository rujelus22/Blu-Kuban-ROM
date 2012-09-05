.class interface abstract Ljcifs/smb/SmbConstants;
.super Ljava/lang/Object;
.source "SmbConstants.java"


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field public static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field public static final ATTR_HIDDEN:I = 0x2

.field public static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field public static final ATTR_SYSTEM:I = 0x4

.field public static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final CAPABILITIES:I = 0x0

.field public static final CAP_DFS:I = 0x1000

.field public static final CAP_EXTENDED_SECURITY:I = -0x80000000

.field public static final CAP_LARGE_FILES:I = 0x8

.field public static final CAP_LEVEL_II_OPLOCKS:I = 0x80

.field public static final CAP_LOCK_AND_READ:I = 0x100

.field public static final CAP_MPX_MODE:I = 0x2

.field public static final CAP_NONE:I = 0x0

.field public static final CAP_NT_FIND:I = 0x200

.field public static final CAP_NT_SMBS:I = 0x10

.field public static final CAP_RAW_MODE:I = 0x1

.field public static final CAP_RPC_REMOTE_APIS:I = 0x20

.field public static final CAP_STATUS32:I = 0x40

.field public static final CAP_UNICODE:I = 0x4

.field public static final CMD_OFFSET:I = 0x4

.field public static final CONNECTIONS:Ljava/util/LinkedList; = null

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_CAPABILITIES:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_FLAGS2:I = 0x0

.field public static final DEFAULT_MAX_MPX_COUNT:I = 0xa

.field public static final DEFAULT_PORT:I = 0x1bd

.field public static final DEFAULT_RCV_BUF_SIZE:I = 0xec00

.field public static final DEFAULT_RESPONSE_TIMEOUT:I = 0x7530

.field public static final DEFAULT_SND_BUF_SIZE:I = 0x4104

.field public static final DEFAULT_SO_TIMEOUT:I = 0x88b8

.field public static final DEFAULT_SSN_LIMIT:I = 0xfa

.field public static final DELETE:I = 0x10000

.field public static final ERROR_CODE_OFFSET:I = 0x5

.field public static final FILE_APPEND_DATA:I = 0x4

.field public static final FILE_DELETE:I = 0x40

.field public static final FILE_EXECUTE:I = 0x20

.field public static final FILE_READ_ATTRIBUTES:I = 0x80

.field public static final FILE_READ_DATA:I = 0x1

.field public static final FILE_READ_EA:I = 0x8

.field public static final FILE_WRITE_ATTRIBUTES:I = 0x100

.field public static final FILE_WRITE_DATA:I = 0x2

.field public static final FILE_WRITE_EA:I = 0x10

#the value of this static final field might be set in the static constructor
.field public static final FLAGS2:I = 0x0

.field public static final FLAGS2_EXTENDED_ATTRIBUTES:I = 0x2

.field public static final FLAGS2_EXTENDED_SECURITY_NEGOTIATION:I = 0x800

.field public static final FLAGS2_LONG_FILENAMES:I = 0x1

.field public static final FLAGS2_NONE:I = 0x0

.field public static final FLAGS2_PERMIT_READ_IF_EXECUTE_PERM:I = 0x2000

.field public static final FLAGS2_RESOLVE_PATHS_IN_DFS:I = 0x1000

.field public static final FLAGS2_SECURITY_SIGNATURES:I = 0x4

.field public static final FLAGS2_STATUS32:I = 0x4000

.field public static final FLAGS2_UNICODE:I = 0x8000

.field public static final FLAGS_COPY_SOURCE_MODE_ASCII:I = 0x8

.field public static final FLAGS_COPY_TARGET_MODE_ASCII:I = 0x4

.field public static final FLAGS_LOCK_AND_READ_WRITE_AND_UNLOCK:I = 0x1

.field public static final FLAGS_NONE:I = 0x0

.field public static final FLAGS_NOTIFY_OF_MODIFY_ACTION:I = 0x40

.field public static final FLAGS_OFFSET:I = 0x9

.field public static final FLAGS_OPLOCK_REQUESTED_OR_GRANTED:I = 0x20

.field public static final FLAGS_PATH_NAMES_CANONICALIZED:I = 0x10

.field public static final FLAGS_PATH_NAMES_CASELESS:I = 0x8

.field public static final FLAGS_RECEIVE_BUFFER_POSTED:I = 0x2

.field public static final FLAGS_RESPONSE:I = 0x80

.field public static final FLAGS_TARGET_MUST_BE_DIRECTORY:I = 0x2

.field public static final FLAGS_TARGET_MUST_BE_FILE:I = 0x1

.field public static final FLAGS_TREE_COPY:I = 0x20

.field public static final FLAGS_VERIFY_ALL_WRITES:I = 0x10

#the value of this static final field might be set in the static constructor
.field public static final FORCE_UNICODE:Z = false

.field public static final GENERIC_ALL:I = 0x10000000

.field public static final GENERIC_EXECUTE:I = 0x20000000

.field public static final GENERIC_READ:I = -0x80000000

.field public static final GENERIC_WRITE:I = 0x40000000

.field public static final HEADER_LENGTH:I = 0x20

.field public static final LADDR:Ljava/net/InetAddress; = null

#the value of this static final field might be set in the static constructor
.field public static final LM_COMPATIBILITY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LPORT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_MPX_COUNT:I = 0x0

.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field public static final NATIVE_LANMAN:Ljava/lang/String; = null

.field public static final NATIVE_OS:Ljava/lang/String; = null

.field public static final NETBIOS_HOSTNAME:Ljava/lang/String; = null

.field public static final NULL_TRANSPORT:Ljcifs/smb/SmbTransport; = null

.field public static final OEM_ENCODING:Ljava/lang/String; = null

.field public static final OPEN_FUNCTION_FAIL_IF_EXISTS:I = 0x0

.field public static final OPEN_FUNCTION_OVERWRITE_IF_EXISTS:I = 0x20

#the value of this static final field might be set in the static constructor
.field public static final PID:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RCV_BUF_SIZE:I = 0x0

.field public static final READ_CONTROL:I = 0x20000

#the value of this static final field might be set in the static constructor
.field public static final RESPONSE_TIMEOUT:I = 0x0

.field public static final SECURITY_SHARE:I = 0x0

.field public static final SECURITY_USER:I = 0x1

.field public static final SIGNATURE_OFFSET:I = 0xe

#the value of this static final field might be set in the static constructor
.field public static final SIGNPREF:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SND_BUF_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SO_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SSN_LIMIT:I = 0x0

.field public static final SYNCHRONIZE:I = 0x100000

#the value of this static final field might be set in the static constructor
.field public static final TCP_NODELAY:Z = false

.field public static final TID_OFFSET:I = 0x18

.field public static final TZ:Ljava/util/TimeZone; = null

.field public static final UNI_ENCODING:Ljava/lang/String; = "UTF-16LE"

#the value of this static final field might be set in the static constructor
.field public static final USE_BATCHING:Z = false

#the value of this static final field might be set in the static constructor
.field public static final USE_EXTSEC:Z = false

#the value of this static final field might be set in the static constructor
.field public static final USE_NTSMBS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final USE_NTSTATUS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final USE_UNICODE:Z = false

.field public static final VC_NUMBER:I = 0x1

.field public static final WRITE_DAC:I = 0x40000

.field public static final WRITE_OWNER:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 19
    invoke-static {}, Ljcifs/Config;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->LADDR:Ljava/net/InetAddress;

    .line 20
    const-string v0, "jcifs.smb.client.lport"

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->LPORT:I

    .line 21
    const-string v0, "jcifs.smb.client.maxMpxCount"

    const/16 v3, 0xa

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->MAX_MPX_COUNT:I

    .line 22
    const-string v0, "jcifs.smb.client.snd_buf_size"

    const/16 v3, 0x4104

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SND_BUF_SIZE:I

    .line 23
    const-string v0, "jcifs.smb.client.rcv_buf_size"

    const v3, 0xec00

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RCV_BUF_SIZE:I

    .line 24
    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v7}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    .line 25
    const-string v0, "jcifs.smb.client.useUnicode"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->FORCE_UNICODE:Z

    .line 26
    const-string v0, "jcifs.smb.client.useNtStatus"

    invoke-static {v0, v7}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    .line 27
    const-string v0, "jcifs.smb.client.signingPreferred"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    .line 28
    const-string v0, "jcifs.smb.client.useNTSmbs"

    invoke-static {v0, v7}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    .line 29
    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    invoke-static {v0, v7}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    .line 31
    const-string v0, "jcifs.netbios.hostname"

    invoke-static {v0, v8}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NETBIOS_HOSTNAME:Ljava/lang/String;

    .line 32
    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    .line 113
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x40f0

    mul-double/2addr v3, v5

    double-to-int v0, v3

    sput v0, Ljcifs/smb/SmbConstants;->PID:I

    .line 126
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    .line 128
    const-string v0, "jcifs.smb.client.useBatching"

    invoke-static {v0, v7}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    .line 129
    const-string v0, "jcifs.encoding"

    sget-object v3, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-static {v0, v3}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    .line 131
    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_EXTSEC:Z

    if-eqz v0, :cond_12b

    const/16 v0, 0x800

    :goto_9a
    or-int/lit8 v3, v0, 0x3

    sget-boolean v0, Ljcifs/smb/SmbConstants;->SIGNPREF:Z

    if-eqz v0, :cond_12e

    move v0, v2

    :goto_a1
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    if-eqz v0, :cond_131

    const/16 v0, 0x4000

    :goto_a8
    or-int/2addr v3, v0

    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    if-eqz v0, :cond_134

    const v0, 0x8000

    :goto_b0
    or-int/2addr v0, v3

    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    .line 138
    sget-boolean v0, Ljcifs/smb/SmbConstants;->USE_NTSMBS:Z

    if-eqz v0, :cond_137

    const/16 v0, 0x10

    :goto_b9
    sget-boolean v3, Ljcifs/smb/SmbConstants;->USE_NTSTATUS:Z

    if-eqz v3, :cond_139

    const/16 v3, 0x40

    :goto_bf
    or-int/2addr v0, v3

    sget-boolean v3, Ljcifs/smb/SmbConstants;->USE_UNICODE:Z

    if-eqz v3, :cond_13b

    :goto_c4
    or-int/2addr v0, v2

    or-int/lit16 v0, v0, 0x1000

    sput v0, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    .line 143
    const-string v0, "jcifs.smb.client.flags2"

    sget v2, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->FLAGS2:I

    .line 144
    const-string v0, "jcifs.smb.client.capabilities"

    sget v2, Ljcifs/smb/SmbConstants;->DEFAULT_CAPABILITIES:I

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->CAPABILITIES:I

    .line 145
    const-string v0, "jcifs.smb.client.tcpNoDelay"

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbConstants;->TCP_NODELAY:Z

    .line 146
    const-string v0, "jcifs.smb.client.responseTimeout"

    const/16 v2, 0x7530

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->RESPONSE_TIMEOUT:I

    .line 149
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ljcifs/smb/SmbConstants;->CONNECTIONS:Ljava/util/LinkedList;

    .line 151
    const-string v0, "jcifs.smb.client.ssnLimit"

    const/16 v2, 0xfa

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SSN_LIMIT:I

    .line 153
    const-string v0, "jcifs.smb.client.soTimeout"

    const v2, 0x88b8

    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbConstants;->SO_TIMEOUT:I

    .line 155
    const-string v0, "jcifs.smb.client.nativeOs"

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_OS:Ljava/lang/String;

    .line 157
    const-string v0, "jcifs.smb.client.nativeLanMan"

    const-string v2, "jCIFS"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbConstants;->NATIVE_LANMAN:Ljava/lang/String;

    .line 160
    new-instance v0, Ljcifs/smb/SmbTransport;

    invoke-direct {v0, v8, v1, v8, v1}, Ljcifs/smb/SmbTransport;-><init>(Ljcifs/UniAddress;ILjava/net/InetAddress;I)V

    sput-object v0, Ljcifs/smb/SmbConstants;->NULL_TRANSPORT:Ljcifs/smb/SmbTransport;

    return-void

    :cond_12b
    move v0, v1

    .line 131
    goto/16 :goto_9a

    :cond_12e
    move v0, v1

    goto/16 :goto_a1

    :cond_131
    move v0, v1

    goto/16 :goto_a8

    :cond_134
    move v0, v1

    goto/16 :goto_b0

    :cond_137
    move v0, v1

    .line 138
    goto :goto_b9

    :cond_139
    move v3, v1

    goto :goto_bf

    :cond_13b
    move v2, v1

    goto :goto_c4
.end method
