.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingEventRequestProto"
.end annotation


# instance fields
.field private billingParametersId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

.field private clientMessage_:Ljava/lang/String;

.field private eventType_:I

.field private hasBillingParametersId:Z

.field private hasCarrierInstrument:Z

.field private hasClientMessage:Z

.field private hasEventType:Z

.field private hasResultSuccess:Z

.field private resultSuccess_:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18201
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18210
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    .line 18227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 18244
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    .line 18261
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    .line 18278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 18332
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    .line 18201
    return-void
.end method


# virtual methods
.method public getBillingParametersId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18228
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 18334
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 18336
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getSerializedSize()I

    .line 18338
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    return v0
.end method

.method public getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .registers 2

    .prologue
    .line 18280
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    return-object v0
.end method

.method public getClientMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18262
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 18212
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    return v0
.end method

.method public getResultSuccess()Z
    .registers 2

    .prologue
    .line 18245
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 18342
    const/4 v0, 0x0

    .line 18343
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18344
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18347
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 18348
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18351
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 18352
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getResultSuccess()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18355
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 18356
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getClientMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18359
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 18360
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18363
    :cond_51
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    .line 18364
    return v0
.end method

.method public hasBillingParametersId()Z
    .registers 2

    .prologue
    .line 18229
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    return v0
.end method

.method public hasCarrierInstrument()Z
    .registers 2

    .prologue
    .line 18279
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument:Z

    return v0
.end method

.method public hasClientMessage()Z
    .registers 2

    .prologue
    .line 18263
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage:Z

    return v0
.end method

.method public hasEventType()Z
    .registers 2

    .prologue
    .line 18211
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    return v0
.end method

.method public hasResultSuccess()Z
    .registers 2

    .prologue
    .line 18246
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18371
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18372
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 18376
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18377
    :sswitch_d
    return-object p0

    .line 18382
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18386
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18390
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18394
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setClientMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18398
    :sswitch_2e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;-><init>()V

    .line 18399
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18400
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18372
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 18199
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    .line 18232
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 18233
    return-object p0
.end method

.method public setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18282
    if-nez p1, :cond_8

    .line 18283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18285
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument:Z

    .line 18286
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 18287
    return-object p0
.end method

.method public setClientMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage:Z

    .line 18266
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    .line 18267
    return-object p0
.end method

.method public setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    .line 18215
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    .line 18216
    return-object p0
.end method

.method public setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 18248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    .line 18249
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    .line 18250
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
    .line 18315
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18316
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18318
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 18319
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18321
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 18322
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getResultSuccess()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 18324
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 18325
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getClientMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18327
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 18328
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 18330
    :cond_46
    return-void
.end method
