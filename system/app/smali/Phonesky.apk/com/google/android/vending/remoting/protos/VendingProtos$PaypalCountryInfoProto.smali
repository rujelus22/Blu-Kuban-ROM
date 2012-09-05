.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCountryInfoProto"
.end annotation


# instance fields
.field private billingAgreementText_:Ljava/lang/String;

.field private birthDateRequired_:Z

.field private cachedSize:I

.field private hasBillingAgreementText:Z

.field private hasBirthDateRequired:Z

.field private hasPreTosText:Z

.field private hasTosText:Z

.field private preTosText_:Ljava/lang/String;

.field private tosText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11389
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 11394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->birthDateRequired_:Z

    .line 11411
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->tosText_:Ljava/lang/String;

    .line 11428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->billingAgreementText_:Ljava/lang/String;

    .line 11445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->preTosText_:Ljava/lang/String;

    .line 11490
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->cachedSize:I

    .line 11389
    return-void
.end method


# virtual methods
.method public getBillingAgreementText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11429
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->billingAgreementText_:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDateRequired()Z
    .registers 2

    .prologue
    .line 11395
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->birthDateRequired_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 11492
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 11494
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getSerializedSize()I

    .line 11496
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->cachedSize:I

    return v0
.end method

.method public getPreTosText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11446
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->preTosText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 11500
    const/4 v0, 0x0

    .line 11501
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBirthDateRequired()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 11502
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getBirthDateRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11505
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasTosText()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 11506
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getTosText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11509
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBillingAgreementText()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 11510
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getBillingAgreementText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11513
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasPreTosText()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 11514
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getPreTosText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11517
    :cond_41
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->cachedSize:I

    .line 11518
    return v0
.end method

.method public getTosText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 11412
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->tosText_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBillingAgreementText()Z
    .registers 2

    .prologue
    .line 11430
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBillingAgreementText:Z

    return v0
.end method

.method public hasBirthDateRequired()Z
    .registers 2

    .prologue
    .line 11396
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBirthDateRequired:Z

    return v0
.end method

.method public hasPreTosText()Z
    .registers 2

    .prologue
    .line 11447
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasPreTosText:Z

    return v0
.end method

.method public hasTosText()Z
    .registers 2

    .prologue
    .line 11413
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasTosText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 11526
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 11530
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11531
    :sswitch_d
    return-object p0

    .line 11536
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->setBirthDateRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    goto :goto_0

    .line 11540
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->setTosText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    goto :goto_0

    .line 11544
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->setBillingAgreementText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    goto :goto_0

    .line 11548
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->setPreTosText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    goto :goto_0

    .line 11526
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 11387
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingAgreementText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBillingAgreementText:Z

    .line 11433
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->billingAgreementText_:Ljava/lang/String;

    .line 11434
    return-object p0
.end method

.method public setBirthDateRequired(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBirthDateRequired:Z

    .line 11399
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->birthDateRequired_:Z

    .line 11400
    return-object p0
.end method

.method public setPreTosText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasPreTosText:Z

    .line 11450
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->preTosText_:Ljava/lang/String;

    .line 11451
    return-object p0
.end method

.method public setTosText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 11415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasTosText:Z

    .line 11416
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->tosText_:Ljava/lang/String;

    .line 11417
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
    .line 11476
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBirthDateRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11477
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getBirthDateRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 11479
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasTosText()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 11480
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getTosText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11482
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasBillingAgreementText()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 11483
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getBillingAgreementText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11485
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->hasPreTosText()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 11486
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCountryInfoProto;->getPreTosText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 11488
    :cond_38
    return-void
.end method
