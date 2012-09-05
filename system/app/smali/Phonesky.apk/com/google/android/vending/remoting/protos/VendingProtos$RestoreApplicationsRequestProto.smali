.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RestoreApplicationsRequestProto"
.end annotation


# instance fields
.field private backupAndroidId_:Ljava/lang/String;

.field private cachedSize:I

.field private deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

.field private hasBackupAndroidId:Z

.field private hasDeviceConfiguration:Z

.field private hasTosVersion:Z

.field private tosVersion_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17093
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    .line 17115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    .line 17132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 17179
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    .line 17093
    return-void
.end method


# virtual methods
.method public getBackupAndroidId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17099
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17181
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17183
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getSerializedSize()I

    .line 17185
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    return v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 2

    .prologue
    .line 17134
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 17189
    const/4 v0, 0x0

    .line 17190
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17191
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getBackupAndroidId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17194
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 17195
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getTosVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17198
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 17199
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17202
    :cond_31
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->cachedSize:I

    .line 17203
    return v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17116
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBackupAndroidId()Z
    .registers 2

    .prologue
    .line 17100
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    return v0
.end method

.method public hasDeviceConfiguration()Z
    .registers 2

    .prologue
    .line 17133
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasTosVersion()Z
    .registers 2

    .prologue
    .line 17117
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17211
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2a

    .line 17215
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17216
    :sswitch_d
    return-object p0

    .line 17221
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17225
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17229
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;-><init>()V

    .line 17230
    .local v1, value:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 17231
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    goto :goto_0

    .line 17211
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 17091
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBackupAndroidId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId:Z

    .line 17103
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->backupAndroidId_:Ljava/lang/String;

    .line 17104
    return-object p0
.end method

.method public setDeviceConfiguration(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17136
    if-nez p1, :cond_8

    .line 17137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17139
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration:Z

    .line 17140
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->deviceConfiguration_:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 17141
    return-object p0
.end method

.method public setTosVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion:Z

    .line 17120
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->tosVersion_:Ljava/lang/String;

    .line 17121
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
    .line 17168
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasBackupAndroidId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17169
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getBackupAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17171
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasTosVersion()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 17172
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17174
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->hasDeviceConfiguration()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 17175
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;->getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 17177
    :cond_2a
    return-void
.end method
