.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreditCardInstrument"
.end annotation


# instance fields
.field private cachedSize:I

.field private escrowHandle_:Ljava/lang/String;

.field private expirationMonth_:I

.field private expirationYear_:I

.field private hasEscrowHandle:Z

.field private hasExpirationMonth:Z

.field private hasExpirationYear:Z

.field private hasLastDigits:Z

.field private hasType:Z

.field private lastDigits_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 308
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    .line 359
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    .line 376
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    .line 303
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 425
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    if-gez v0, :cond_7

    .line 427
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getSerializedSize()I

    .line 429
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    return v0
.end method

.method public getEscrowHandle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()I
    .registers 2

    .prologue
    .line 360
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    return v0
.end method

.method public getExpirationYear()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    return v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 439
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowHandle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 443
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getLastDigits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 446
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 447
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationMonth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 450
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 451
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationYear()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :cond_51
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    .line 455
    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 310
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    return v0
.end method

.method public hasEscrowHandle()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle:Z

    return v0
.end method

.method public hasExpirationMonth()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth:Z

    return v0
.end method

.method public hasExpirationYear()Z
    .registers 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear:Z

    return v0
.end method

.method public hasLastDigits()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits:Z

    return v0
.end method

.method public hasType()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 463
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    :sswitch_d
    return-object p0

    .line 473
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 477
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setEscrowHandle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 481
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setLastDigits(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 485
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationMonth(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 489
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationYear(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 463
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_26
        0x28 -> :sswitch_2e
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
    .line 301
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setEscrowHandle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle:Z

    .line 330
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public setExpirationMonth(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth:Z

    .line 364
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    .line 365
    return-object p0
.end method

.method public setExpirationYear(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear:Z

    .line 381
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    .line 382
    return-object p0
.end method

.method public setLastDigits(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits:Z

    .line 347
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .registers 3
    .parameter "value"

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType:Z

    .line 313
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    .line 314
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
    .line 406
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 407
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 409
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 410
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 412
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 413
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getLastDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 415
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 416
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 418
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 419
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationYear()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 421
    :cond_46
    return-void
.end method
