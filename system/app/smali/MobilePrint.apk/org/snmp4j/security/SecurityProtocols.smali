.class public Lorg/snmp4j/security/SecurityProtocols;
.super Ljava/lang/Object;
.source "SecurityProtocols.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SECURITY_PROTOCOLS_PROPERTIES:Ljava/lang/String; = "org.snmp4j.securityProtocols"

.field private static final SECURITY_PROTOCOLS_PROPERTIES_DEFAULT:Ljava/lang/String; = "SecurityProtocols.properties"

.field static class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class; = null

.field private static instance:Lorg/snmp4j/security/SecurityProtocols; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field private static final serialVersionUID:J = 0x34bdffc9309c747cL


# instance fields
.field private authProtocols:Ljava/util/Hashtable;

.field private maxAuthDigestLength:I

.field private maxPrivDecryptParamsLength:I

.field private privProtocols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "org.snmp4j.security.SecurityProtocols"

    invoke-static {v0}, Lorg/snmp4j/security/SecurityProtocols;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/security/SecurityProtocols;->instance:Lorg/snmp4j/security/SecurityProtocols;

    return-void

    .line 57
    :cond_16
    sget-object v0, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    goto :goto_c
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxAuthDigestLength:I

    .line 61
    iput v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxPrivDecryptParamsLength:I

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    .line 66
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static getInstance()Lorg/snmp4j/security/SecurityProtocols;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lorg/snmp4j/security/SecurityProtocols;->instance:Lorg/snmp4j/security/SecurityProtocols;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lorg/snmp4j/security/SecurityProtocols;

    invoke-direct {v0}, Lorg/snmp4j/security/SecurityProtocols;-><init>()V

    sput-object v0, Lorg/snmp4j/security/SecurityProtocols;->instance:Lorg/snmp4j/security/SecurityProtocols;

    .line 77
    :cond_b
    sget-object v0, Lorg/snmp4j/security/SecurityProtocols;->instance:Lorg/snmp4j/security/SecurityProtocols;

    return-object v0
.end method

.method public static setSecurityProtocols(Lorg/snmp4j/security/SecurityProtocols;)V
    .registers 1
    .parameter "securityProtocols"

    .prologue
    .line 85
    sput-object p0, Lorg/snmp4j/security/SecurityProtocols;->instance:Lorg/snmp4j/security/SecurityProtocols;

    .line 86
    return-void
.end method


