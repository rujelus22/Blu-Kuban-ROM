.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RateCommentRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private commentRating_:I

.field private creatorId_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasCommentRating:Z

.field private hasCreatorId:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11075
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11085
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 11102
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    .line 11119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    .line 11161
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    .line 11075
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11086
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 11163
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 11165
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getSerializedSize()I

    .line 11167
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    return v0
.end method

.method public getCommentRating()I
    .registers 2

    .prologue
    .line 11121
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    return v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11103
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 11171
    const/4 v0, 0x0

    .line 11172
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11173
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11176
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 11177
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11180
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 11181
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCommentRating()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11184
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->cachedSize:I

    .line 11185
    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 11087
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasCommentRating()Z
    .registers 2

    .prologue
    .line 11120
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating:Z

    return v0
.end method

.method public hasCreatorId()Z
    .registers 2

    .prologue
    .line 11104
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11193
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 11197
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11198
    :sswitch_d
    return-object p0

    .line 11203
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11207
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11211
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->setCommentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    goto :goto_0

    .line 11193
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 11073
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId:Z

    .line 11090
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 11091
    return-object p0
.end method

.method public setCommentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating:Z

    .line 11124
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->commentRating_:I

    .line 11125
    return-object p0
.end method

.method public setCreatorId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId:Z

    .line 11107
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->creatorId_:Ljava/lang/String;

    .line 11108
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
    .line 11150
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11151
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11153
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCreatorId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 11154
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCreatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11156
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->hasCommentRating()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 11157
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;->getCommentRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 11159
    :cond_2a
    return-void
.end method
