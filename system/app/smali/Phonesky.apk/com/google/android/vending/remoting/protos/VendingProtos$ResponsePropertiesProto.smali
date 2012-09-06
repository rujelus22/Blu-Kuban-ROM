.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponsePropertiesProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorInputField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessage_:Ljava/lang/String;

.field private etag_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasEtag:Z

.field private hasMaxAge:Z

.field private hasMaxAgeConsumable:Z

.field private hasResult:Z

.field private hasServerVersion:Z

.field private maxAgeConsumable_:I

.field private maxAge_:I

.field private result_:I

.field private serverVersion_:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 17271
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 17283
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->result_:I

    .line 17300
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAge_:I

    .line 17317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->etag_:Ljava/lang/String;

    .line 17334
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAgeConsumable_:I

    .line 17351
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->serverVersion_:I

    .line 17368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorMessage_:Ljava/lang/String;

    .line 17384
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorInputField_:Ljava/util/List;

    .line 17461
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->cachedSize:I

    .line 17271
    return-void
.end method


# virtual methods
.method public addErrorInputField(Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17401
    if-nez p1, :cond_8

    .line 17402
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 17404
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorInputField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 17405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorInputField_:Ljava/util/List;

    .line 17407
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorInputField_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17408
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 17464
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 17466
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getSerializedSize()I

    .line 17468
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->cachedSize:I

    return v0
.end method

.method public getErrorInputFieldList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17387
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorInputField_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17369
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17318
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->etag_:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .registers 2

    .prologue
    .line 17301
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAge_:I

    return v0
.end method

.method public getMaxAgeConsumable()I
    .registers 2

    .prologue
    .line 17335
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAgeConsumable_:I

    return v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 17285
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 17473
    const/4 v2, 0x0

    .line 17474
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 17475
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getResult()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 17478
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAge()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 17479
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getMaxAge()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 17482
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasEtag()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 17483
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getEtag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 17486
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasServerVersion()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 17487
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getServerVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 17490
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAgeConsumable()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 17491
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getMaxAgeConsumable()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 17494
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasErrorMessage()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 17495
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 17498
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    .line 17499
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_69

    .line 17502
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    :cond_7d
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->cachedSize:I

    .line 17503
    return v2
.end method

.method public getServerVersion()I
    .registers 2

    .prologue
    .line 17352
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->serverVersion_:I

    return v0
.end method

.method public hasErrorMessage()Z
    .registers 2

    .prologue
    .line 17370
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasErrorMessage:Z

    return v0
.end method

.method public hasEtag()Z
    .registers 2

    .prologue
    .line 17319
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasEtag:Z

    return v0
.end method

.method public hasMaxAge()Z
    .registers 2

    .prologue
    .line 17302
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAge:Z

    return v0
.end method

.method public hasMaxAgeConsumable()Z
    .registers 2

    .prologue
    .line 17336
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAgeConsumable:Z

    return v0
.end method

.method public hasResult()Z
    .registers 2

    .prologue
    .line 17284
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasResult:Z

    return v0
.end method

.method public hasServerVersion()Z
    .registers 2

    .prologue
    .line 17353
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasServerVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17511
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 17512
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 17516
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 17517
    :sswitch_d
    return-object p0

    .line 17522
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17526
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setMaxAge(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17530
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setEtag(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17534
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setServerVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17538
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setMaxAgeConsumable(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17542
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17546
    :sswitch_3e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;-><init>()V

    .line 17547
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 17548
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->addErrorInputField(Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    goto :goto_0

    .line 17512
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_26
        0x30 -> :sswitch_2e
        0x3a -> :sswitch_36
        0x42 -> :sswitch_3e
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
    .line 17269
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasErrorMessage:Z

    .line 17373
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->errorMessage_:Ljava/lang/String;

    .line 17374
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasEtag:Z

    .line 17322
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->etag_:Ljava/lang/String;

    .line 17323
    return-object p0
.end method

.method public setMaxAge(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAge:Z

    .line 17305
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAge_:I

    .line 17306
    return-object p0
.end method

.method public setMaxAgeConsumable(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAgeConsumable:Z

    .line 17339
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->maxAgeConsumable_:I

    .line 17340
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasResult:Z

    .line 17288
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->result_:I

    .line 17289
    return-object p0
.end method

.method public setServerVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 17355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasServerVersion:Z

    .line 17356
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->serverVersion_:I

    .line 17357
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17438
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 17439
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getResult()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17441
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAge()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 17442
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getMaxAge()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17444
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasEtag()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 17445
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getEtag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17447
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasServerVersion()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 17448
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getServerVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17450
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasMaxAgeConsumable()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 17451
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getMaxAgeConsumable()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 17453
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->hasErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 17454
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 17456
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;

    .line 17457
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_5c

    .line 17459
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$InputValidationError;
    :cond_6e
    return-void
.end method
