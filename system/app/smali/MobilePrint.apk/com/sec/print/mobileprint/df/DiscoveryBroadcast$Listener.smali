.class Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;
.super Ljava/lang/Object;
.source "DiscoveryBroadcast.java"

# interfaces
.implements Lorg/snmp4j/event/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

.field private final version:I


# direct methods
.method public constructor <init>(Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;I)V
    .registers 3
    .parameter
    .parameter "version"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;->version:I

    .line 67
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 7
    .parameter "event"

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v1

    .line 72
    .local v1, response:Lorg/snmp4j/PDU;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v1}, Lorg/snmp4j/PDU;->getType()I

    move-result v2

    const/16 v3, -0x5e

    if-ne v2, v3, :cond_41

    invoke-virtual {v1}, Lorg/snmp4j/PDU;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v2

    sget-object v3, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->PRINTER_OID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 78
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/UdpAddress;

    .line 79
    .local v0, address:Lorg/snmp4j/smi/UdpAddress;
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;->this$0:Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;

    invoke-virtual {v0}, Lorg/snmp4j/smi/UdpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast$Listener;->version:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/print/mobileprint/df/DiscoveryBroadcast;->newDeviceFound(Ljava/lang/String;I)V

    .line 81
    .end local v0           #address:Lorg/snmp4j/smi/UdpAddress;
    :cond_41
    return-void
.end method