# virtual methods
.method public declared-synchronized addAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V
    .registers 4
    .parameter "auth"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/AuthenticationProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 170
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/AuthenticationProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {p1}, Lorg/snmp4j/security/AuthenticationProtocol;->getDigestLength()I

    move-result v0

    iget v1, p0, Lorg/snmp4j/security/SecurityProtocols;->maxAuthDigestLength:I

    if-le v0, v1, :cond_24

    .line 172
    invoke-interface {p1}, Lorg/snmp4j/security/AuthenticationProtocol;->getDigestLength()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxAuthDigestLength:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 175
    :cond_24
    monitor-exit p0

    return-void

    .line 169
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDefaultProtocols()V
    .registers 15

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v11

    if-eqz v11, :cond_e9

    .line 98
    const-string v11, "org.snmp4j.securityProtocols"

    const-string v12, "SecurityProtocols.properties"

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, secProtocols:Ljava/lang/String;
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    if-nez v11, :cond_43

    const-string v11, "org.snmp4j.security.SecurityProtocols"

    invoke-static {v11}, Lorg/snmp4j/security/SecurityProtocols;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    :goto_1b
    invoke-virtual {v11, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 103
    .local v6, is:Ljava/io/InputStream;
    if-nez v6, :cond_46

    .line 104
    new-instance v11, Ljava/lang/InternalError;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Could not read \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\' from classpath!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_40

    .line 97
    .end local v6           #is:Ljava/io/InputStream;
    .end local v9           #secProtocols:Ljava/lang/String;
    :catchall_40
    move-exception v11

    monitor-exit p0

    throw v11

    .line 101
    .restart local v9       #secProtocols:Ljava/lang/String;
    :cond_43
    :try_start_43
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->class$org$snmp4j$security$SecurityProtocols:Ljava/lang/Class;

    goto :goto_1b

    .line 107
    .restart local v6       #is:Ljava/io/InputStream;
    :cond_46
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 109
    .local v7, props:Ljava/util/Properties;
    :try_start_4b
    invoke-virtual {v7, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 110
    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, en:Ljava/util/Enumeration;
    :goto_52
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_d6

    .line 111
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_5e} :catch_80

    .line 113
    .local v1, className:Ljava/lang/String;
    :try_start_5e
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 115
    .local v8, proto:Ljava/lang/Object;
    instance-of v11, v8, Lorg/snmp4j/security/AuthenticationProtocol;

    if-eqz v11, :cond_b2

    .line 116
    check-cast v8, Lorg/snmp4j/security/AuthenticationProtocol;

    .end local v8           #proto:Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lorg/snmp4j/security/SecurityProtocols;->addAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6f} :catch_70
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6f} :catch_80

    goto :goto_52

    .line 127
    .end local v0           #c:Ljava/lang/Class;
    :catch_70
    move-exception v2

    .line 128
    .local v2, cnfe:Ljava/lang/Exception;
    :try_start_71
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v11, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 129
    new-instance v11, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_ad
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_80} :catch_80

    .line 133
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cnfe:Ljava/lang/Exception;
    .end local v3           #en:Ljava/util/Enumeration;
    :catch_80
    move-exception v5

    .line 134
    .local v5, iox:Ljava/io/IOException;
    :try_start_81
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Could not read \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 136
    .local v10, txt:Ljava/lang/String;
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v11, v10}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 137
    new-instance v11, Ljava/lang/InternalError;

    invoke-direct {v11, v10}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_ad
    .catchall {:try_start_81 .. :try_end_ad} :catchall_ad

    .line 140
    .end local v5           #iox:Ljava/io/IOException;
    .end local v10           #txt:Ljava/lang/String;
    :catchall_ad
    move-exception v11

    .line 141
    :try_start_ae
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_40
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_e2

    .line 146
    :goto_b1
    :try_start_b1
    throw v11
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_40

    .line 118
    .restart local v0       #c:Ljava/lang/Class;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v3       #en:Ljava/util/Enumeration;
    .restart local v8       #proto:Ljava/lang/Object;
    :cond_b2
    :try_start_b2
    instance-of v11, v8, Lorg/snmp4j/security/PrivacyProtocol;

    if-eqz v11, :cond_bc

    .line 119
    check-cast v8, Lorg/snmp4j/security/PrivacyProtocol;

    .end local v8           #proto:Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    goto :goto_52

    .line 122
    .restart local v8       #proto:Ljava/lang/Object;
    :cond_bc
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Failed to register security protocol because it does not implement required interfaces: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V
    :try_end_d4
    .catchall {:try_start_b2 .. :try_end_d4} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d4} :catch_70
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_d4} :catch_80

    goto/16 :goto_52

    .line 141
    .end local v0           #c:Ljava/lang/Class;
    .end local v1           #className:Ljava/lang/String;
    .end local v8           #proto:Ljava/lang/Object;
    :cond_d6
    :try_start_d6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_40
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_db

    .line 157
    .end local v3           #en:Ljava/util/Enumeration;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #props:Ljava/util/Properties;
    .end local v9           #secProtocols:Ljava/lang/String;
    :goto_d9
    monitor-exit p0

    return-void

    .line 143
    .restart local v3       #en:Ljava/util/Enumeration;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v7       #props:Ljava/util/Properties;
    .restart local v9       #secProtocols:Ljava/lang/String;
    :catch_db
    move-exception v4

    .line 145
    .local v4, ex:Ljava/io/IOException;
    :try_start_dc
    sget-object v11, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v11, v4}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_d9

    .line 143
    .end local v3           #en:Ljava/util/Enumeration;
    .end local v4           #ex:Ljava/io/IOException;
    :catch_e2
    move-exception v4

    .line 145
    .restart local v4       #ex:Ljava/io/IOException;
    sget-object v12, Lorg/snmp4j/security/SecurityProtocols;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v4}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_b1

    .line 150
    .end local v4           #ex:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #props:Ljava/util/Properties;
    .end local v9           #secProtocols:Ljava/lang/String;
    :cond_e9
    new-instance v11, Lorg/snmp4j/security/AuthMD5;

    invoke-direct {v11}, Lorg/snmp4j/security/AuthMD5;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V

    .line 151
    new-instance v11, Lorg/snmp4j/security/AuthSHA;

    invoke-direct {v11}, Lorg/snmp4j/security/AuthSHA;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V

    .line 152
    new-instance v11, Lorg/snmp4j/security/PrivDES;

    invoke-direct {v11}, Lorg/snmp4j/security/PrivDES;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 153
    new-instance v11, Lorg/snmp4j/security/PrivAES128;

    invoke-direct {v11}, Lorg/snmp4j/security/PrivAES128;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 154
    new-instance v11, Lorg/snmp4j/security/PrivAES192;

    invoke-direct {v11}, Lorg/snmp4j/security/PrivAES192;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V

    .line 155
    new-instance v11, Lorg/snmp4j/security/PrivAES256;

    invoke-direct {v11}, Lorg/snmp4j/security/PrivAES256;-><init>()V

    invoke-virtual {p0, v11}, Lorg/snmp4j/security/SecurityProtocols;->addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V
    :try_end_119
    .catchall {:try_start_dc .. :try_end_119} :catchall_40

    goto :goto_d9
.end method

