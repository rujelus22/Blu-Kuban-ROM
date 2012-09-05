.class Lorg/snmp4j/Snmp$AsyncRequestKey;
.super Ljava/lang/Object;
.source "Snmp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncRequestKey"
.end annotation


# instance fields
.field private listener:Lorg/snmp4j/event/ResponseListener;

.field private request:Lorg/snmp4j/PDU;


# direct methods
.method public constructor <init>(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V
    .registers 3
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 1719
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    iput-object p1, p0, Lorg/snmp4j/Snmp$AsyncRequestKey;->request:Lorg/snmp4j/PDU;

    .line 1721
    iput-object p2, p0, Lorg/snmp4j/Snmp$AsyncRequestKey;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1722
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 1732
    instance-of v2, p1, Lorg/snmp4j/Snmp$AsyncRequestKey;

    if-eqz v2, :cond_1d

    move-object v0, p1

    .line 1733
    check-cast v0, Lorg/snmp4j/Snmp$AsyncRequestKey;

    .line 1734
    .local v0, other:Lorg/snmp4j/Snmp$AsyncRequestKey;
    iget-object v2, p0, Lorg/snmp4j/Snmp$AsyncRequestKey;->request:Lorg/snmp4j/PDU;

    iget-object v3, v0, Lorg/snmp4j/Snmp$AsyncRequestKey;->request:Lorg/snmp4j/PDU;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lorg/snmp4j/Snmp$AsyncRequestKey;->listener:Lorg/snmp4j/event/ResponseListener;

    iget-object v3, v0, Lorg/snmp4j/Snmp$AsyncRequestKey;->listener:Lorg/snmp4j/event/ResponseListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 1736
    .end local v0           #other:Lorg/snmp4j/Snmp$AsyncRequestKey;
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1740
    iget-object v0, p0, Lorg/snmp4j/Snmp$AsyncRequestKey;->request:Lorg/snmp4j/PDU;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
