.class public Lorg/snmp4j/transport/TransportMappings;
.super Ljava/lang/Object;
.source "TransportMappings.java"


# static fields
.field public static final TRANSPORT_MAPPINGS:Ljava/lang/String; = "org.snmp4j.transportMappings"

.field private static final TRANSPORT_MAPPINGS_DEFAULT:Ljava/lang/String; = "transports.properties"

.field static class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

.field static class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

.field static class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

.field private static instance:Lorg/snmp4j/transport/TransportMappings;

.field private static final logger:Lorg/snmp4j/log/LogAdapter;


# instance fields
.field private transportMappings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "org.snmp4j.transport.TransportMappings"

    invoke-static {v0}, Lorg/snmp4j/transport/TransportMappings;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/transport/TransportMappings;->instance:Lorg/snmp4j/transport/TransportMappings;

    return-void

    .line 45
    :cond_16
    sget-object v0, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    goto :goto_c
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/transport/TransportMappings;->transportMappings:Ljava/util/Hashtable;

    .line 56
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
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

.method public static getInstance()Lorg/snmp4j/transport/TransportMappings;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lorg/snmp4j/transport/TransportMappings;->instance:Lorg/snmp4j/transport/TransportMappings;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lorg/snmp4j/transport/TransportMappings;

    invoke-direct {v0}, Lorg/snmp4j/transport/TransportMappings;-><init>()V

    sput-object v0, Lorg/snmp4j/transport/TransportMappings;->instance:Lorg/snmp4j/transport/TransportMappings;

    .line 67
    :cond_b
    sget-object v0, Lorg/snmp4j/transport/TransportMappings;->instance:Lorg/snmp4j/transport/TransportMappings;

    return-object v0
.end method


# virtual methods
.method public createTransportMapping(Lorg/snmp4j/smi/Address;)Lorg/snmp4j/TransportMapping;
    .registers 12
    .parameter "transportAddress"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    iget-object v5, p0, Lorg/snmp4j/transport/TransportMappings;->transportMappings:Ljava/util/Hashtable;

    if-nez v5, :cond_a

    .line 88
    invoke-virtual {p0}, Lorg/snmp4j/transport/TransportMappings;->registerTransportMappings()V

    .line 90
    :cond_a
    iget-object v5, p0, Lorg/snmp4j/transport/TransportMappings;->transportMappings:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 92
    .local v0, c:Ljava/lang/Class;
    if-nez v0, :cond_1e

    move-object v5, v6

    .line 115
    :goto_1d
    return-object v5

    .line 95
    :cond_1e
    new-array v4, v9, [Ljava/lang/Class;

    .line 96
    .local v4, params:[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, constructor:Ljava/lang/reflect/Constructor;
    :try_start_27
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 100
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/snmp4j/TransportMapping;
    :try_end_37
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_37} :catch_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_37} :catch_53

    goto :goto_1d

    .line 103
    :catch_38
    move-exception v3

    .line 104
    .local v3, ite:Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_44

    .line 105
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 107
    :cond_44
    sget-object v5, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 108
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 110
    .end local v3           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_53
    move-exception v2

    .line 111
    .local v2, ex:Ljava/lang/Exception;
    sget-object v5, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_5f
    sget-object v5, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v5, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    move-object v5, v6

    .line 115
    goto :goto_1d
.end method

