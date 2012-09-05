.class public Lorg/snmp4j/smi/GenericAddress;
.super Lorg/snmp4j/smi/SMIAddress;
.source "GenericAddress.java"


# static fields
.field public static final ADDRESS_TYPES_PROPERTIES:Ljava/lang/String; = "org.snmp4j.addresses"

.field private static final ADDRESS_TYPES_PROPERTIES_DEFAULT:Ljava/lang/String; = "address.properties"

.field public static final TYPE_IP:Ljava/lang/String; = "ip"

.field public static final TYPE_TCP:Ljava/lang/String; = "tcp"

.field public static final TYPE_UDP:Ljava/lang/String; = "udp"

.field static class$org$snmp4j$smi$GenericAddress:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$IpAddress:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$Variable:Ljava/lang/Class; = null

.field private static knownAddressTypes:Ljava/util/Map; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field static final serialVersionUID:J = -0x54b0c534ed992ad7L


# instance fields
.field private address:Lorg/snmp4j/smi/SMIAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$GenericAddress:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "org.snmp4j.smi.GenericAddress"

    invoke-static {v0}, Lorg/snmp4j/smi/GenericAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$GenericAddress:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/smi/GenericAddress;->knownAddressTypes:Ljava/util/Map;

    return-void

    .line 62
    :cond_16
    sget-object v0, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$GenericAddress:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/SMIAddress;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/snmp4j/smi/SMIAddress;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    .line 72
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
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

.method public static parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;
    .registers 9
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 195
    sget-object v6, Lorg/snmp4j/smi/GenericAddress;->knownAddressTypes:Ljava/util/Map;

    if-nez v6, :cond_8

    .line 196
    invoke-static {}, Lorg/snmp4j/smi/GenericAddress;->registerAddressTypes()V

    .line 198
    :cond_8
    const-string v4, "udp"

    .line 199
    .local v4, type:Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 200
    .local v3, sep:I
    if-lez v3, :cond_1d

    .line 201
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 202
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 204
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 205
    sget-object v6, Lorg/snmp4j/smi/GenericAddress;->knownAddressTypes:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 206
    .local v1, c:Ljava/lang/Class;
    if-nez v1, :cond_4a

    .line 207
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Address type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " unknown"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Address;

    .line 211
    .local v0, addr:Lorg/snmp4j/smi/Address;
    invoke-interface {v0, p0}, Lorg/snmp4j/smi/Address;->parseAddress(Ljava/lang/String;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_59

    move-result v6

    if-eqz v6, :cond_57

    .line 219
    .end local v0           #addr:Lorg/snmp4j/smi/Address;
    :goto_56
    return-object v0

    .restart local v0       #addr:Lorg/snmp4j/smi/Address;
    :cond_57
    move-object v0, v5

    .line 214
    goto :goto_56

    .line 216
    .end local v0           #addr:Lorg/snmp4j/smi/Address;
    :catch_59
    move-exception v2

    .line 217
    .local v2, ex:Ljava/lang/Exception;
    sget-object v6, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v6, v2}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    move-object v0, v5

    .line 219
    goto :goto_56
.end method

