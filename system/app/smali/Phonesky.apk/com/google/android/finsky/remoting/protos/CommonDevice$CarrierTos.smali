.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTos"
.end annotation


# instance fields
.field private cachedSize:I

.field private dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

.field private hasDcbTos:Z

.field private hasPiiTos:Z

.field private piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1625
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1630
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1650
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1688
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 1625
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1690
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    if-gez v0, :cond_7

    .line 1692
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getSerializedSize()I

    .line 1694
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    return v0
.end method

.method public getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 2

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1700
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1704
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1707
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 1708
    return v0
.end method

.method public hasDcbTos()Z
    .registers 2

    .prologue
    .line 1631
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    return v0
.end method

.method public hasPiiTos()Z
    .registers 2

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1715
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1716
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 1720
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1721
    :sswitch_d
    return-object p0

    .line 1726
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 1727
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1728
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 1732
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 1733
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1734
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 1716
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v0

    return-object v0
.end method

.method public setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1634
    if-nez p1, :cond_8

    .line 1635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1637
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    .line 1638
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1639
    return-object p0
.end method

.method public setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1654
    if-nez p1, :cond_8

    .line 1655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1657
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    .line 1658
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1659
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1680
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1681
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1683
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1684
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1686
    :cond_1c
    return-void
.end method
