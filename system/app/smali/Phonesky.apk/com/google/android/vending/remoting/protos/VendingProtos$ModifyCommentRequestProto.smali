.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModifyCommentRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

.field private deleteComment_:Z

.field private flagAsset_:Z

.field private flagMessage_:Ljava/lang/String;

.field private flagType_:I

.field private hasAssetId:Z

.field private hasComment:Z

.field private hasDeleteComment:Z

.field private hasFlagAsset:Z

.field private hasFlagMessage:Z

.field private hasFlagType:Z

.field private hasNonFlagFlow:Z

.field private nonFlagFlow_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5208
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5221
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 5238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5258
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    .line 5275
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    .line 5292
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    .line 5309
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    .line 5326
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    .line 5382
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    .line 5208
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5222
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 5384
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 5386
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getSerializedSize()I

    .line 5388
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    return v0
.end method

.method public getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    .registers 2

    .prologue
    .line 5240
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    return-object v0
.end method

.method public getDeleteComment()Z
    .registers 2

    .prologue
    .line 5259
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    return v0
.end method

.method public getFlagAsset()Z
    .registers 2

    .prologue
    .line 5276
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    return v0
.end method

.method public getFlagMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlagType()I
    .registers 2

    .prologue
    .line 5294
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    return v0
.end method

.method public getNonFlagFlow()Z
    .registers 2

    .prologue
    .line 5327
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 5392
    const/4 v0, 0x0

    .line 5393
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5394
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5397
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5398
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5401
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 5402
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getDeleteComment()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5405
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 5406
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagAsset()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5409
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 5410
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5413
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 5414
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5417
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 5418
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getNonFlagFlow()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5421
    :cond_71
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->cachedSize:I

    .line 5422
    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 5223
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 5239
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment:Z

    return v0
.end method

.method public hasDeleteComment()Z
    .registers 2

    .prologue
    .line 5260
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment:Z

    return v0
.end method

.method public hasFlagAsset()Z
    .registers 2

    .prologue
    .line 5277
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset:Z

    return v0
.end method

.method public hasFlagMessage()Z
    .registers 2

    .prologue
    .line 5311
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage:Z

    return v0
.end method

.method public hasFlagType()Z
    .registers 2

    .prologue
    .line 5293
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType:Z

    return v0
.end method

.method public hasNonFlagFlow()Z
    .registers 2

    .prologue
    .line 5328
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5429
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5430
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 5434
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5435
    :sswitch_d
    return-object p0

    .line 5440
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5444
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;-><init>()V

    .line 5445
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 5446
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5450
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setDeleteComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5454
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5458
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5462
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5466
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setNonFlagFlow(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    goto :goto_0

    .line 5430
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_22
        0x20 -> :sswitch_2a
        0x28 -> :sswitch_32
        0x32 -> :sswitch_3a
        0x38 -> :sswitch_42
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
    .line 5206
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId:Z

    .line 5226
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->assetId_:Ljava/lang/String;

    .line 5227
    return-object p0
.end method

.method public setComment(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5242
    if-nez p1, :cond_8

    .line 5243
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5245
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment:Z

    .line 5246
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->comment_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    .line 5247
    return-object p0
.end method

.method public setDeleteComment(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment:Z

    .line 5263
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->deleteComment_:Z

    .line 5264
    return-object p0
.end method

.method public setFlagAsset(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset:Z

    .line 5280
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagAsset_:Z

    .line 5281
    return-object p0
.end method

.method public setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage:Z

    .line 5314
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagMessage_:Ljava/lang/String;

    .line 5315
    return-object p0
.end method

.method public setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType:Z

    .line 5297
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->flagType_:I

    .line 5298
    return-object p0
.end method

.method public setNonFlagFlow(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 5330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow:Z

    .line 5331
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->nonFlagFlow_:Z

    .line 5332
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
    .line 5359
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5360
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5362
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5363
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getComment()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCommentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 5365
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasDeleteComment()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 5366
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getDeleteComment()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5368
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagAsset()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5369
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagAsset()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5371
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagType()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5372
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5374
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasFlagMessage()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 5375
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getFlagMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5377
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->hasNonFlagFlow()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 5378
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->getNonFlagFlow()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 5380
    :cond_62
    return-void
.end method
