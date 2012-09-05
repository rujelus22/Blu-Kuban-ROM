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

.field private hasValidUntilTimestampMsec:Z

.field private initiationTimestampMsec_:J

.field private validUntilTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 678
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 683
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 700
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 756
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 678
    return-void
.end method


# virtual methods
.method public getAutoRenewing()Z
    .registers 2

    .prologue
    .line 718
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 758
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    if-gez v0, :cond_7

    .line 760
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getSerializedSize()I

    .line 762
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    return v0
.end method

.method public getInitiationTimestampMsec()J
    .registers 3

    .prologue
    .line 684
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 768
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 772
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 776
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 779
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->cachedSize:I

    .line 780
    return v0
.end method

.method public getValidUntilTimestampMsec()J
    .registers 3

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    return-wide v0
.end method

.method public hasAutoRenewing()Z
    .registers 2

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    return v0
.end method

.method public hasInitiationTimestampMsec()Z
    .registers 2

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    return v0
.end method

.method public hasValidUntilTimestampMsec()Z
    .registers 2

    .prologue
    .line 702
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
    .line 787
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 788
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 792
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    :sswitch_d
    return-object p0

    .line 798
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 802
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 806
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    goto :goto_0

    .line 788
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
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
    .line 676
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 3
    .parameter "value"

    .prologue
    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing:Z

    .line 722
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->autoRenewing_:Z

    .line 723
    return-object p0
.end method

.method public setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec:Z

    .line 688
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->initiationTimestampMsec_:J

    .line 689
    return-object p0
.end method

.method public setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    .registers 4
    .parameter "value"

    .prologue
    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec:Z

    .line 705
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->validUntilTimestampMsec_:J

    .line 706
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
    .line 745
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasInitiationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 746
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 748
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasValidUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 749
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 751
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 752
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 754
    :cond_2a
    return-void
.end method
