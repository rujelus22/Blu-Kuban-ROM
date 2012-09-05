.class public final Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Rev.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Rev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetReviewsResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMatchingCount:Z

.field private matchingCount_:J

.field private review_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1400
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    .line 1438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    .line 1476
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    .line 1400
    return-void
.end method


# virtual methods
.method public addReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 1421
    if-nez p1, :cond_8

    .line 1422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1424
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    .line 1427
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1428
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1478
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 1480
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getSerializedSize()I

    .line 1482
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    return v0
.end method

.method public getMatchingCount()J
    .registers 3

    .prologue
    .line 1439
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    return-wide v0
.end method

.method public getReviewList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->review_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1486
    const/4 v2, 0x0

    .line 1487
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 1488
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    .line 1491
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1492
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getMatchingCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1495
    :cond_2c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->cachedSize:I

    .line 1496
    return v2
.end method

.method public hasMatchingCount()Z
    .registers 2

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1503
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1504
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_22

    .line 1508
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1509
    :sswitch_d
    return-object p0

    .line 1514
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;-><init>()V

    .line 1515
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1516
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->addReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    goto :goto_0

    .line 1520
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->setMatchingCount(J)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    goto :goto_0

    .line 1504
    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1a
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
    .line 1398
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMatchingCount(J)Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;
    .registers 4
    .parameter "value"

    .prologue
    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount:Z

    .line 1443
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->matchingCount_:J

    .line 1444
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 1469
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_8

    .line 1471
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->hasMatchingCount()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1472
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getMatchingCount()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1474
    :cond_27
    return-void
.end method
