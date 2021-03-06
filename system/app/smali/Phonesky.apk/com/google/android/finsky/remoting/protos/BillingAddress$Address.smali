.class public final Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BillingAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BillingAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private addressLine1_:Ljava/lang/String;

.field private addressLine2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private dependentLocality_:Ljava/lang/String;

.field private deprecatedIsReduced_:Z

.field private email_:Ljava/lang/String;

.field private firstName_:Ljava/lang/String;

.field private hasAddressLine1:Z

.field private hasAddressLine2:Z

.field private hasCity:Z

.field private hasDependentLocality:Z

.field private hasDeprecatedIsReduced:Z

.field private hasEmail:Z

.field private hasFirstName:Z

.field private hasLanguageCode:Z

.field private hasLastName:Z

.field private hasName:Z

.field private hasPhoneNumber:Z

.field private hasPostalCode:Z

.field private hasPostalCountry:Z

.field private hasSortingCode:Z

.field private hasState:Z

.field private languageCode_:Ljava/lang/String;

.field private lastName_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private phoneNumber_:Ljava/lang/String;

.field private postalCode_:Ljava/lang/String;

.field private postalCountry_:Ljava/lang/String;

.field private sortingCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->name_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->firstName_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->lastName_:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine1_:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine2_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->city_:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->state_:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCode_:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCountry_:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->dependentLocality_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->sortingCode_:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->languageCode_:Ljava/lang/String;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->phoneNumber_:Ljava/lang/String;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->email_:Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->deprecatedIsReduced_:Z

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->cachedSize:I

    if-gez v0, :cond_7

    .line 346
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSerializedSize()I

    .line 348
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->dependentLocality_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedIsReduced()Z
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->deprecatedIsReduced_:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 355
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 359
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 362
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine2()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 363
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 367
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasState()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 371
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 374
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 375
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 379
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDependentLocality()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 383
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasSortingCode()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 387
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLanguageCode()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 391
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 395
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 398
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDeprecatedIsReduced()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 399
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDeprecatedIsReduced()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    :cond_c6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasFirstName()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 403
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_d7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLastName()Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 407
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    :cond_e8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 411
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_f9
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->cachedSize:I

    .line 415
    return v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->sortingCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddressLine1()Z
    .registers 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine1:Z

    return v0
.end method

.method public hasAddressLine2()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasCity:Z

    return v0
.end method

.method public hasDependentLocality()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDependentLocality:Z

    return v0
.end method

.method public hasDeprecatedIsReduced()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    return v0
.end method

.method public hasEmail()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasEmail:Z

    return v0
.end method

.method public hasFirstName()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasFirstName:Z

    return v0
.end method

.method public hasLanguageCode()Z
    .registers 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLanguageCode:Z

    return v0
.end method

.method public hasLastName()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLastName:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasName:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPhoneNumber:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCode:Z

    return v0
.end method

.method public hasPostalCountry()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry:Z

    return v0
.end method

.method public hasSortingCode()Z
    .registers 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasSortingCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasState:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 424
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_88

    .line 428
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    :sswitch_d
    return-object p0

    .line 434
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 438
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 442
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 446
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 450
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 454
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 458
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 462
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 466
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 470
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 474
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 478
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDeprecatedIsReduced(Z)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 482
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setFirstName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 486
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setLastName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto :goto_0

    .line 490
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_26
        0x2a -> :sswitch_2e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_46
        0x4a -> :sswitch_4e
        0x52 -> :sswitch_56
        0x5a -> :sswitch_5e
        0x60 -> :sswitch_66
        0x6a -> :sswitch_6e
        0x72 -> :sswitch_76
        0x7a -> :sswitch_7e
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v0

    return-object v0
.end method

.method public setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine1:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine1_:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine2:Z

    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->addressLine2_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasCity:Z

    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->city_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDependentLocality:Z

    .line 173
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->dependentLocality_:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setDeprecatedIsReduced(Z)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDeprecatedIsReduced:Z

    .line 258
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->deprecatedIsReduced_:Z

    .line 259
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasEmail:Z

    .line 241
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->email_:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasFirstName:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->firstName_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLanguageCode:Z

    .line 207
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->languageCode_:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLastName:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->lastName_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasName:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->name_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPhoneNumber:Z

    .line 224
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->phoneNumber_:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCode:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCode_:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry:Z

    .line 156
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->postalCountry_:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasSortingCode:Z

    .line 190
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->sortingCode_:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasState:Z

    .line 122
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->state_:Ljava/lang/String;

    .line 123
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
    .line 294
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 297
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine1()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 298
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 300
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasAddressLine2()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 301
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 303
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 304
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 306
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasState()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 307
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 309
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 310
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 312
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPostalCountry()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 313
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 315
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDependentLocality()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 316
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 318
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasSortingCode()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 319
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 321
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 322
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 324
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 325
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 327
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasDeprecatedIsReduced()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 328
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getDeprecatedIsReduced()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 330
    :cond_ad
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 331
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 333
    :cond_bc
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 334
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 336
    :cond_cb
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 337
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 339
    :cond_da
    return-void
.end method