.method public declared-synchronized addPrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V
    .registers 4
    .parameter "priv"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/PrivacyProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 213
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/PrivacyProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {p1}, Lorg/snmp4j/security/PrivacyProtocol;->getDecryptParamsLength()I

    move-result v0

    iget v1, p0, Lorg/snmp4j/security/SecurityProtocols;->maxPrivDecryptParamsLength:I

    if-le v0, v1, :cond_24

    .line 215
    invoke-interface {p1}, Lorg/snmp4j/security/PrivacyProtocol;->getDecryptParamsLength()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxPrivDecryptParamsLength:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 218
    :cond_24
    monitor-exit p0

    return-void

    .line 212
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthenticationProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/AuthenticationProtocol;
    .registers 3
    .parameter "id"

    .prologue
    .line 187
    if-nez p1, :cond_4

    .line 188
    const/4 v0, 0x0

    .line 190
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/AuthenticationProtocol;

    goto :goto_3
.end method

.method public getMaxAuthDigestLength()I
    .registers 2

    .prologue
    .line 332
    iget v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxAuthDigestLength:I

    return v0
.end method

.method public getMaxPrivDecryptParamsLength()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lorg/snmp4j/security/SecurityProtocols;->maxPrivDecryptParamsLength:I

    return v0
.end method

.method public getPrivacyProtocol(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/security/PrivacyProtocol;
    .registers 3
    .parameter "id"

    .prologue
    .line 230
    if-nez p1, :cond_4

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/PrivacyProtocol;

    goto :goto_3
.end method

.method public passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B
    .registers 13
    .parameter "privProtocolID"
    .parameter "authProtocolID"
    .parameter "passwordString"
    .parameter "engineID"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 293
    iget-object v5, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-virtual {v5, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/AuthenticationProtocol;

    .line 295
    .local v0, authProtocol:Lorg/snmp4j/security/AuthenticationProtocol;
    if-nez v0, :cond_d

    .line 320
    :cond_c
    :goto_c
    return-object v4

    .line 298
    :cond_d
    iget-object v5, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/security/PrivacyProtocol;

    .line 300
    .local v3, privProtocol:Lorg/snmp4j/security/PrivacyProtocol;
    if-eqz v3, :cond_c

    .line 303
    invoke-interface {v0, p3, p4}, Lorg/snmp4j/security/AuthenticationProtocol;->passwordToKey(Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v2

    .line 305
    .local v2, key:[B
    if-eqz v2, :cond_c

    .line 308
    array-length v5, v2

    invoke-interface {v3}, Lorg/snmp4j/security/PrivacyProtocol;->getMinKeyLength()I

    move-result v6

    if-lt v5, v6, :cond_3b

    .line 309
    array-length v5, v2

    invoke-interface {v3}, Lorg/snmp4j/security/PrivacyProtocol;->getMaxKeyLength()I

    move-result v6

    if-le v5, v6, :cond_39

    .line 311
    invoke-interface {v3}, Lorg/snmp4j/security/PrivacyProtocol;->getMaxKeyLength()I

    move-result v5

    new-array v4, v5, [B

    .line 312
    .local v4, truncatedKey:[B
    invoke-interface {v3}, Lorg/snmp4j/security/PrivacyProtocol;->getMaxKeyLength()I

    move-result v5

    invoke-static {v2, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .end local v4           #truncatedKey:[B
    :cond_39
    move-object v4, v2

    .line 315
    goto :goto_c

    .line 318
    :cond_3b
    invoke-interface {v3, v2, p3, p4, v0}, Lorg/snmp4j/security/PrivacyProtocol;->extendShortKey([BLorg/snmp4j/smi/OctetString;[BLorg/snmp4j/security/AuthenticationProtocol;)[B

    move-result-object v1

    .local v1, extKey:[B
    move-object v4, v1

    .line 320
    goto :goto_c
.end method

.method public passwordToKey(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OctetString;[B)[B
    .registers 6
    .parameter "authProtocolID"
    .parameter "passwordString"
    .parameter "engineID"

    .prologue
    .line 264
    iget-object v1, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/security/AuthenticationProtocol;

    .line 266
    .local v0, protocol:Lorg/snmp4j/security/AuthenticationProtocol;
    if-nez v0, :cond_c

    .line 267
    const/4 v1, 0x0

    .line 269
    :goto_b
    return-object v1

    :cond_c
    invoke-interface {v0, p2, p3}, Lorg/snmp4j/security/AuthenticationProtocol;->passwordToKey(Lorg/snmp4j/smi/OctetString;[B)[B

    move-result-object v1

    goto :goto_b
.end method

.method public removeAuthenticationProtocol(Lorg/snmp4j/security/AuthenticationProtocol;)V
    .registers 4
    .parameter "auth"

    .prologue
    .line 199
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->authProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/AuthenticationProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public removePrivacyProtocol(Lorg/snmp4j/security/PrivacyProtocol;)V
    .registers 4
    .parameter "priv"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/snmp4j/security/SecurityProtocols;->privProtocols:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/snmp4j/security/PrivacyProtocol;->getID()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public truncateKey([BI)[B
    .registers 6
    .parameter "key"
    .parameter "maxKeyLength"

    .prologue
    const/4 v2, 0x0

    .line 359
    array-length v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v0, v1, [B

    .line 360
    .local v0, truncatedNewKey:[B
    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    return-object v0
.end method
