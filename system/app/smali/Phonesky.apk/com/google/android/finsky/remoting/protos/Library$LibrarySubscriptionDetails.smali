.class public final Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibrarySubscriptionDetails"
.end annotation


# instance fields
.field private autoRenewing_:Z

.field private cachedSize:I

.field private hasAutoRenewing:Z

.field private hasInitiationTimestampMsec:Z

.field private hasTrialUntilTimestampMsec:Z

.field private hasValidUntilTimestampMsec:Z

.field private initiationTimestampMsec_:J

.field private trialUntilTimestampMsec_:J

.field private validUntilTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 694
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 699
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 716
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 750
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    .line 794
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 694
    return-void
.end method


# virtual methods
.method public getAutoRenewing()Z
    .registers 2

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 797
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 799
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getSerializedSize()I

    .line 801
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    return v0
.end method

.method public getInitiationTimestampMsec()J
    .registers 3

    .prologue
    .line 700
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 808
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 811
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 812
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 815
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 816
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 819
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 820
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getTrialUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 824
    return v0
.end method

.method public getTrialUntilTimestampMsec()J
    .registers 3

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    return-wide v0
.end method

.method public getValidUntilTimestampMsec()J
    .registers 3

    .prologue
    .line 717
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    return-wide v0
.end method

.method public hasAutoRenewing()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    return v0
.end method

.method public hasInitiationTimestampMsec()Z
    .registers 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    return v0
.end method

.method public hasTrialUntilTimestampMsec()Z
    .registers 2

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec:Z

    return v0
.end method

.method public hasValidUntilTimestampMsec()Z
    .registers 2

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 833
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 837
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    :sswitch_d
    return-object p0

    .line 843
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 847
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 851
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 855
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setTrialUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 833
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 691
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 737
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    .line 738
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 739
    return-object p0
.end method

.method public setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    .line 704
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 705
    return-object p0
.end method

.method public setTrialUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec:Z

    .line 755
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->trialUntilTimestampMsec_:J

    .line 756
    return-object p0
.end method

.method public setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec:Z

    .line 721
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 722
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
    .line 780
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 783
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 784
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 786
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 787
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 789
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 790
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getTrialUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 792
    :cond_38
    return-void
.end method
