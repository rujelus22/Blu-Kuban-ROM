.class public abstract Lorg/snmp4j/transport/UdpTransportMapping;
.super Lorg/snmp4j/transport/AbstractTransportMapping;
.source "UdpTransportMapping.java"


# static fields
.field static class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;


# instance fields
.field protected udpAddress:Lorg/snmp4j/smi/UdpAddress;


# direct methods
.method public constructor <init>(Lorg/snmp4j/smi/UdpAddress;)V
    .registers 2
    .parameter "udpAddress"

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/snmp4j/transport/AbstractTransportMapping;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    .line 45
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
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


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getAddress()Lorg/snmp4j/smi/UdpAddress;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    return-object v0
.end method

.method public getListenAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/snmp4j/transport/UdpTransportMapping;->udpAddress:Lorg/snmp4j/smi/UdpAddress;

    return-object v0
.end method

.method public getSupportedAddressClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lorg/snmp4j/transport/UdpTransportMapping;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "org.snmp4j.smi.UdpAddress"

    invoke-static {v0}, Lorg/snmp4j/transport/UdpTransportMapping;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/transport/UdpTransportMapping;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lorg/snmp4j/transport/UdpTransportMapping;->class$org$snmp4j$smi$UdpAddress:Ljava/lang/Class;

    goto :goto_c
.end method

.method public abstract listen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
