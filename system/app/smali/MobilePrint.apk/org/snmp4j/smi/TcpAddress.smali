.class public Lorg/snmp4j/smi/TcpAddress;
.super Lorg/snmp4j/smi/TransportIpAddress;
.source "TcpAddress.java"


# static fields
.field static class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field static final serialVersionUID:J = 0x102c0c2218a534ecL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lorg/snmp4j/smi/TcpAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.snmp4j.smi.TcpAddress"

    invoke-static {v0}, Lorg/snmp4j/smi/TcpAddress;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/TcpAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/TcpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_13
    sget-object v0, Lorg/snmp4j/smi/TcpAddress;->class$org$snmp4j$smi$TcpAddress:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/TcpAddress;->setPort(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/TcpAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_f
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "inetAddress"
    .parameter "port"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/TcpAddress;->setInetAddress(Ljava/net/InetAddress;)V

    .line 46
    invoke-virtual {p0, p2}, Lorg/snmp4j/smi/TcpAddress;->setPort(I)V

    .line 47
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
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
    .registers 4
    .parameter "address"

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lorg/snmp4j/smi/TcpAddress;

    invoke-direct {v0}, Lorg/snmp4j/smi/TcpAddress;-><init>()V

    .line 63
    .local v0, a:Lorg/snmp4j/smi/TcpAddress;
    invoke-virtual {v0, p0}, Lorg/snmp4j/smi/TcpAddress;->parseAddress(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    move-result v2

    if-eqz v2, :cond_12

    .line 70
    .end local v0           #a:Lorg/snmp4j/smi/TcpAddress;
    :goto_b
    return-object v0

    .line 67
    :catch_c
    move-exception v1

    .line 68
    .local v1, ex:Ljava/lang/Exception;
    sget-object v2, Lorg/snmp4j/smi/TcpAddress;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v2, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 70
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 74
    instance-of v0, p1, Lorg/snmp4j/smi/TcpAddress;

    if-eqz v0, :cond_9

    .line 75
    invoke-super {p0, p1}, Lorg/snmp4j/smi/TransportIpAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
