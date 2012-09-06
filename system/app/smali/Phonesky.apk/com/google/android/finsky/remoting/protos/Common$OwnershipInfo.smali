.class public final Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnershipInfo"
.end annotation


# instance fields
.field private autoRenewing_:Z

.field private cachedSize:I

.field private hasAutoRenewing:Z

.field private hasInitiationTimestampMsec:Z

.field private hasPostDeliveryRefundWindowMsec:Z

.field private hasRefundTimeoutTimestampMsec:Z

.field private hasValidUntilTimestampMsec:Z

.field private initiationTimestampMsec_:J

.field private postDeliveryRefundWindowMsec_:J

.field private refundTimeoutTimestampMsec_:J

.field private validUntilTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 2332
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2337
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    .line 2354
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    .line 2371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    .line 2388
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    .line 2405
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    .line 2453
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    .line 2332
    return-void
.end method


# virtual methods
.method public getAutoRenewing()Z
    .registers 2

    .prologue
    .line 2372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2456
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 2458
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getSerializedSize()I

    .line 2460
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    return v0
.end method

.method public getInitiationTimestampMsec()J
    .registers 3

    .prologue
    .line 2338
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    return-wide v0
.end method

.method public getPostDeliveryRefundWindowMsec()J
    .registers 3

    .prologue
    .line 2406
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    return-wide v0
.end method

.method public getRefundTimeoutTimestampMsec()J
    .registers 3

    .prologue
    .line 2389
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2465
    const/4 v0, 0x0

    .line 2466
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2467
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getInitiationTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2470
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2471
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getValidUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2474
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2475
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getAutoRenewing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2478
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2479
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getRefundTimeoutTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2482
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2483
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2486
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    .line 2487
    return v0
.end method

.method public getValidUntilTimestampMsec()J
    .registers 3

    .prologue
    .line 2355
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    return-wide v0
.end method

.method public hasAutoRenewing()Z
    .registers 2

    .prologue
    .line 2373
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing:Z

    return v0
.end method

.method public hasInitiationTimestampMsec()Z
    .registers 2

    .prologue
    .line 2339
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec:Z

    return v0
.end method

.method public hasPostDeliveryRefundWindowMsec()Z
    .registers 2

    .prologue
    .line 2407
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    return v0
.end method

.method public hasRefundTimeoutTimestampMsec()Z
    .registers 2

    .prologue
    .line 2390
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    return v0
.end method

.method public hasValidUntilTimestampMsec()Z
    .registers 2

    .prologue
    .line 2356
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2495
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2496
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2500
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2501
    :sswitch_d
    return-object p0

    .line 2506
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2510
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2514
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2518
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2522
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2496
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 2329
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 2375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing:Z

    .line 2376
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    .line 2377
    return-object p0
.end method

.method public setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec:Z

    .line 2342
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    .line 2343
    return-object p0
.end method

.method public setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    .line 2410
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    .line 2411
    return-object p0
.end method

.method public setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    .line 2393
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    .line 2394
    return-object p0
.end method

.method public setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .registers 4
    .parameter "value"

    .prologue
    .line 2358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    .line 2359
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    .line 2360
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
    .line 2436
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2437
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getInitiationTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2439
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2440
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getValidUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2442
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2443
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getAutoRenewing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2445
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2446
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getRefundTimeoutTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2448
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2449
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2451
    :cond_46
    return-void
.end method
