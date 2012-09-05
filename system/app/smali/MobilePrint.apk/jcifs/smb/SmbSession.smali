.class public final Ljcifs/smb/SmbSession;
.super Ljava/lang/Object;
.source "SmbSession.java"


# static fields
.field private static final CACHE_POLICY:I

.field private static final DOMAIN:Ljava/lang/String;

.field private static final LOGON_SHARE:Ljava/lang/String;

.field private static final LOOKUP_RESP_LIMIT:I

.field private static final USERNAME:Ljava/lang/String;

.field static dc_list:[Ljcifs/netbios/NbtAddress;

.field static dc_list_counter:I

.field static dc_list_expiration:J


# instance fields
.field private address:Ljcifs/UniAddress;

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field connectionState:I

.field expiration:J

.field private localAddr:Ljava/net/InetAddress;

.field private localPort:I

.field netbiosName:Ljava/lang/String;

.field private port:I

.field transport:Ljcifs/smb/SmbTransport;

.field trees:Ljava/util/Vector;

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v0, "jcifs.smb.client.logonShare"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    sput-object v0, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    .line 40
    const-string v0, "jcifs.netbios.lookupRespLimit"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    sput v0, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    .line 42
    const-string v0, "jcifs.smb.client.domain"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    sput-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    .line 44
    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    .line 46
    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    .line 45
    sput v0, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    .line 48
    sput-object v2, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 35
    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 7
    .parameter "address"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .parameter "auth"

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 177
    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 182
    iput-object p1, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    .line 183
    iput p2, p0, Ljcifs/smb/SmbSession;->port:I

    .line 184
    iput-object p3, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    .line 185
    iput p4, p0, Ljcifs/smb/SmbSession;->localPort:I

    .line 186
    iput-object p5, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 187
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 189
    return-void
.end method

.method public static getChallenge(Ljcifs/UniAddress;)[B
    .registers 2
    .parameter "dc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getChallenge(Ljcifs/UniAddress;I)[B
    .registers 4
    .parameter "dc"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v0

    .line 128
    .local v0, trans:Ljcifs/smb/SmbTransport;
    invoke-virtual {v0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 129
    iget-object v1, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object v1
.end method

.method public static getChallengeForDomain()Ljcifs/smb/NtlmChallenge;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v9, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    if-nez v9, :cond_c

    .line 71
    new-instance v9, Ljcifs/smb/SmbException;

    const-string v10, "A domain was not specified"

    invoke-direct {v9, v10}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 73
    :cond_c
    sget-object v10, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    monitor-enter v10

    .line 74
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 75
    .local v4, now:J
    const/4 v6, 0x1

    .local v6, retry:I
    move v7, v6

    .line 78
    .end local v6           #retry:I
    .local v7, retry:I
    :goto_15
    sget-wide v11, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    cmp-long v9, v11, v4

    if-gez v9, :cond_35

    .line 79
    sget-object v9, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v2

    .line 80
    .local v2, list:[Ljcifs/netbios/NbtAddress;
    sget v9, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    int-to-long v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long/2addr v11, v4

    sput-wide v11, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 81
    if-eqz v2, :cond_67

    array-length v9, v2

    if-lez v9, :cond_67

    .line 82
    sput-object v2, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    .line 91
    .end local v2           #list:[Ljcifs/netbios/NbtAddress;
    :cond_35
    :goto_35
    sget-object v9, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    array-length v9, v9

    sget v11, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 92
    .local v3, max:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3f
    if-lt v1, v3, :cond_7d

    .line 110
    const-wide/16 v11, 0x0

    sput-wide v11, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 111
    add-int/lit8 v6, v7, -0x1

    .end local v7           #retry:I
    .restart local v6       #retry:I
    if-gtz v7, :cond_c6

    .line 113
    const-wide/32 v11, 0xdbba0

    add-long/2addr v11, v4

    sput-wide v11, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 73
    monitor-exit v10
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_7a

    .line 116
    new-instance v9, Ljava/net/UnknownHostException;

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to negotiate with a suitable domain controller for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 116
    invoke-direct {v9, v10}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 84
    .end local v1           #j:I
    .end local v3           #max:I
    .end local v6           #retry:I
    .restart local v2       #list:[Ljcifs/netbios/NbtAddress;
    .restart local v7       #retry:I
    :cond_67
    const-wide/32 v11, 0xdbba0

    add-long/2addr v11, v4

    :try_start_6b
    sput-wide v11, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 85
    sget v9, Ljcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-lt v9, v11, :cond_35

    .line 86
    sget-object v9, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v11, "Failed to retrieve DC list from WINS"

    invoke-virtual {v9, v11}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_35

    .line 73
    .end local v2           #list:[Ljcifs/netbios/NbtAddress;
    .end local v7           #retry:I
    :catchall_7a
    move-exception v9

    monitor-exit v10
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_7a

    throw v9

    .line 93
    .restart local v1       #j:I
    .restart local v3       #max:I
    .restart local v7       #retry:I
    :cond_7d
    :try_start_7d
    sget v9, Ljcifs/smb/SmbSession;->dc_list_counter:I

    add-int/lit8 v11, v9, 0x1

    sput v11, Ljcifs/smb/SmbSession;->dc_list_counter:I

    rem-int v0, v9, v3

    .line 94
    .local v0, i:I
    sget-object v9, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v9, v9, v0
    :try_end_89
    .catchall {:try_start_7d .. :try_end_89} :catchall_7a

    if-eqz v9, :cond_c2

    .line 96
    :try_start_8b
    sget-object v9, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v9, v9, v0

    invoke-static {v9}, Ljcifs/smb/SmbSession;->interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_7a
    .catch Ljcifs/smb/SmbException; {:try_start_8b .. :try_end_92} :catch_95

    move-result-object v9

    :try_start_93
    monitor-exit v10

    return-object v9

    .line 97
    :catch_95
    move-exception v8

    .line 98
    .local v8, se:Ljcifs/smb/SmbException;
    sget v9, Ljcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-lt v9, v11, :cond_bd

    .line 99
    sget-object v9, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed validate DC: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v12, v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 100
    sget v9, Ljcifs/util/LogStream;->level:I

    const/4 v11, 0x2

    if-le v9, v11, :cond_bd

    .line 101
    sget-object v9, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v8, v9}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 104
    :cond_bd
    sget-object v9, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    const/4 v11, 0x0

    aput-object v11, v9, v0
    :try_end_c2
    .catchall {:try_start_93 .. :try_end_c2} :catchall_7a

    .line 92
    .end local v8           #se:Ljcifs/smb/SmbException;
    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3f

    .end local v0           #i:I
    .end local v7           #retry:I
    .restart local v6       #retry:I
    :cond_c6
    move v7, v6

    .end local v6           #retry:I
    .restart local v7       #retry:I
    goto/16 :goto_15
.end method

.method private static interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    .registers 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    new-instance v0, Ljcifs/UniAddress;

    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v0, dc:Ljcifs/UniAddress;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v2

    .line 55
    .local v2, trans:Ljcifs/smb/SmbTransport;
    sget-object v3, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    if-nez v3, :cond_28

    .line 56
    invoke-virtual {v2}, Ljcifs/smb/SmbTransport;->connect()V

    .line 57
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1e

    .line 58
    sget-object v3, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    .line 59
    const-string v4, "Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    .line 58
    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 66
    :cond_1e
    :goto_1e
    new-instance v3, Ljcifs/smb/NtlmChallenge;

    iget-object v4, v2, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v4, v4, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-direct {v3, v4, v0}, Ljcifs/smb/NtlmChallenge;-><init>([BLjcifs/UniAddress;)V

    return-object v3

    .line 63
    :cond_28
    sget-object v3, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v3}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v1

    .line 64
    .local v1, ssn:Ljcifs/smb/SmbSession;
    sget-object v3, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_1e
.end method

.method public static logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 9
    .parameter "dc"
    .parameter "port"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 151
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v3

    sget-object v4, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v2

    .line 152
    .local v2, tree:Ljcifs/smb/SmbTree;
    sget-object v3, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    if-nez v3, :cond_17

    .line 153
    invoke-virtual {v2, v5, v5}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 159
    :goto_16
    return-void

    .line 155
    :cond_17
    new-instance v0, Ljcifs/smb/Trans2FindFirst2;

    const-string v3, "\\"

    const-string v4, "*"

    const/16 v5, 0x10

    invoke-direct {v0, v3, v4, v5}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    .local v0, req:Ljcifs/smb/Trans2FindFirst2;
    new-instance v1, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v1}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 157
    .local v1, resp:Ljcifs/smb/Trans2FindFirst2Response;
    invoke-virtual {v2, v0, v1}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_16
.end method

.method public static logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 3
    .parameter "dc"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 147
    return-void
.end method


# virtual methods
.method declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    .registers 7
    .parameter "share"
    .parameter "service"

    .prologue
    .line 194
    monitor-enter p0

    if-nez p1, :cond_5

    .line 195
    :try_start_3
    const-string p1, "IPC$"

    .line 197
    :cond_5
    iget-object v3, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :cond_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 203
    new-instance v1, Ljcifs/smb/SmbTree;

    invoke-direct {v1, p0, p1, p2}, Ljcifs/smb/SmbTree;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v1, t:Ljcifs/smb/SmbTree;
    iget-object v3, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    move-object v2, v1

    .line 205
    .end local v1           #t:Ljcifs/smb/SmbTree;
    .local v2, t:Ljava/lang/Object;
    :goto_1c
    monitor-exit p0

    return-object v2

    .line 198
    .end local v2           #t:Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbTree;

    .line 199
    .restart local v1       #t:Ljcifs/smb/SmbTree;
    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2c

    move-result v3

    if-eqz v3, :cond_b

    move-object v2, v1

    .line 200
    .restart local v2       #t:Ljava/lang/Object;
    goto :goto_1c

    .line 194
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #t:Ljcifs/smb/SmbTree;
    .end local v2           #t:Ljava/lang/Object;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method logoff(Z)V
    .registers 8
    .parameter "inError"

    .prologue
    .line 442
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v4

    monitor-enter v4

    .line 444
    :try_start_5
    iget v3, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_c

    .line 445
    monitor-exit v4

    .line 472
    :goto_b
    return-void

    .line 446
    :cond_c
    const/4 v3, 0x3

    iput v3, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 448
    const/4 v3, 0x0

    iput-object v3, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 450
    iget-object v3, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_18
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_48

    .line 455
    if-nez p1, :cond_3b

    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v3, v3, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v3, v3, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v3, :cond_3b

    .line 460
    new-instance v1, Ljcifs/smb/SmbComLogoffAndX;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljcifs/smb/SmbComLogoffAndX;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 461
    .local v1, request:Ljcifs/smb/SmbComLogoffAndX;
    iget v3, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v3, v1, Ljcifs/smb/ServerMessageBlock;->uid:I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_45

    .line 463
    :try_start_32
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_45
    .catch Ljcifs/smb/SmbException; {:try_start_32 .. :try_end_38} :catch_52

    .line 466
    :goto_38
    const/4 v3, 0x0

    :try_start_39
    iput v3, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 469
    .end local v1           #request:Ljcifs/smb/SmbComLogoffAndX;
    :cond_3b
    const/4 v3, 0x0

    iput v3, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 470
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 442
    monitor-exit v4

    goto :goto_b

    .end local v0           #e:Ljava/util/Enumeration;
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_45

    throw v3

    .line 451
    .restart local v0       #e:Ljava/util/Enumeration;
    :cond_48
    :try_start_48
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/smb/SmbTree;

    .line 452
    .local v2, t:Ljcifs/smb/SmbTree;
    invoke-virtual {v2, p1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_45

    goto :goto_18

    .line 464
    .end local v2           #t:Ljcifs/smb/SmbTree;
    .restart local v1       #request:Ljcifs/smb/SmbComLogoffAndX;
    :catch_52
    move-exception v3

    goto :goto_38
.end method

.method matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .registers 3
    .parameter "auth"

    .prologue
    .line 208
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_e

    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 12
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v4

    monitor-enter v4

    .line 219
    if-eqz p2, :cond_a

    .line 220
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 223
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget v3, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljcifs/smb/SmbSession;->expiration:J

    .line 224
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 225
    if-eqz p2, :cond_1f

    iget-boolean v3, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v3, :cond_1f

    .line 226
    monitor-exit v4

    .line 253
    :goto_1e
    return-void

    .line 229
    :cond_1f
    instance-of v3, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v3, :cond_4e

    .line 230
    move-object v0, p1

    check-cast v0, Ljcifs/smb/SmbComTreeConnectAndX;

    move-object v2, v0

    .line 231
    .local v2, tcax:Ljcifs/smb/SmbComTreeConnectAndX;
    iget-object v3, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, v2, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    const-string v5, "\\IPC$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\\\\"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\IPC$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 241
    .end local v2           #tcax:Ljcifs/smb/SmbComTreeConnectAndX;
    :cond_4e
    iget v3, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v3, p1, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 242
    iget-object v3, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v3, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_5d

    .line 244
    :try_start_56
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3, p1, p2}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5d
    .catch Ljcifs/smb/SmbException; {:try_start_56 .. :try_end_5b} :catch_60

    .line 218
    :try_start_5b
    monitor-exit v4

    goto :goto_1e

    :catchall_5d
    move-exception v3

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5d

    throw v3

    .line 245
    :catch_60
    move-exception v1

    .line 246
    .local v1, se:Ljcifs/smb/SmbException;
    :try_start_61
    instance-of v3, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v3, :cond_69

    .line 247
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljcifs/smb/SmbSession;->logoff(Z)V

    .line 249
    :cond_69
    const/4 v3, 0x0

    iput-object v3, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 250
    throw v1
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_5d
.end method

.method sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 21
    .parameter "andx"
    .parameter "andxResponse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v15

    monitor-enter v15

    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, nctx:Ljcifs/smb/NtlmContext;
    const/4 v3, 0x0

    .line 261
    .local v3, ex:Ljcifs/smb/SmbException;
    const/4 v14, 0x0

    :try_start_8
    new-array v13, v14, [B

    .line 262
    .local v13, token:[B
    const/16 v12, 0xa

    .line 264
    .local v12, state:I
    :goto_c
    move-object/from16 v0, p0

    iget v14, v0, Ljcifs/smb/SmbSession;->connectionState:I

    if-nez v14, :cond_9e

    .line 273
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_9b

    .line 276
    :try_start_17
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14}, Ljcifs/smb/SmbTransport;->connect()V

    .line 282
    sget-object v14, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v14, Ljcifs/util/LogStream;->level:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v14, v0, :cond_60

    .line 283
    sget-object v14, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "sessionSetup: accountName="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",primaryDomain="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 290
    :cond_60
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->uid:I
    :try_end_65
    .catchall {:try_start_17 .. :try_end_65} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_17 .. :try_end_65} :catch_287

    :cond_65
    move-object v6, v5

    .line 293
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .local v6, nctx:Ljcifs/smb/NtlmContext;
    sparse-switch v12, :sswitch_data_2d0

    .line 429
    :try_start_69
    new-instance v14, Ljcifs/smb/SmbException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Unexpected session setup state: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_185
    .catch Ljcifs/smb/SmbException; {:try_start_69 .. :try_end_82} :catch_82

    .line 432
    :catch_82
    move-exception v10

    move-object v5, v6

    .line 433
    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    .local v10, se:Ljcifs/smb/SmbException;
    :goto_84
    const/4 v14, 0x1

    :try_start_85
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljcifs/smb/SmbSession;->logoff(Z)V

    .line 434
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 435
    throw v10
    :try_end_90
    .catchall {:try_start_85 .. :try_end_90} :catchall_90

    .line 436
    .end local v10           #se:Ljcifs/smb/SmbException;
    :catchall_90
    move-exception v14

    .line 437
    :goto_91
    :try_start_91
    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    .line 438
    throw v14

    .line 256
    .end local v12           #state:I
    .end local v13           #token:[B
    :catchall_9b
    move-exception v14

    monitor-exit v15
    :try_end_9d
    .catchall {:try_start_91 .. :try_end_9d} :catchall_9b

    throw v14

    .line 265
    .restart local v12       #state:I
    .restart local v13       #token:[B
    :cond_9e
    :try_start_9e
    move-object/from16 v0, p0

    iget v14, v0, Ljcifs/smb/SmbSession;->connectionState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v14, v0, :cond_b2

    move-object/from16 v0, p0

    iget v14, v0, Ljcifs/smb/SmbSession;->connectionState:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_b4

    .line 266
    :cond_b2
    monitor-exit v15
    :try_end_b3
    .catchall {:try_start_9e .. :try_end_b3} :catchall_9b

    .line 440
    :goto_b3
    return-void

    .line 268
    :cond_b4
    :try_start_b4
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_9b
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_bb} :catch_bd

    goto/16 :goto_c

    .line 269
    :catch_bd
    move-exception v4

    .line 270
    .local v4, ie:Ljava/lang/InterruptedException;
    :try_start_be
    new-instance v14, Ljcifs/smb/SmbException;

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_9b

    .line 295
    .end local v4           #ie:Ljava/lang/InterruptedException;
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    :sswitch_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v16, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_f0

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_185
    .catch Ljcifs/smb/SmbException; {:try_start_ca .. :try_end_df} :catch_82

    move-result v14

    if-eqz v14, :cond_f0

    .line 297
    const/16 v12, 0x14

    move-object v5, v6

    .line 431
    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    :cond_e5
    :goto_e5
    if-nez v12, :cond_65

    .line 437
    :try_start_e7
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v15
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_9b

    goto :goto_b3

    .line 301
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    :cond_f0
    :try_start_f0
    new-instance v7, Ljcifs/smb/SmbComSessionSetupAndX;

    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v1, v14}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 302
    .local v7, request:Ljcifs/smb/SmbComSessionSetupAndX;
    new-instance v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 308
    .local v8, response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_149

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v14, v14, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v14, :cond_189

    sget-object v14, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_189

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v16, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v14

    sget-object v16, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 319
    :cond_149
    :goto_149
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v14, v7, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_14f
    .catchall {:try_start_f0 .. :try_end_14f} :catchall_185
    .catch Ljcifs/smb/SmbException; {:try_start_f0 .. :try_end_14f} :catch_82

    .line 322
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v7, v8}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_156
    .catchall {:try_start_14f .. :try_end_156} :catchall_185
    .catch Ljcifs/smb/SmbAuthException; {:try_start_14f .. :try_end_156} :catch_1b1
    .catch Ljcifs/smb/SmbException; {:try_start_14f .. :try_end_156} :catch_1b3

    .line 329
    :goto_156
    :try_start_156
    iget-boolean v14, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v14, :cond_1b6

    .line 330
    const-string v14, "GUEST"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1b6

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v14, v14, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v14, v14, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v14, :cond_1b6

    .line 332
    new-instance v14, Ljcifs/smb/SmbAuthException;

    const v16, -0x3fffff93

    move/from16 v0, v16

    invoke-direct {v14, v0}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v14

    .line 436
    .end local v7           #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .end local v8           #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    :catchall_185
    move-exception v14

    move-object v5, v6

    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    goto/16 :goto_91

    .line 314
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    .restart local v7       #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .restart local v8       #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    :cond_189
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v11

    .line 315
    .local v11, signingKey:[B
    new-instance v14, Ljcifs/smb/SigningDigest;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v11, v0}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v14, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    goto :goto_149

    .line 323
    .end local v11           #signingKey:[B
    :catch_1b1
    move-exception v9

    .line 324
    .local v9, sae:Ljcifs/smb/SmbAuthException;
    throw v9

    .line 325
    .end local v9           #sae:Ljcifs/smb/SmbAuthException;
    :catch_1b3
    move-exception v10

    .line 326
    .restart local v10       #se:Ljcifs/smb/SmbException;
    move-object v3, v10

    goto :goto_156

    .line 335
    .end local v10           #se:Ljcifs/smb/SmbException;
    :cond_1b6
    if-eqz v3, :cond_1b9

    .line 336
    throw v3

    .line 338
    :cond_1b9
    iget v14, v8, Ljcifs/smb/ServerMessageBlock;->uid:I

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->uid:I

    .line 340
    iget-object v14, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v14, :cond_1cf

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 345
    :cond_1cf
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 347
    const/4 v12, 0x0

    move-object v5, v6

    .line 349
    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    goto/16 :goto_e5

    .line 351
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .end local v7           #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .end local v8           #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    :sswitch_1d8
    if-nez v6, :cond_2cd

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v14, v14, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_211

    const/4 v2, 0x1

    .line 353
    .local v2, doSigning:Z
    :goto_1e5
    new-instance v5, Ljcifs/smb/NtlmContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v5, v14, v2}, Ljcifs/smb/NtlmContext;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    :try_end_1ee
    .catchall {:try_start_156 .. :try_end_1ee} :catchall_185
    .catch Ljcifs/smb/SmbException; {:try_start_156 .. :try_end_1ee} :catch_82

    .line 356
    .end local v2           #doSigning:Z
    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    :goto_1ee
    :try_start_1ee
    sget v14, Ljcifs/util/LogStream;->level:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v14, v0, :cond_1fb

    .line 357
    sget-object v14, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v14, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 359
    :cond_1fb
    invoke-virtual {v5}, Ljcifs/smb/NtlmContext;->isEstablished()Z

    move-result v14

    if-eqz v14, :cond_213

    .line 361
    invoke-virtual {v5}, Ljcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 363
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_20e
    .catchall {:try_start_1ee .. :try_end_20e} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_1ee .. :try_end_20e} :catch_287

    .line 365
    const/4 v12, 0x0

    .line 366
    goto/16 :goto_e5

    .line 352
    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    :cond_211
    const/4 v2, 0x0

    goto :goto_1e5

    .line 370
    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    :cond_213
    const/4 v14, 0x0

    :try_start_214
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v13, v14, v0}, Ljcifs/smb/NtlmContext;->initSecContext([BII)[B
    :try_end_21c
    .catchall {:try_start_214 .. :try_end_21c} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_214 .. :try_end_21c} :catch_28a

    move-result-object v13

    .line 381
    if-eqz v13, :cond_e5

    .line 382
    :try_start_21f
    new-instance v7, Ljcifs/smb/SmbComSessionSetupAndX;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14, v13}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 383
    .restart local v7       #request:Ljcifs/smb/SmbComSessionSetupAndX;
    new-instance v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 385
    .restart local v8       #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_250

    .line 386
    invoke-virtual {v5}, Ljcifs/smb/NtlmContext;->getSigningKey()[B

    move-result-object v11

    .line 387
    .restart local v11       #signingKey:[B
    if-eqz v11, :cond_250

    .line 388
    new-instance v14, Ljcifs/smb/SigningDigest;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v0}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v14, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 391
    .end local v11           #signingKey:[B
    :cond_250
    move-object/from16 v0, p0

    iget v14, v0, Ljcifs/smb/SmbSession;->uid:I

    iput v14, v7, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 392
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->uid:I
    :try_end_25b
    .catchall {:try_start_21f .. :try_end_25b} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_21f .. :try_end_25b} :catch_287

    .line 395
    :try_start_25b
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v7, v8}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_262
    .catchall {:try_start_25b .. :try_end_262} :catchall_90
    .catch Ljcifs/smb/SmbAuthException; {:try_start_25b .. :try_end_262} :catch_29c
    .catch Ljcifs/smb/SmbException; {:try_start_25b .. :try_end_262} :catch_29e

    .line 409
    :goto_262
    :try_start_262
    iget-boolean v14, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v14, :cond_2ae

    .line 410
    const-string v14, "GUEST"

    move-object/from16 v0, p0

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2ae

    .line 411
    new-instance v14, Ljcifs/smb/SmbAuthException;

    const v16, -0x3fffff93

    move/from16 v0, v16

    invoke-direct {v14, v0}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v14
    :try_end_287
    .catchall {:try_start_262 .. :try_end_287} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_262 .. :try_end_287} :catch_287

    .line 432
    .end local v7           #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .end local v8           #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    :catch_287
    move-exception v10

    goto/16 :goto_84

    .line 371
    :catch_28a
    move-exception v10

    .line 376
    .restart local v10       #se:Ljcifs/smb/SmbException;
    :try_start_28b
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_296
    .catchall {:try_start_28b .. :try_end_296} :catchall_90
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_296} :catch_2cb
    .catch Ljcifs/smb/SmbException; {:try_start_28b .. :try_end_296} :catch_287

    .line 377
    :goto_296
    const/4 v14, 0x0

    :try_start_297
    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->uid:I

    .line 378
    throw v10

    .line 396
    .end local v10           #se:Ljcifs/smb/SmbException;
    .restart local v7       #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .restart local v8       #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    :catch_29c
    move-exception v9

    .line 397
    .restart local v9       #sae:Ljcifs/smb/SmbAuthException;
    throw v9
    :try_end_29e
    .catchall {:try_start_297 .. :try_end_29e} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_297 .. :try_end_29e} :catch_287

    .line 398
    .end local v9           #sae:Ljcifs/smb/SmbAuthException;
    :catch_29e
    move-exception v10

    .line 399
    .restart local v10       #se:Ljcifs/smb/SmbException;
    move-object v3, v10

    .line 406
    :try_start_2a0
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_2ab
    .catchall {:try_start_2a0 .. :try_end_2ab} :catchall_90
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2ab} :catch_2ac
    .catch Ljcifs/smb/SmbException; {:try_start_2a0 .. :try_end_2ab} :catch_287

    goto :goto_262

    :catch_2ac
    move-exception v14

    goto :goto_262

    .line 414
    .end local v10           #se:Ljcifs/smb/SmbException;
    :cond_2ae
    if-eqz v3, :cond_2b1

    .line 415
    :try_start_2b0
    throw v3

    .line 417
    :cond_2b1
    iget v14, v8, Ljcifs/smb/ServerMessageBlock;->uid:I

    move-object/from16 v0, p0

    iput v14, v0, Ljcifs/smb/SmbSession;->uid:I

    .line 419
    iget-object v14, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v14, :cond_2c7

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v7, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v14, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 424
    :cond_2c7
    iget-object v13, v8, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B
    :try_end_2c9
    .catchall {:try_start_2b0 .. :try_end_2c9} :catchall_90
    .catch Ljcifs/smb/SmbException; {:try_start_2b0 .. :try_end_2c9} :catch_287

    .line 427
    goto/16 :goto_e5

    .line 376
    .end local v7           #request:Ljcifs/smb/SmbComSessionSetupAndX;
    .end local v8           #response:Ljcifs/smb/SmbComSessionSetupAndXResponse;
    .restart local v10       #se:Ljcifs/smb/SmbException;
    :catch_2cb
    move-exception v14

    goto :goto_296

    .end local v5           #nctx:Ljcifs/smb/NtlmContext;
    .end local v10           #se:Ljcifs/smb/SmbException;
    .restart local v6       #nctx:Ljcifs/smb/NtlmContext;
    :cond_2cd
    move-object v5, v6

    .end local v6           #nctx:Ljcifs/smb/NtlmContext;
    .restart local v5       #nctx:Ljcifs/smb/NtlmContext;
    goto/16 :goto_1ee

    .line 293
    :sswitch_data_2d0
    .sparse-switch
        0xa -> :sswitch_ca
        0x14 -> :sswitch_1d8
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmbSession[accountName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized transport()Ljcifs/smb/SmbTransport;
    .registers 6

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    if-nez v0, :cond_14

    .line 212
    iget-object v0, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbSession;->port:I

    iget-object v2, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iget v3, p0, Ljcifs/smb/SmbSession;->localPort:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 214
    :cond_14
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
