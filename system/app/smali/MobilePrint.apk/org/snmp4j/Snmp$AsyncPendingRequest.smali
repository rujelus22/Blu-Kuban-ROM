.class Lorg/snmp4j/Snmp$AsyncPendingRequest;
.super Lorg/snmp4j/Snmp$PendingRequest;
.source "Snmp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncPendingRequest"
.end annotation


# instance fields
.field private final this$0:Lorg/snmp4j/Snmp;


# direct methods
.method public constructor <init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/event/ResponseListener;Ljava/lang/Object;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)V
    .registers 7
    .parameter
    .parameter "listener"
    .parameter "userObject"
    .parameter "pdu"
    .parameter "target"
    .parameter "transport"

    .prologue
    .line 1705
    iput-object p1, p0, Lorg/snmp4j/Snmp$AsyncPendingRequest;->this$0:Lorg/snmp4j/Snmp;

    .line 1706
    invoke-direct/range {p0 .. p6}, Lorg/snmp4j/Snmp$PendingRequest;-><init>(Lorg/snmp4j/Snmp;Lorg/snmp4j/event/ResponseListener;Ljava/lang/Object;Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)V

    .line 1707
    return-void
.end method


# virtual methods
.method protected registerRequest(Lorg/snmp4j/mp/PduHandle;)V
    .registers 5
    .parameter "handle"

    .prologue
    .line 1710
    new-instance v0, Lorg/snmp4j/Snmp$AsyncRequestKey;

    iget-object v1, p0, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    iget-object v2, p0, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/Snmp$AsyncRequestKey;-><init>(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 1711
    .local v0, key:Lorg/snmp4j/Snmp$AsyncRequestKey;
    iget-object v1, p0, Lorg/snmp4j/Snmp$AsyncPendingRequest;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v1}, Lorg/snmp4j/Snmp;->access$1000(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    return-void
.end method
