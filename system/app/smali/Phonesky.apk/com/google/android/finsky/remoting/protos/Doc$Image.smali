.class public final Lcom/google/android/finsky/remoting/protos/Doc$Image;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;,
        Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    }
.end annotation


# instance fields
.field private altTextLocalized_:Ljava/lang/String;

.field private cachedSize:I

.field private citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

.field private dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

.field private hasAltTextLocalized:Z

.field private hasCitation:Z

.field private hasDimension:Z

.field private hasImageType:Z

.field private hasImageUrl:Z

.field private hasPositionInSequence:Z

.field private hasSecureUrl:Z

.field private hasSupportsFifeUrlOptions:Z

.field private imageType_:I

.field private imageUrl_:Ljava/lang/String;

.field private positionInSequence_:I

.field private secureUrl_:Ljava/lang/String;

.field private supportsFifeUrlOptions_:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 271
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 288
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    .line 305
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 376
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    .line 393
    iput-object v2, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAltTextLocalized()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    if-gez v0, :cond_7

    .line 463
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSerializedSize()I

    .line 465
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    return v0
.end method

.method public getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    return-object v0
.end method

.method public getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    return-object v0
.end method

.method public getImageType()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionInSequence()I
    .registers 2

    .prologue
    .line 289
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    return v0
.end method

.method public getSecureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 471
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 475
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 479
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 483
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 487
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 491
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getPositionInSequence()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 495
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 499
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_84
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->cachedSize:I

    .line 503
    return v0
.end method

.method public getSupportsFifeUrlOptions()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    return v0
.end method

.method public hasAltTextLocalized()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    return v0
.end method

.method public hasCitation()Z
    .registers 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation:Z

    return v0
.end method

.method public hasDimension()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    return v0
.end method

.method public hasImageType()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    return v0
.end method

.method public hasImageUrl()Z
    .registers 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    return v0
.end method

.method public hasPositionInSequence()Z
    .registers 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence:Z

    return v0
.end method

.method public hasSecureUrl()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    return v0
.end method

.method public hasSupportsFifeUrlOptions()Z
    .registers 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 511
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 515
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    :sswitch_d
    return-object p0

    .line 521
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 525
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;-><init>()V

    .line 526
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 527
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 531
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;
    :sswitch_23
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 535
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 539
    :sswitch_33
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 543
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setPositionInSequence(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 547
    :sswitch_43
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setSupportsFifeUrlOptions(Z)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 551
    :sswitch_4b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;-><init>()V

    .line 552
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;
    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 553
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->setCitation(Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    goto :goto_0

    .line 511
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x13 -> :sswitch_16
        0x2a -> :sswitch_23
        0x32 -> :sswitch_2b
        0x3a -> :sswitch_33
        0x40 -> :sswitch_3b
        0x48 -> :sswitch_43
        0x53 -> :sswitch_4b
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    return-object v0
.end method

.method public setAltTextLocalized(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized:Z

    .line 364
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->altTextLocalized_:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public setCitation(Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 397
    if-nez p1, :cond_8

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 400
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation:Z

    .line 401
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->citation_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    .line 402
    return-object p0
.end method

.method public setDimension(Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 309
    if-nez p1, :cond_8

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 312
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension:Z

    .line 313
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->dimension_:Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    .line 314
    return-object p0
.end method

.method public setImageType(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType:Z

    .line 276
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageType_:I

    .line 277
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl:Z

    .line 330
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->imageUrl_:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public setPositionInSequence(I)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence:Z

    .line 293
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->positionInSequence_:I

    .line 294
    return-object p0
.end method

.method public setSecureUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl:Z

    .line 347
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->secureUrl_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public setSupportsFifeUrlOptions(Z)Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 3
    .parameter "value"

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions:Z

    .line 381
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;->supportsFifeUrlOptions_:Z

    .line 382
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
    .line 433
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageType()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 436
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasDimension()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 437
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 439
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 440
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 442
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasAltTextLocalized()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 443
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getAltTextLocalized()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 445
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSecureUrl()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 446
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSecureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 448
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasPositionInSequence()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 449
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getPositionInSequence()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 451
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasSupportsFifeUrlOptions()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 452
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 454
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->hasCitation()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 455
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getCitation()Lcom/google/android/finsky/remoting/protos/Doc$Image$Citation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 457
    :cond_73
    return-void
.end method
