.class public Lorg/snmp4j/smi/UdpAddress;
.super Lorg/snmp4j/smi/TransportIpAddress;
.source "UdpAddress.java"


# static fields
.field static final serialVersionUID:J = -0x3cef058c7c503babL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/UdpAddress;->setPort(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/UdpAddress;->parseAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_f
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "inetAddress"
    .parameter "port"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/snmp4j/smi/TransportIpAddress;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/UdpAddress;->setInetAddress(Ljava/net/InetAddress;)V

    .line 39
    invoke-virtual {p0, p2}, Lorg/snmp4j/smi/UdpAddress;->setPort(I)V

    .line 40
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/snmp4j/smi/Address;
    .registers 3
    .parameter "address"

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lorg/snmp4j/smi/UdpAddress;

    invoke-direct {v0}, Lorg/snmp4j/smi/UdpAddress;-><init>()V

    .line 55
    .local v0, a:Lorg/snmp4j/smi/UdpAddress;
    invoke-virtual {v0, p0}, Lorg/snmp4j/smi/UdpAddress;->parseAddress(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_c

    move-result v1

    if-eqz v1, :cond_d

    .line 61
    .end local v0           #a:Lorg/snmp4j/smi/UdpAddress;
    :goto_b
    return-object v0

    .line 59
    :catch_c
    move-exception v1

    .line 61
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 65
    instance-of v0, p1, Lorg/snmp4j/smi/UdpAddress;

    if-eqz v0, :cond_9

    .line 66
    invoke-super {p0, p1}, Lorg/snmp4j/smi/TransportIpAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
