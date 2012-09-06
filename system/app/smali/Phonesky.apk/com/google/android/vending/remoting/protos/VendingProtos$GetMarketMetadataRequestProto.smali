.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetMarketMetadataRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private contentRating_:I

.field private deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

.field private deviceManufacturerName_:Ljava/lang/String;

.field private deviceModelName_:Ljava/lang/String;

.field private deviceRoaming_:Z

.field private hasContentRating:Z

.field private hasDeviceConfiguration:Z

.field private hasDeviceManufacturerName:Z

.field private hasDeviceModelName:Z

.field private hasDeviceRoaming:Z

.field private hasLastRequestTime:Z

.field private lastRequestTime_:J

.field private marketSignatureHash_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 15190
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->lastRequestTime_:J

    .line 15212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 15232
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    .line 15248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    .line 15282
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    .line 15299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    .line 15316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    .line 15375
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    .line 15190
    return-void
.end method


# virtual methods
.method public addMarketSignatureHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15265
    if-nez p1, :cond_8

    .line 15266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15268
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    .line 15271
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15272
    return-object p0
.end method

.method public clearDeviceConfiguration()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 2

    .prologue
    .line 15224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    .line 15225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 15226
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 15378
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 15380
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getSerializedSize()I

    .line 15382
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    return v0
.end method

.method public getContentRating()I
    .registers 2

    .prologue
    .line 15283
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    return v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 2

    .prologue
    .line 15214
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    return-object v0
.end method

.method public getDeviceManufacturerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15317
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15300
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRoaming()Z
    .registers 2

    .prologue
    .line 15233
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    return v0
.end method

.method public getLastRequestTime()J
    .registers 3

    .prologue
    .line 15196
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->lastRequestTime_:J

    return-wide v0
.end method

.method public getMarketSignatureHashList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15251
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 15387
    const/4 v3, 0x0

    .line 15388
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 15389
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getLastRequestTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15392
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 15393
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15396
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 15397
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceRoaming()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15401
    :cond_31
    const/4 v0, 0x0

    .line 15402
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getMarketSignatureHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15403
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3a

    .line 15406
    .end local v1           #element:Ljava/lang/String;
    :cond_4c
    add-int/2addr v3, v0

    .line 15407
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getMarketSignatureHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15409
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 15410
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getContentRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15413
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 15414
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceModelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15417
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 15418
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceManufacturerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15421
    :cond_88
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    .line 15422
    return v3
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 15284
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating:Z

    return v0
.end method

.method public hasDeviceConfiguration()Z
    .registers 2

    .prologue
    .line 15213
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasDeviceManufacturerName()Z
    .registers 2

    .prologue
    .line 15318
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName:Z

    return v0
.end method

.method public hasDeviceModelName()Z
    .registers 2

    .prologue
    .line 15301
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName:Z

    return v0
.end method

.method public hasDeviceRoaming()Z
    .registers 2

    .prologue
    .line 15234
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming:Z

    return v0
.end method

.method public hasLastRequestTime()Z
    .registers 2

    .prologue
    .line 15197
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15431
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 15435
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15436
    :sswitch_d
    return-object p0

    .line 15441
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setLastRequestTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15445
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;-><init>()V

    .line 15446
    .local v1, value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 15447
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15451
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceRoaming(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15455
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->addMarketSignatureHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15459
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setContentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15463
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceModelName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15467
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceManufacturerName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15431
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_22
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_32
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_42
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
    .line 15188
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating:Z

    .line 15287
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    .line 15288
    return-object p0
.end method

.method public setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15216
    if-nez p1, :cond_8

    .line 15217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15219
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    .line 15220
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 15221
    return-object p0
.end method

.method public setDeviceManufacturerName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName:Z

    .line 15321
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    .line 15322
    return-object p0
.end method

.method public setDeviceModelName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName:Z

    .line 15304
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    .line 15305
    return-object p0
.end method

.method public setDeviceRoaming(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming:Z

    .line 15237
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    .line 15238
    return-object p0
.end method

.method public setLastRequestTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 15199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime:Z

    .line 15200
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->lastRequestTime_:J

    .line 15201
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
    .line 15352
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15353
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getLastRequestTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 15355
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 15356
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 15358
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 15359
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceRoaming()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15361
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getMarketSignatureHashList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15362
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_32

    .line 15364
    .end local v0           #element:Ljava/lang/String;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 15365
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getContentRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15367
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 15368
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15370
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 15371
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15373
    :cond_6d
    return-void
.end method
