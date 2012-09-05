.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBucket"
.end annotation


# instance fields
.field private bucketDurationMsec_:J

.field private bucketStartMsec_:J

.field private cachedSize:I

.field private hasBucketDurationMsec:Z

.field private hasBucketStartMsec:Z

.field private hasOperationCount:Z

.field private operationCount_:J

.field private statCounters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 622
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 627
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    .line 644
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    .line 660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    .line 694
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    .line 737
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    .line 622
    return-void
.end method


# virtual methods
.method public addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .registers 3
    .parameter "value"

    .prologue
    .line 677
    if-nez p1, :cond_8

    .line 678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 680
    :cond_8
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    .line 683
    :cond_17
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    return-object p0
.end method

.method public getBucketDurationMsec()J
    .registers 3

    .prologue
    .line 645
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    return-wide v0
.end method

.method public getBucketStartMsec()J
    .registers 3

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 739
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    if-gez v0, :cond_7

    .line 741
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getSerializedSize()I

    .line 743
    :cond_7
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    return v0
.end method

.method public getOperationCount()J
    .registers 3

    .prologue
    .line 695
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 747
    const/4 v2, 0x0

    .line 748
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 749
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketStartMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 752
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 753
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketDurationMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 756
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getStatCountersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 757
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 760
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 761
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getOperationCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 764
    :cond_4c
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->cachedSize:I

    .line 765
    return v2
.end method

.method public getStatCountersList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->statCounters_:Ljava/util/List;

    return-object v0
.end method

.method public hasBucketDurationMsec()Z
    .registers 2

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec:Z

    return v0
.end method

.method public hasBucketStartMsec()Z
    .registers 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec:Z

    return v0
.end method

.method public hasOperationCount()Z
    .registers 2

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount:Z

    return v0
.end method

.method public setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .registers 4
    .parameter "value"

    .prologue
    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec:Z

    .line 649
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketDurationMsec_:J

    .line 650
    return-object p0
.end method

.method public setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .registers 4
    .parameter "value"

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec:Z

    .line 632
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->bucketStartMsec_:J

    .line 633
    return-object p0
.end method

.method public setOperationCount(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    .registers 4
    .parameter "value"

    .prologue
    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount:Z

    .line 699
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->operationCount_:J

    .line 700
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
    .line 723
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketStartMsec()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 724
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketStartMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 726
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasBucketDurationMsec()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 727
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getBucketDurationMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 729
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getStatCountersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 730
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 732
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->hasOperationCount()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 733
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->getOperationCount()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 735
    :cond_43
    return-void
.end method
