.class Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;
.super Ljava/lang/Object;
.source "MultiThreadedMessageDispatcher.java"

# interfaces
.implements Lorg/snmp4j/util/WorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/MultiThreadedMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageTask"
.end annotation


# instance fields
.field private incomingAddress:Lorg/snmp4j/smi/Address;

.field private sourceTransport:Lorg/snmp4j/TransportMapping;

.field private final this$0:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

.field private wholeMessage:Lorg/snmp4j/asn1/BERInputStream;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/MultiThreadedMessageDispatcher;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 5
    .parameter
    .parameter "sourceTransport"
    .parameter "incomingAddress"
    .parameter "wholeMessage"

    .prologue
    .line 202
    iput-object p1, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->this$0:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->sourceTransport:Lorg/snmp4j/TransportMapping;

    .line 204
    iput-object p3, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->incomingAddress:Lorg/snmp4j/smi/Address;

    .line 205
    iput-object p4, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->wholeMessage:Lorg/snmp4j/asn1/BERInputStream;

    .line 206
    return-void
.end method


# virtual methods
.method public interrupt()V
    .registers 1

    .prologue
    .line 219
    return-void
.end method

.method public join()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->this$0:Lorg/snmp4j/util/MultiThreadedMessageDispatcher;

    invoke-static {v0}, Lorg/snmp4j/util/MultiThreadedMessageDispatcher;->access$000(Lorg/snmp4j/util/MultiThreadedMessageDispatcher;)Lorg/snmp4j/MessageDispatcher;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->sourceTransport:Lorg/snmp4j/TransportMapping;

    iget-object v2, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->incomingAddress:Lorg/snmp4j/smi/Address;

    iget-object v3, p0, Lorg/snmp4j/util/MultiThreadedMessageDispatcher$MessageTask;->wholeMessage:Lorg/snmp4j/asn1/BERInputStream;

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/MessageDispatcher;->processMessage(Lorg/snmp4j/TransportMapping;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;)V

    .line 210
    return-void
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method
