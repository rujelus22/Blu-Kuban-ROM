.class public final Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EncryptedSubscriberInfo.java"


# instance fields
.field private cachedSize:I

.field private carrierKeyVersion_:I

.field private data_:Ljava/lang/String;

.field private encryptedKey_:Ljava/lang/String;

.field private googleKeyVersion_:I

.field private hasCarrierKeyVersion:Z

.field private hasData:Z

.field private hasEncryptedKey:Z

.field private hasGoogleKeyVersion:Z

.field private hasInitVector:Z

.field private hasSignature:Z

.field private initVector_:Ljava/lang/String;

.field private signature_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    .line 97
    iput v1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    if-gez v0, :cond_7

    .line 152
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSerializedSize()I

    .line 154
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    return v0
.end method

.method public getCarrierKeyVersion()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleKeyVersion()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    return v0
.end method

.method public getInitVector()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 164
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 168
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 172
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 176
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 180
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_61
    iput v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->cachedSize:I

    .line 184
    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCarrierKeyVersion()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    return v0
.end method

.method public hasData()Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData:Z

    return v0
.end method

.method public hasEncryptedKey()Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    return v0
.end method

.method public hasGoogleKeyVersion()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    return v0
.end method

.method public hasInitVector()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    return v0
.end method

.method public hasSignature()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 192
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3e

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    :sswitch_d
    return-object p0

    .line 202
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 206
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setEncryptedKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 210
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 214
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setInitVector(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 218
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setGoogleKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 222
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->setCarrierKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    goto :goto_0

    .line 192
    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_2e
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v0

    return-object v0
.end method

.method public setCarrierKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion:Z

    .line 102
    iput p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->carrierKeyVersion_:I

    .line 103
    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->data_:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public setEncryptedKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->encryptedKey_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setGoogleKeyVersion(I)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion:Z

    .line 85
    iput p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->googleKeyVersion_:I

    .line 86
    return-object p0
.end method

.method public setInitVector(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->initVector_:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 3
    .parameter "value"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->signature_:Ljava/lang/String;

    .line 52
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
    .line 128
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasEncryptedKey()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 132
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 134
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 135
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 137
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasInitVector()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 138
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 140
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasGoogleKeyVersion()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 141
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 143
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->hasCarrierKeyVersion()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 144
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 146
    :cond_54
    return-void
.end method
