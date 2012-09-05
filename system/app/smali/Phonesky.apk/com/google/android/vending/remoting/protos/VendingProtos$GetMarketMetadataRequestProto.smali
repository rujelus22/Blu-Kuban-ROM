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

    .line 14864
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14869
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->lastRequestTime_:J

    .line 14886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 14906
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    .line 14922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    .line 14956
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    .line 14973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    .line 14990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    .line 15048
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    .line 14864
    return-void
.end method


# virtual methods
.method public addMarketSignatureHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14939
    if-nez p1, :cond_8

    .line 14940
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14942
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 14943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    .line 14945
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14946
    return-object p0
.end method

.method public clearDeviceConfiguration()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 2

    .prologue
    .line 14898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    .line 14899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 14900
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 15050
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 15052
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getSerializedSize()I

    .line 15054
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    return v0
.end method

.method public getContentRating()I
    .registers 2

    .prologue
    .line 14957
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    return v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 2

    .prologue
    .line 14888
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    return-object v0
.end method

.method public getDeviceManufacturerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14991
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14974
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRoaming()Z
    .registers 2

    .prologue
    .line 14907
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    return v0
.end method

.method public getLastRequestTime()J
    .registers 3

    .prologue
    .line 14870
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
    .line 14925
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->marketSignatureHash_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    .line 15058
    const/4 v3, 0x0

    .line 15059
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 15060
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getLastRequestTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15063
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 15064
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15067
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 15068
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceRoaming()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 15072
    :cond_31
    const/4 v0, 0x0

    .line 15073
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

    .line 15074
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3a

    .line 15077
    .end local v1           #element:Ljava/lang/String;
    :cond_4c
    add-int/2addr v3, v0

    .line 15078
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getMarketSignatureHashList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 15080
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating()Z

    move-result v4

    if-eqz v4, :cond_68

    .line 15081
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getContentRating()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 15084
    :cond_68
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 15085
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceModelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15088
    :cond_78
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 15089
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceManufacturerName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 15092
    :cond_88
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->cachedSize:I

    .line 15093
    return v3
.end method

.method public hasContentRating()Z
    .registers 2

    .prologue
    .line 14958
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating:Z

    return v0
.end method

.method public hasDeviceConfiguration()Z
    .registers 2

    .prologue
    .line 14887
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasDeviceManufacturerName()Z
    .registers 2

    .prologue
    .line 14992
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName:Z

    return v0
.end method

.method public hasDeviceModelName()Z
    .registers 2

    .prologue
    .line 14975
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName:Z

    return v0
.end method

.method public hasDeviceRoaming()Z
    .registers 2

    .prologue
    .line 14908
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming:Z

    return v0
.end method

.method public hasLastRequestTime()Z
    .registers 2

    .prologue
    .line 14871
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
    .line 15100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15101
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 15105
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15106
    :sswitch_d
    return-object p0

    .line 15111
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setLastRequestTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15115
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;-><init>()V

    .line 15116
    .local v1, value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 15117
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15121
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceRoaming(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15125
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->addMarketSignatureHash(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15129
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setContentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15133
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceModelName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15137
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->setDeviceManufacturerName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    goto :goto_0

    .line 15101
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
    .line 14862
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setContentRating(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating:Z

    .line 14961
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->contentRating_:I

    .line 14962
    return-object p0
.end method

.method public setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14890
    if-nez p1, :cond_8

    .line 14891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14893
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration:Z

    .line 14894
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 14895
    return-object p0
.end method

.method public setDeviceManufacturerName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName:Z

    .line 14995
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceManufacturerName_:Ljava/lang/String;

    .line 14996
    return-object p0
.end method

.method public setDeviceModelName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName:Z

    .line 14978
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceModelName_:Ljava/lang/String;

    .line 14979
    return-object p0
.end method

.method public setDeviceRoaming(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 14910
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming:Z

    .line 14911
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->deviceRoaming_:Z

    .line 14912
    return-object p0
.end method

.method public setLastRequestTime(J)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 14873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime:Z

    .line 14874
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->lastRequestTime_:J

    .line 14875
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
    .line 15025
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasLastRequestTime()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15026
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getLastRequestTime()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 15028
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceConfiguration()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 15029
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 15031
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceRoaming()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 15032
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceRoaming()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15034
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

    .line 15035
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_32

    .line 15037
    .end local v0           #element:Ljava/lang/String;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasContentRating()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 15038
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getContentRating()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15040
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceModelName()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 15041
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15043
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->hasDeviceManufacturerName()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 15044
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;->getDeviceManufacturerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15046
    :cond_6d
    return-void
.end method
