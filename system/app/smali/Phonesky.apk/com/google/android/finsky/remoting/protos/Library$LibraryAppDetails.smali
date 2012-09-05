.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryAppDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private certificateHash_:Ljava/lang/String;

.field private hasCertificateHash:Z

.field private hasPackageName:Z

.field private hasPostDeliveryRefundWindowMsec:Z

.field private hasRefundTimeoutTimestampMsec:Z

.field private packageName_:Ljava/lang/String;

.field private postDeliveryRefundWindowMsec_:J

.field private refundTimeoutTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 499
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->packageName_:Ljava/lang/String;

    .line 521
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    .line 538
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    .line 555
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    .line 499
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 600
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 602
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getSerializedSize()I

    .line 604
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    return v0
.end method

.method public getCertificateHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDeliveryRefundWindowMsec()J
    .registers 3

    .prologue
    .line 556
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    return-wide v0
.end method

.method public getRefundTimeoutTimestampMsec()J
    .registers 3

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 610
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 614
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getCertificateHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 618
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getRefundTimeoutTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 622
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    .line 626
    return v0
.end method

.method public hasCertificateHash()Z
    .registers 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash:Z

    return v0
.end method

.method public hasPackageName()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPackageName:Z

    return v0
.end method

.method public hasPostDeliveryRefundWindowMsec()Z
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    return v0
.end method

.method public hasRefundTimeoutTimestampMsec()Z
    .registers 2

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 634
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 638
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    :sswitch_d
    return-object p0

    .line 644
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 648
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 652
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 656
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 634
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
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
    .line 497
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash:Z

    .line 526
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    .line 527
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPackageName:Z

    .line 509
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->packageName_:Ljava/lang/String;

    .line 510
    return-object p0
.end method

.method public setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    .line 560
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    .line 561
    return-object p0
.end method

.method public setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    .line 543
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    .line 544
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
    .line 584
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 585
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 587
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 588
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getCertificateHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 590
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 591
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getRefundTimeoutTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 593
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 594
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 596
    :cond_38
    return-void
.end method
