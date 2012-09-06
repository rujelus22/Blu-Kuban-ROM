.class public final Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimePeriod"
.end annotation


# instance fields
.field private cachedSize:I

.field private count_:I

.field private hasCount:Z

.field private hasUnit:Z

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1521
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1536
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    .line 1553
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    .line 1589
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    .line 1521
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1592
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    if-gez v0, :cond_7

    .line 1594
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getSerializedSize()I

    .line 1596
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1554
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1603
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getUnit()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1606
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1607
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1610
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->cachedSize:I

    .line 1611
    return v0
.end method

.method public getUnit()I
    .registers 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    return v0
.end method

.method public hasCount()Z
    .registers 2

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount:Z

    return v0
.end method

.method public hasUnit()Z
    .registers 2

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1620
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1624
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1625
    :sswitch_d
    return-object p0

    .line 1630
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->setUnit(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    goto :goto_0

    .line 1634
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->setCount(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    goto :goto_0

    .line 1620
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 1518
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .registers 3
    .parameter "value"

    .prologue
    .line 1557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount:Z

    .line 1558
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->count_:I

    .line 1559
    return-object p0
.end method

.method public setUnit(I)Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;
    .registers 3
    .parameter "value"

    .prologue
    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit:Z

    .line 1541
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->unit_:I

    .line 1542
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
    .line 1581
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasUnit()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1582
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getUnit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1584
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1585
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$TimePeriod;->getCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1587
    :cond_1c
    return-void
.end method
