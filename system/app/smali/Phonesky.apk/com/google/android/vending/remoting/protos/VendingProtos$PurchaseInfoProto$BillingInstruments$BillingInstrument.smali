.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstrument"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasId:Z

.field private hasInstrumentStatus:Z

.field private hasInstrumentType:Z

.field private hasIsInvalid:Z

.field private hasName:Z

.field private id_:Ljava/lang/String;

.field private instrumentStatus_:I

.field private instrumentType_:I

.field private isInvalid_:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    .line 90
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    .line 107
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    .line 34
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    if-gez v0, :cond_7

    .line 160
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getSerializedSize()I

    .line 162
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentStatus()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    return v0
.end method

.method public getInstrumentType()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    return v0
.end method

.method public getIsInvalid()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 168
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 172
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 176
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getIsInvalid()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 180
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 184
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_53
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->cachedSize:I

    .line 188
    return v0
.end method

.method public hasId()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId:Z

    return v0
.end method

.method public hasInstrumentStatus()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus:Z

    return v0
.end method

.method public hasInstrumentType()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType:Z

    return v0
.end method

.method public hasIsInvalid()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 196
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 200
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    :sswitch_d
    return-object p0

    .line 206
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 210
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 214
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setIsInvalid(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 218
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 222
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->setInstrumentStatus(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    goto :goto_0

    .line 196
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x2a -> :sswitch_e
        0x32 -> :sswitch_16
        0x38 -> :sswitch_1e
        0x58 -> :sswitch_26
        0x70 -> :sswitch_2e
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
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId:Z

    .line 44
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->id_:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public setInstrumentStatus(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus:Z

    .line 112
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentStatus_:I

    .line 113
    return-object p0
.end method

.method public setInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType:Z

    .line 95
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->instrumentType_:I

    .line 96
    return-object p0
.end method

.method public setIsInvalid(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid:Z

    .line 78
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->isInvalid_:Z

    .line 79
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName:Z

    .line 61
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->name_:Ljava/lang/String;

    .line 62
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
    .line 139
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasId()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 140
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 143
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasIsInvalid()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 146
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getIsInvalid()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 148
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentType()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 149
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 151
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->hasInstrumentStatus()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 152
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments$BillingInstrument;->getInstrumentStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 154
    :cond_48
    return-void
.end method
