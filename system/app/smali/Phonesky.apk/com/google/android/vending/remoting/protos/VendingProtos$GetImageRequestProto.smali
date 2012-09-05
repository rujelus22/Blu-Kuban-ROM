.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetImageRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAssetId:Z

.field private hasImageId:Z

.field private hasImageUsage:Z

.field private hasProductType:Z

.field private hasScreenPropertyDensity:Z

.field private hasScreenPropertyHeight:Z

.field private hasScreenPropertyWidth:Z

.field private imageId_:Ljava/lang/String;

.field private imageUsage_:I

.field private productType_:I

.field private screenPropertyDensity_:I

.field private screenPropertyHeight_:I

.field private screenPropertyWidth_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13202
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    .line 13231
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    .line 13248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    .line 13265
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    .line 13282
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    .line 13299
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    .line 13316
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    .line 13371
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    .line 13202
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13215
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 13373
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 13375
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getSerializedSize()I

    .line 13377
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    return v0
.end method

.method public getImageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13249
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUsage()I
    .registers 2

    .prologue
    .line 13233
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    return v0
.end method

.method public getProductType()I
    .registers 2

    .prologue
    .line 13318
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    return v0
.end method

.method public getScreenPropertyDensity()I
    .registers 2

    .prologue
    .line 13300
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    return v0
.end method

.method public getScreenPropertyHeight()I
    .registers 2

    .prologue
    .line 13283
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    return v0
.end method

.method public getScreenPropertyWidth()I
    .registers 2

    .prologue
    .line 13266
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 13381
    const/4 v0, 0x0

    .line 13382
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 13383
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13386
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 13387
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageUsage()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13390
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 13391
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13394
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 13395
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13398
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 13399
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13402
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 13403
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyDensity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13406
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 13407
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13410
    :cond_72
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->cachedSize:I

    .line 13411
    return v0
.end method

.method public hasAssetId()Z
    .registers 2

    .prologue
    .line 13216
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasImageId()Z
    .registers 2

    .prologue
    .line 13250
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId:Z

    return v0
.end method

.method public hasImageUsage()Z
    .registers 2

    .prologue
    .line 13232
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage:Z

    return v0
.end method

.method public hasProductType()Z
    .registers 2

    .prologue
    .line 13317
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasScreenPropertyDensity()Z
    .registers 2

    .prologue
    .line 13301
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity:Z

    return v0
.end method

.method public hasScreenPropertyHeight()Z
    .registers 2

    .prologue
    .line 13284
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight:Z

    return v0
.end method

.method public hasScreenPropertyWidth()Z
    .registers 2

    .prologue
    .line 13267
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13418
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 13419
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_46

    .line 13423
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13424
    :sswitch_d
    return-object p0

    .line 13429
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13433
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setImageUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13437
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setImageId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13441
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyWidth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13445
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyHeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13449
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setScreenPropertyDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13453
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    goto :goto_0

    .line 13419
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x18 -> :sswitch_16
        0x22 -> :sswitch_1e
        0x28 -> :sswitch_26
        0x30 -> :sswitch_2e
        0x38 -> :sswitch_36
        0x40 -> :sswitch_3e
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
    .line 13200
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId:Z

    .line 13219
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->assetId_:Ljava/lang/String;

    .line 13220
    return-object p0
.end method

.method public setImageId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId:Z

    .line 13253
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageId_:Ljava/lang/String;

    .line 13254
    return-object p0
.end method

.method public setImageUsage(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage:Z

    .line 13236
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->imageUsage_:I

    .line 13237
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType:Z

    .line 13321
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->productType_:I

    .line 13322
    return-object p0
.end method

.method public setScreenPropertyDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity:Z

    .line 13304
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyDensity_:I

    .line 13305
    return-object p0
.end method

.method public setScreenPropertyHeight(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight:Z

    .line 13287
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyHeight_:I

    .line 13288
    return-object p0
.end method

.method public setScreenPropertyWidth(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 13269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth:Z

    .line 13270
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->screenPropertyWidth_:I

    .line 13271
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
    .line 13348
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 13349
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13351
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageUsage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 13352
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageUsage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13354
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasImageId()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 13355
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 13357
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyWidth()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 13358
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13360
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyHeight()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 13361
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13363
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasScreenPropertyDensity()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 13364
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getScreenPropertyDensity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13366
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 13367
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 13369
    :cond_63
    return-void
.end method
