.class public final Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreFetch"
.end annotation


# instance fields
.field private cachedSize:I

.field private etag_:Ljava/lang/String;

.field private hasEtag:Z

.field private hasResponse:Z

.field private hasSoftTtl:Z

.field private hasTtl:Z

.field private hasUrl:Z

.field private response_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private softTtl_:J

.field private ttl_:J

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1438
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    .line 1460
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    .line 1494
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    .line 1511
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    .line 1559
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    .line 1438
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1562
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    if-gez v0, :cond_7

    .line 1564
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSerializedSize()I

    .line 1566
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1573
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1577
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1581
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1584
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1585
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1588
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1589
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    .line 1593
    return v0
.end method

.method public getSoftTtl()J
    .registers 3

    .prologue
    .line 1512
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    return-wide v0
.end method

.method public getTtl()J
    .registers 3

    .prologue
    .line 1495
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEtag()Z
    .registers 2

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag:Z

    return v0
.end method

.method public hasResponse()Z
    .registers 2

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse:Z

    return v0
.end method

.method public hasSoftTtl()Z
    .registers 2

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl:Z

    return v0
.end method

.method public hasTtl()Z
    .registers 2

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 1445
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1601
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1602
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 1606
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1607
    :sswitch_d
    return-object p0

    .line 1612
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1616
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1620
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1624
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1628
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setSoftTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1602
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_26
        0x28 -> :sswitch_2e
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
    .line 1435
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    move-result-object v0

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 3
    .parameter "value"

    .prologue
    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag:Z

    .line 1482
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    .line 1483
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 3
    .parameter "value"

    .prologue
    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse:Z

    .line 1465
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1466
    return-object p0
.end method

.method public setSoftTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 4
    .parameter "value"

    .prologue
    .line 1515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl:Z

    .line 1516
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    .line 1517
    return-object p0
.end method

.method public setTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 4
    .parameter "value"

    .prologue
    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl:Z

    .line 1499
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    .line 1500
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .registers 3
    .parameter "value"

    .prologue
    .line 1447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl:Z

    .line 1448
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    .line 1449
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1543
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1545
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1546
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1548
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1549
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1551
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1552
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1554
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1555
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1557
    :cond_46
    return-void
.end method
