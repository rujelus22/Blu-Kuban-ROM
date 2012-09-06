.class public final Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CheckPromoOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CheckPromoOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddCreditCardPromoOffer"
.end annotation


# instance fields
.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private hasDescriptionHtml:Z

.field private hasHeaderText:Z

.field private hasImage:Z

.field private hasIntroductoryTextHtml:Z

.field private hasNoActionDescription:Z

.field private hasOfferTitle:Z

.field private hasTermsAndConditionsHtml:Z

.field private headerText_:Ljava/lang/String;

.field private image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

.field private introductoryTextHtml_:Ljava/lang/String;

.field private noActionDescription_:Ljava/lang/String;

.field private offerTitle_:Ljava/lang/String;

.field private termsAndConditionsHtml_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->headerText_:Ljava/lang/String;

    .line 216
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->introductoryTextHtml_:Ljava/lang/String;

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->offerTitle_:Ljava/lang/String;

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->descriptionHtml_:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->termsAndConditionsHtml_:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->noActionDescription_:Ljava/lang/String;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->cachedSize:I

    .line 194
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->cachedSize:I

    if-gez v0, :cond_7

    .line 368
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getSerializedSize()I

    .line 370
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->headerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    return-object v0
.end method

.method public getIntroductoryTextHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->introductoryTextHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoActionDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->noActionDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->offerTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasHeaderText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasDescriptionHtml()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 381
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 385
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasIntroductoryTextHtml()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 389
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getIntroductoryTextHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasOfferTitle()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 393
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getOfferTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasNoActionDescription()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 397
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getNoActionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasTermsAndConditionsHtml()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 401
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getTermsAndConditionsHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_71
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->cachedSize:I

    .line 405
    return v0
.end method

.method public getTermsAndConditionsHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->termsAndConditionsHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasHeaderText()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasHeaderText:Z

    return v0
.end method

.method public hasImage()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasImage:Z

    return v0
.end method

.method public hasIntroductoryTextHtml()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasIntroductoryTextHtml:Z

    return v0
.end method

.method public hasNoActionDescription()Z
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasNoActionDescription:Z

    return v0
.end method

.method public hasOfferTitle()Z
    .registers 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasOfferTitle:Z

    return v0
.end method

.method public hasTermsAndConditionsHtml()Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasTermsAndConditionsHtml:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 414
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_4a

    .line 418
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 419
    :sswitch_d
    return-object p0

    .line 424
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 428
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 432
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 433
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 434
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 438
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setIntroductoryTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 442
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setOfferTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 446
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setNoActionDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 450
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->setTermsAndConditionsHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    goto :goto_0

    .line 414
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_42
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
    .line 191
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasDescriptionHtml:Z

    .line 255
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->descriptionHtml_:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasHeaderText:Z

    .line 204
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->headerText_:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 288
    if-nez p1, :cond_8

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasImage:Z

    .line 292
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->image_:Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 293
    return-object p0
.end method

.method public setIntroductoryTextHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasIntroductoryTextHtml:Z

    .line 221
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->introductoryTextHtml_:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setNoActionDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasNoActionDescription:Z

    .line 309
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->noActionDescription_:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public setOfferTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasOfferTitle:Z

    .line 238
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->offerTitle_:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public setTermsAndConditionsHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .registers 3
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasTermsAndConditionsHtml:Z

    .line 272
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->termsAndConditionsHtml_:Ljava/lang/String;

    .line 273
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
    .line 340
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasHeaderText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 343
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasDescriptionHtml()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 344
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 346
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 347
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getImage()Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 349
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasIntroductoryTextHtml()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 350
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getIntroductoryTextHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 352
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasOfferTitle()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 353
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getOfferTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 355
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasNoActionDescription()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 356
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getNoActionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 358
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->hasTermsAndConditionsHtml()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 359
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;->getTermsAndConditionsHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 361
    :cond_62
    return-void
.end method