.method protected declared-synchronized registerTransportMappings()V
    .registers 16

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v12

    if-eqz v12, :cond_c1

    .line 121
    const-string v12, "org.snmp4j.transportMappings"

    const-string v13, "transports.properties"

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, transports:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    if-nez v12, :cond_43

    const-string v12, "org.snmp4j.transport.TransportMappings"

    invoke-static {v12}, Lorg/snmp4j/transport/TransportMappings;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    :goto_1b
    invoke-virtual {v12, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 124
    .local v7, is:Ljava/io/InputStream;
    if-nez v7, :cond_46

    .line 125
    new-instance v12, Ljava/lang/InternalError;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Could not read \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "\' from classpath!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_40

    .line 120
    .end local v7           #is:Ljava/io/InputStream;
    .end local v10           #transports:Ljava/lang/String;
    :catchall_40
    move-exception v12

    monitor-exit p0

    throw v12

    .line 123
    .restart local v10       #transports:Ljava/lang/String;
    :cond_43
    :try_start_43
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$TransportMappings:Ljava/lang/Class;

    goto :goto_1b

    .line 128
    .restart local v7       #is:Ljava/io/InputStream;
    :cond_46
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_40

    .line 130
    .local v8, props:Ljava/util/Properties;
    :try_start_4b
    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 131
    new-instance v9, Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/Hashtable;-><init>(I)V

    .line 132
    .local v9, t:Ljava/util/Hashtable;
    invoke-virtual {v8}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, en:Ljava/util/Enumeration;
    :goto_5b
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 133
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, addressClassName:Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6a} :catch_7a

    move-result-object v2

    .line 136
    .local v2, className:Ljava/lang/String;
    :try_start_6b
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 137
    .local v1, c:Ljava/lang/Class;
    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6b .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_72} :catch_7a

    goto :goto_5b

    .line 139
    .end local v1           #c:Ljava/lang/Class;
    :catch_73
    move-exception v3

    .line 140
    .local v3, cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_74
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_7a

    goto :goto_5b

    .line 146
    .end local v0           #addressClassName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v9           #t:Ljava/util/Hashtable;
    :catch_7a
    move-exception v6

    .line 147
    .local v6, iox:Ljava/io/IOException;
    :try_start_7b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Could not read \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\': "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, txt:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v11}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 150
    new-instance v12, Ljava/lang/InternalError;

    invoke-direct {v12, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_a7
    .catchall {:try_start_7b .. :try_end_a7} :catchall_a7

    .line 153
    .end local v6           #iox:Ljava/io/IOException;
    .end local v11           #txt:Ljava/lang/String;
    :catchall_a7
    move-exception v12

    .line 154
    :try_start_a8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_40
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ba

    .line 158
    :goto_ab
    :try_start_ab
    throw v12
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_40

    .line 144
    .restart local v4       #en:Ljava/util/Enumeration;
    .restart local v9       #t:Ljava/util/Hashtable;
    :cond_ac
    :try_start_ac
    iput-object v9, p0, Lorg/snmp4j/transport/TransportMappings;->transportMappings:Ljava/util/Hashtable;
    :try_end_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_a7
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ae} :catch_7a

    .line 154
    :try_start_ae
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_40
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b3

    .line 167
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #props:Ljava/util/Properties;
    .end local v10           #transports:Ljava/lang/String;
    :goto_b1
    monitor-exit p0

    return-void

    .line 156
    .restart local v4       #en:Ljava/util/Enumeration;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #props:Ljava/util/Properties;
    .restart local v10       #transports:Ljava/lang/String;
    :catch_b3
    move-exception v5

    .line 157
    .local v5, ex:Ljava/io/IOException;
    :try_start_b4
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_b1

    .line 156
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v5           #ex:Ljava/io/IOException;
    .end local v9           #t:Ljava/util/Hashtable;
    :catch_ba
    move-exception v5

    .line 157
    .restart local v5       #ex:Ljava/io/IOException;
    sget-object v13, Lorg/snmp4j/transport/TransportMappings;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v13, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_ab

    .line 162
    .end local v5           #ex:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #props:Ljava/util/Properties;
    .end local v10           #transports:Ljava/lang/String;
    :cond_c1
    new-instance v9, Ljava/util/Hashtable;

    const/4 v12, 0x2

    invoke-direct {v9, v12}, Ljava/util/Hashtable;-><init>(I)V

    .line 163
    .restart local v9       #t:Ljava/util/Hashtable;
    const-string v13, "org.snmp4j.smi.UdpAddress"

    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    if-nez v12, :cond_ec

    const-string v12, "org.snmp4j.transport.DefaultUdpTransportMapping"

    invoke-static {v12}, Lorg/snmp4j/transport/TransportMappings;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    :goto_d5
    invoke-virtual {v9, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v13, "org.snmp4j.smi.TcpAddress"

    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

    if-nez v12, :cond_ef

    const-string v12, "org.snmp4j.transport.DefaultTcpTransportMapping"

    invoke-static {v12}, Lorg/snmp4j/transport/TransportMappings;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;

    :goto_e6
    invoke-virtual {v9, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iput-object v9, p0, Lorg/snmp4j/transport/TransportMappings;->transportMappings:Ljava/util/Hashtable;

    goto :goto_b1

    .line 163
    :cond_ec
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultUdpTransportMapping:Ljava/lang/Class;

    goto :goto_d5

    .line 164
    :cond_ef
    sget-object v12, Lorg/snmp4j/transport/TransportMappings;->class$org$snmp4j$transport$DefaultTcpTransportMapping:Ljava/lang/Class;
    :try_end_f1
    .catchall {:try_start_b4 .. :try_end_f1} :catchall_40

    goto :goto_e6
.end method
