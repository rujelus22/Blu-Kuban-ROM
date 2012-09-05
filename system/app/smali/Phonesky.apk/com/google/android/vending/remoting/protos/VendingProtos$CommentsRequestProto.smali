.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentsRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private assetReferrer_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasAssetReferrer:Z

.field private hasNumEntries:Z

.field private hasShouldReturnSelfComment:Z

.field private hasStartIndex:Z

.field private numEntries_:J

.field private shouldReturnSelfComment_:Z

.field private startIndex_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 4826
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    .line 4848
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    .line 4865
    iput-wide v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    .line 4882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    .line 4899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    .line 4947
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    .line 4826
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4832
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetReferrer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4900
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 4949
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 4951
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getSerializedSize()I

    .line 4953
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    return v0
.end method

.method public getNumEntries()J
    .registers 3

    .prologue
    .line 4866
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 4957
    const/4 v0, 0x0

    .line 4958
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4959
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4962
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4963
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getStartIndex()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4966
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4967
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getNumEntries()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4970
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4971
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getShouldReturnSelfComment()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4974
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 4975
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4978
    :cond_51
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->cachedSize:I

    .line 4979
    return v0
.end method

.method public getShouldReturnSelfComment()Z
    .registers 2

    .prologue
    .line 4883
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    return v0
.end method

.method public getStartIndex()J
    .registers 3

    .prologue
    .line 4849
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    return-wide v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 4833
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasAssetReferrer()Z
    .registers 2

    .prologue
    .line 4901
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer:Z

    return v0
.end method

.method public hasNumEntries()Z
    .registers 2

    .prologue
    .line 4867
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries:Z

    return v0
.end method

.method public hasShouldReturnSelfComment()Z
    .registers 2

    .prologue
    .line 4884
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment:Z

    return v0
.end method

.method public hasStartIndex()Z
    .registers 2

    .prologue
    .line 4850
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4986
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4987
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 4991
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4992
    :sswitch_d
    return-object p0

    .line 4997
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5001
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5005
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5009
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setShouldReturnSelfComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 5013
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    goto :goto_0

    .line 4987
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x2a -> :sswitch_2e
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
    .line 4824
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId:Z

    .line 4836
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetId_:Ljava/lang/String;

    .line 4837
    return-object p0
.end method

.method public setAssetReferrer(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer:Z

    .line 4904
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->assetReferrer_:Ljava/lang/String;

    .line 4905
    return-object p0
.end method

.method public setNumEntries(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries:Z

    .line 4870
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->numEntries_:J

    .line 4871
    return-object p0
.end method

.method public setShouldReturnSelfComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 4886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment:Z

    .line 4887
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->shouldReturnSelfComment_:Z

    .line 4888
    return-object p0
.end method

.method public setStartIndex(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 4852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex:Z

    .line 4853
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->startIndex_:J

    .line 4854
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
    .line 4930
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4931
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4933
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasStartIndex()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4934
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getStartIndex()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4936
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasNumEntries()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4937
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getNumEntries()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 4939
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasShouldReturnSelfComment()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4940
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getShouldReturnSelfComment()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4942
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->hasAssetReferrer()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4943
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;->getAssetReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4945
    :cond_46
    return-void
.end method
