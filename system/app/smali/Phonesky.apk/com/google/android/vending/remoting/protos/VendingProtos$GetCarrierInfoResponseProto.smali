.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetCarrierInfoResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private carrierChannelEnabled_:Z

.field private carrierImageDensity_:I

.field private carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private carrierSubtitle_:Ljava/lang/String;

.field private carrierTitle_:Ljava/lang/String;

.field private hasCarrierBanner:Z

.field private hasCarrierChannelEnabled:Z

.field private hasCarrierImageDensity:Z

.field private hasCarrierLogoIcon:Z

.field private hasCarrierSubtitle:Z

.field private hasCarrierTitle:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16023
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16028
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    .line 16045
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16062
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    .line 16096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    .line 16113
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    .line 16165
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    .line 16023
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 16167
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 16169
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getSerializedSize()I

    .line 16171
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    return v0
.end method

.method public getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 16063
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCarrierChannelEnabled()Z
    .registers 2

    .prologue
    .line 16029
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    return v0
.end method

.method public getCarrierImageDensity()I
    .registers 2

    .prologue
    .line 16114
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    return v0
.end method

.method public getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;
    .registers 2

    .prologue
    .line 16046
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCarrierSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16080
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16097
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 16175
    const/4 v0, 0x0

    .line 16176
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 16177
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierChannelEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16180
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 16181
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16184
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 16185
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16188
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 16189
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16192
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 16193
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16196
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 16197
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierImageDensity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16200
    :cond_61
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->cachedSize:I

    .line 16201
    return v0
.end method

.method public hasCarrierBanner()Z
    .registers 2

    .prologue
    .line 16064
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner:Z

    return v0
.end method

.method public hasCarrierChannelEnabled()Z
    .registers 2

    .prologue
    .line 16030
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled:Z

    return v0
.end method

.method public hasCarrierImageDensity()Z
    .registers 2

    .prologue
    .line 16115
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity:Z

    return v0
.end method

.method public hasCarrierLogoIcon()Z
    .registers 2

    .prologue
    .line 16047
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon:Z

    return v0
.end method

.method public hasCarrierSubtitle()Z
    .registers 2

    .prologue
    .line 16081
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle:Z

    return v0
.end method

.method public hasCarrierTitle()Z
    .registers 2

    .prologue
    .line 16098
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16208
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16209
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 16213
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16214
    :sswitch_d
    return-object p0

    .line 16219
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierChannelEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16223
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierLogoIcon(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16227
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierBanner(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16231
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierSubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16235
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16239
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->setCarrierImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    goto :goto_0

    .line 16209
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x30 -> :sswitch_36
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
    .line 16021
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierBanner(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner:Z

    .line 16067
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierBanner_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16068
    return-object p0
.end method

.method public setCarrierChannelEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled:Z

    .line 16033
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierChannelEnabled_:Z

    .line 16034
    return-object p0
.end method

.method public setCarrierImageDensity(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity:Z

    .line 16118
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierImageDensity_:I

    .line 16119
    return-object p0
.end method

.method public setCarrierLogoIcon(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon:Z

    .line 16050
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierLogoIcon_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 16051
    return-object p0
.end method

.method public setCarrierSubtitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle:Z

    .line 16084
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierSubtitle_:Ljava/lang/String;

    .line 16085
    return-object p0
.end method

.method public setCarrierTitle(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 16100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle:Z

    .line 16101
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->carrierTitle_:Ljava/lang/String;

    .line 16102
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
    .line 16145
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierChannelEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 16146
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierChannelEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16148
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierLogoIcon()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 16149
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierLogoIcon()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 16151
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierBanner()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 16152
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierBanner()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 16154
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierSubtitle()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 16155
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16157
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierTitle()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 16158
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16160
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->hasCarrierImageDensity()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 16161
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;->getCarrierImageDensity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16163
    :cond_54
    return-void
.end method
