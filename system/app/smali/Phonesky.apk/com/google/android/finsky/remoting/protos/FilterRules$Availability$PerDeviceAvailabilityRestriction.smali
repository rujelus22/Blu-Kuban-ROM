.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerDeviceAvailabilityRestriction"
.end annotation


# instance fields
.field private androidId_:J

.field private cachedSize:I

.field private channelId_:J

.field private deviceRestriction_:I

.field private hasAndroidId:Z

.field private hasChannelId:Z

.field private hasDeviceRestriction:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 551
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 556
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    .line 573
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    .line 590
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    .line 551
    return-void
.end method


# virtual methods
.method public getAndroidId()J
    .registers 3

    .prologue
    .line 557
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    if-gez v0, :cond_7

    .line 634
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getSerializedSize()I

    .line 636
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    return v0
.end method

.method public getChannelId()J
    .registers 3

    .prologue
    .line 591
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    return-wide v0
.end method

.method public getDeviceRestriction()I
    .registers 2

    .prologue
    .line 575
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 642
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getAndroidId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 645
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 646
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getDeviceRestriction()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 649
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 650
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getChannelId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 653
    :cond_34
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->cachedSize:I

    .line 654
    return v0
.end method

.method public hasAndroidId()Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    return v0
.end method

.method public hasChannelId()Z
    .registers 2

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    return v0
.end method

.method public hasDeviceRestriction()Z
    .registers 2

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 662
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 666
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    :sswitch_d
    return-object p0

    .line 672
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setAndroidId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 676
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setDeviceRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 680
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->setChannelId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    goto :goto_0

    .line 662
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x51 -> :sswitch_e
        0x58 -> :sswitch_16
        0x60 -> :sswitch_1e
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
    .line 549
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .registers 4
    .parameter "value"

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId:Z

    .line 561
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->androidId_:J

    .line 562
    return-object p0
.end method

.method public setChannelId(J)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .registers 4
    .parameter "value"

    .prologue
    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId:Z

    .line 595
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->channelId_:J

    .line 596
    return-object p0
.end method

.method public setDeviceRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    .registers 3
    .parameter "value"

    .prologue
    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction:Z

    .line 578
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->deviceRestriction_:I

    .line 579
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
    .line 619
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 620
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getAndroidId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 622
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasDeviceRestriction()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 623
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getDeviceRestriction()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 625
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->hasChannelId()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 626
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;->getChannelId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 628
    :cond_2d
    return-void
.end method
