.class Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;
.super Ljava/lang/Object;
.source "DeviceDetector.java"

# interfaces
.implements Lorg/snmp4j/event/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/DeviceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field private final address:Lorg/snmp4j/smi/Address;

.field private final allResponsesLatch:Ljava/util/concurrent/CountDownLatch;

.field private final results:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/snmp4j/smi/Address;Ljava/util/Collection;I)V
    .registers 5
    .parameter "address"
    .parameter
    .parameter "requestsNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/snmp4j/smi/Address;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, results:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->address:Lorg/snmp4j/smi/Address;

    .line 105
    iput-object p2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->results:Ljava/util/Collection;

    .line 106
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->allResponsesLatch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 116
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v0

    .line 117
    .local v0, response:Lorg/snmp4j/PDU;
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    .local v1, version:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->address:Lorg/snmp4j/smi/Address;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->getType()I

    move-result v2

    const/16 v3, -0x5e

    if-eq v2, v3, :cond_28

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->getType()I

    move-result v2

    const/16 v3, -0x58

    if-ne v2, v3, :cond_39

    .line 121
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_47

    .line 122
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->results:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->allResponsesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    :cond_39
    :goto_39
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/Snmp;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lorg/snmp4j/Snmp;->cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 133
    return-void

    .line 125
    :cond_47
    invoke-virtual {v0}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v0}, Lorg/snmp4j/PDU;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v2

    invoke-static {}, Lcom/sec/print/mobileprint/df/DeviceDetector;->access$000()Lorg/snmp4j/smi/OID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 127
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->results:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->allResponsesLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_39
.end method

.method public waitForResponses(J)V
    .registers 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/DeviceDetector$Listener;->allResponsesLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 143
    return-void
.end method
