.class Lcom/google/android/picasasync/GDataUploader$GDataResponse;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GDataUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/GDataUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GDataResponse"
.end annotation


# instance fields
.field errorCode:Ljava/lang/String;

.field fingerprint:Lcom/android/gallery3d/common/Fingerprint;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/StringBuilder;

.field photoId:J

.field photoSize:J

.field photoUrl:Ljava/lang/String;

.field timestamp:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 532
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasasync/GDataUploader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;-><init>()V

    return-void
.end method

.method private getMediaContentAttrs(Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .registers 6
    .parameter "attrs"

    .prologue
    .line 634
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 635
    .local v0, attrCount:I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 636
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, name:Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 638
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 641
    .end local v2           #name:Ljava/lang/String;
    :goto_17
    return-object v3

    .line 635
    .restart local v2       #name:Ljava/lang/String;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 641
    .end local v2           #name:Ljava/lang/String;
    :cond_1b
    const-string v3, ""

    goto :goto_17
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 586
    :cond_9
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 590
    const-string v0, "gphoto:streamId"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 592
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1b

    .line 593
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    .line 597
    return-void
.end method

.method public startDocument()V
    .registers 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 558
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:streamId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v1, "gphoto:timestamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    .line 571
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1d

    .line 574
    const-string v0, "media:content"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 575
    invoke-direct {p0, p4}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->getMediaContentAttrs(Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    .line 581
    :cond_1c
    :goto_1c
    return-void

    .line 579
    :cond_1d
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1c
.end method

.method public validateResult()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$UploadException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    .line 602
    :try_start_10
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:id"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoId:J
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_24} :catch_5c

    .line 608
    :try_start_24
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoSize:J
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_38} :catch_7e

    .line 614
    :try_start_38
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v2, "gphoto:timestamp"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->timestamp:J
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_4c} :catch_a0

    .line 621
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 622
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v2, "photo URL missing"

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    :catch_5c
    move-exception v0

    .line 604
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing photo ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 609
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_7e
    move-exception v0

    .line 610
    .restart local v0       #ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing photo size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:size"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_a0
    move-exception v0

    .line 617
    .restart local v0       #ex:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mMap:Ljava/util/HashMap;

    const-string v4, "gphoto:timestamp"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_c2
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/gallery3d/common/Fingerprint;->extractFingerprint(Ljava/util/List;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    .line 626
    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    if-nez v1, :cond_e9

    .line 627
    new-instance v1, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->mStreamIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_e9
    return-void
.end method