.method private static declared-synchronized registerAddressTypes()V
    .registers 16

    .prologue
    .line 127
    const-class v13, Lorg/snmp4j/smi/GenericAddress;

    monitor-enter v13

    :try_start_3
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v12

    if-eqz v12, :cond_bf

    .line 128
    const-string v12, "org.snmp4j.addresses"

    const-string v14, "address.properties"

    invoke-static {v12, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, addresses:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    if-nez v12, :cond_45

    const-string v12, "org.snmp4j.smi.Variable"

    invoke-static {v12}, Lorg/snmp4j/smi/GenericAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    :goto_1d
    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 131
    .local v9, is:Ljava/io/InputStream;
    if-nez v9, :cond_48

    .line 132
    new-instance v12, Ljava/lang/InternalError;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Could not read \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\' from classpath!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_42

    .line 127
    .local v10, props:Ljava/util/Properties;
    :catchall_42
    move-exception v12

    monitor-exit v13

    throw v12

    .line 130
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #props:Ljava/util/Properties;
    :cond_45
    :try_start_45
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    goto :goto_1d

    .line 135
    .restart local v9       #is:Ljava/io/InputStream;
    :cond_48
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    .line 137
    .restart local v10       #props:Ljava/util/Properties;
    :try_start_4d
    invoke-virtual {v10, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 138
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 139
    .local v6, h:Ljava/util/Map;
    invoke-virtual {v10}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, en:Ljava/util/Enumeration;
    :goto_59
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 140
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, id:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_4d .. :try_end_68} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_68} :catch_78

    move-result-object v2

    .line 143
    .local v2, className:Ljava/lang/String;
    :try_start_69
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, c:Ljava/lang/Class;
    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_69 .. :try_end_70} :catch_71
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_70} :catch_78

    goto :goto_59

    .line 146
    .end local v1           #c:Ljava/lang/Class;
    :catch_71
    move-exception v3

    .line 147
    .local v3, cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_72
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v3}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_78

    goto :goto_59

    .line 152
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v6           #h:Ljava/util/Map;
    .end local v7           #id:Ljava/lang/String;
    :catch_78
    move-exception v8

    .line 153
    .local v8, iox:Ljava/io/IOException;
    :try_start_79
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Could not read \'"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v14, "\': "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, txt:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v11}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 155
    new-instance v12, Ljava/lang/InternalError;

    invoke-direct {v12, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_a5
    .catchall {:try_start_79 .. :try_end_a5} :catchall_a5

    .line 158
    .end local v8           #iox:Ljava/io/IOException;
    .end local v11           #txt:Ljava/lang/String;
    :catchall_a5
    move-exception v12

    .line 159
    :try_start_a6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_42
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b8

    .line 164
    :goto_a9
    :try_start_a9
    throw v12
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_42

    .line 150
    .restart local v4       #en:Ljava/util/Enumeration;
    .restart local v6       #h:Ljava/util/Map;
    :cond_aa
    :try_start_aa
    sput-object v6, Lorg/snmp4j/smi/GenericAddress;->knownAddressTypes:Ljava/util/Map;
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ac} :catch_78

    .line 159
    :try_start_ac
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_42
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b1

    .line 174
    .end local v0           #addresses:Ljava/lang/String;
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #props:Ljava/util/Properties;
    :goto_af
    monitor-exit v13

    return-void

    .line 161
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v4       #en:Ljava/util/Enumeration;
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #props:Ljava/util/Properties;
    :catch_b1
    move-exception v5

    .line 163
    .local v5, ex:Ljava/io/IOException;
    :try_start_b2
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_af

    .line 161
    .end local v4           #en:Ljava/util/Enumeration;
    .end local v5           #ex:Ljava/io/IOException;
    .end local v6           #h:Ljava/util/Map;
    :catch_b8
    move-exception v5

    .line 163
    .restart local v5       #ex:Ljava/io/IOException;
    sget-object v14, Lorg/snmp4j/smi/GenericAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v14, v5}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_a9

    .line 168
    .end local v0           #addresses:Ljava/lang/String;
    .end local v5           #ex:Ljava/io/IOException;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #props:Ljava/util/Properties;
    :cond_bf
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 169
    .restart local v6       #h:Ljava/util/Map;
    const-string v14, "udp"

    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    if-nez v12, :cond_fa

    const-string v12, "org.snmp4j.smi.UdpAddress"

    invoke-static {v12}, Lorg/snmp4j/smi/GenericAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    :goto_d2
    invoke-interface {v6, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v14, "tcp"

    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    if-nez v12, :cond_fd

    const-string v12, "org.snmp4j.smi.TcpAddress"

    invoke-static {v12}, Lorg/snmp4j/smi/GenericAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    :goto_e3
    invoke-interface {v6, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v14, "ip"

    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$IpAddress:Ljava/lang/Class;

    if-nez v12, :cond_100

    const-string v12, "org.snmp4j.smi.IpAddress"

    invoke-static {v12}, Lorg/snmp4j/smi/GenericAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$IpAddress:Ljava/lang/Class;

    :goto_f4
    invoke-interface {v6, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sput-object v6, Lorg/snmp4j/smi/GenericAddress;->knownAddressTypes:Ljava/util/Map;

    goto :goto_af

    .line 169
    :cond_fa
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    goto :goto_d2

    .line 170
    :cond_fd
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    goto :goto_e3

    .line 171
    :cond_100
    sget-object v12, Lorg/snmp4j/smi/GenericAddress;->class$org$snmp4j$smi$IpAddress:Ljava/lang/Class;
    :try_end_102
    .catchall {:try_start_b2 .. :try_end_102} :catchall_42

    goto :goto_f4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 239
    new-instance v0, Lorg/snmp4j/smi/GenericAddress;

    iget-object v1, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/GenericAddress;-><init>(Lorg/snmp4j/smi/SMIAddress;)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "o"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/SMIAddress;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/SMIAddress;->encodeBER(Ljava/io/OutputStream;)V

    .line 106
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 98
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/SMIAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    return-object v0
.end method

.method public getBERLength()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/SMIAddress;->getBERLength()I

    move-result v0

    return v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/SMIAddress;->getSyntax()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/SMIAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    if-nez v0, :cond_6

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/SMIAddress;->isValid()Z

    move-result v0

    goto :goto_5
.end method

.method public parseAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 230
    invoke-static {p1}, Lorg/snmp4j/smi/GenericAddress;->parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;

    move-result-object v0

    .line 231
    .local v0, addr:Lorg/snmp4j/smi/Address;
    instance-of v1, v0, Lorg/snmp4j/smi/SMIAddress;

    if-eqz v1, :cond_f

    .line 232
    check-cast v0, Lorg/snmp4j/smi/SMIAddress;

    .end local v0           #addr:Lorg/snmp4j/smi/Address;
    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/GenericAddress;->setAddress(Lorg/snmp4j/smi/SMIAddress;)V

    .line 233
    const/4 v1, 0x1

    .line 235
    :goto_e
    return v1

    .restart local v0       #addr:Lorg/snmp4j/smi/Address;
    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setAddress(Lorg/snmp4j/smi/SMIAddress;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    .line 114
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/GenericAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be parsed by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_2b
    return-void
.end method

.method public toInt()I
    .registers 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toLong()J
    .registers 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/snmp4j/smi/GenericAddress;->address:Lorg/snmp4j/smi/SMIAddress;

    invoke-virtual {v0}, Lorg/snmp4j/smi/SMIAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "impliedLength"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
