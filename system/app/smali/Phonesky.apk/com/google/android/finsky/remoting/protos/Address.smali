.class public final Lcom/google/android/finsky/remoting/protos/Address;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Address.java"


# instance fields
.field private addressLine1_:Ljava/lang/String;

.field private addressLine2_:Ljava/lang/String;

.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private dependentLocality_:Ljava/lang/String;

.field private hasAddressLine1:Z

.field private hasAddressLine2:Z

.field private hasCity:Z

.field private hasDependentLocality:Z

.field private hasIsReduced:Z

.field private hasLanguageCode:Z

.field private hasName:Z

.field private hasPhoneNumber:Z

.field private hasPostalCode:Z

.field private hasPostalCountry:Z

.field private hasSortingCode:Z

.field private hasState:Z

.field private isReduced_:Z

.field private languageCode_:Ljava/lang/String;

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
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->name_:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine1_:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine2_:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->city_:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->state_:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCode_:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCountry_:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->dependentLocality_:Ljava/lang/String;

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->sortingCode_:Ljava/lang/String;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->languageCode_:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->phoneNumber_:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->isReduced_:Z

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine1_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine2_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->cachedSize:I

    if-gez v0, :cond_7

    .line 278
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getSerializedSize()I

    .line 280
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getDependentLocality()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->dependentLocality_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsReduced()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->isReduced_:Z

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->phoneNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasName()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 286
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 290
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine2()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 294
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 298
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasState()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 302
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 306
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCountry()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 310
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasDependentLocality()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 314
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasSortingCode()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 318
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getSortingCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasLanguageCode()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 322
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_a4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 326
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasIsReduced()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 330
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getIsReduced()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_c6
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->cachedSize:I

    .line 334
    return v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->sortingCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddressLine1()Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine1:Z

    return v0
.end method

.method public hasAddressLine2()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine2:Z

    return v0
.end method

.method public hasCity()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasCity:Z

    return v0
.end method

.method public hasDependentLocality()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasDependentLocality:Z

    return v0
.end method

.method public hasIsReduced()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasIsReduced:Z

    return v0
.end method

.method public hasLanguageCode()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasLanguageCode:Z

    return v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasName:Z

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPhoneNumber:Z

    return v0
.end method

.method public hasPostalCode()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCode:Z

    return v0
.end method

.method public hasPostalCountry()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCountry:Z

    return v0
.end method

.method public hasSortingCode()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasSortingCode:Z

    return v0
.end method

.method public hasState()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasState:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 342
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_6e

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Address;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    :sswitch_d
    return-object p0

    .line 352
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 356
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 360
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 364
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 368
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 372
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 376
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 380
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 384
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 388
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 392
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 396
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Address;->setIsReduced(Z)Lcom/google/android/finsky/remoting/protos/Address;

    goto :goto_0

    .line 342
    :sswitch_data_6e
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Address;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Address;

    move-result-object v0

    return-object v0
.end method

.method public setAddressLine1(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine1:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine1_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setAddressLine2(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine2:Z

    .line 51
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->addressLine2_:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasCity:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->city_:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setDependentLocality(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasDependentLocality:Z

    .line 136
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->dependentLocality_:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setIsReduced(Z)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasIsReduced:Z

    .line 204
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->isReduced_:Z

    .line 205
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasLanguageCode:Z

    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->languageCode_:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasName:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->name_:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPhoneNumber:Z

    .line 187
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->phoneNumber_:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCode:Z

    .line 102
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCode_:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setPostalCountry(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCountry:Z

    .line 119
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->postalCountry_:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setSortingCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasSortingCode:Z

    .line 153
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->sortingCode_:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;
    .registers 3
    .parameter "value"

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Address;->hasState:Z

    .line 85
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Address;->state_:Ljava/lang/String;

    .line 86
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
    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasName()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 237
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 239
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine1()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 240
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 242
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasAddressLine2()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 243
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 245
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 246
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 248
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasState()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 249
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 251
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 252
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 254
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPostalCountry()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 255
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 257
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasDependentLocality()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 258
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getDependentLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 260
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasSortingCode()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 261
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getSortingCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 263
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasLanguageCode()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 264
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 266
    :cond_8f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 267
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 269
    :cond_9e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->hasIsReduced()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 270
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Address;->getIsReduced()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 272
    :cond_ad
    return-void
.end method
