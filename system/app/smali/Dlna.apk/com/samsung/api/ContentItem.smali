.class public Lcom/samsung/api/ContentItem;
.super Ljava/lang/Object;
.source "ContentItem.java"


# instance fields
.field protected mAlbumArtUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mArtist:Ljava/lang/String;

.field protected mChildCount:I

.field protected mContentType:I

.field protected mContentTypeStr:Ljava/lang/String;

.field protected mDate:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mObjectId:Ljava/lang/String;

.field protected mObjectUpdateID:I

.field protected mParentID:Ljava/lang/String;

.field protected mRawNode:Lcom/samsung/xml/Node;

.field protected mResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentResource;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mParentID:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/samsung/api/ContentItem;->mChildCount:I

    .line 90
    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mRawNode:Lcom/samsung/xml/Node;

    .line 130
    const-string v0, "0"

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mObjectId:Ljava/lang/String;

    .line 131
    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mParentID:Ljava/lang/String;

    .line 132
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    .line 133
    iput v1, p0, Lcom/samsung/api/ContentItem;->mChildCount:I

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mName:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "node"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mParentID:Ljava/lang/String;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/api/ContentItem;->mChildCount:I

    .line 90
    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mRawNode:Lcom/samsung/xml/Node;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    .line 146
    iput-object p1, p0, Lcom/samsung/api/ContentItem;->mRawNode:Lcom/samsung/xml/Node;

    .line 147
    invoke-direct {p0, p1}, Lcom/samsung/api/ContentItem;->parseValues(Lcom/samsung/xml/Node;)V

    .line 148
    return-void
.end method

.method private getResourceByProfile(Ljava/lang/String;)Lcom/samsung/api/ContentResource;
    .registers 6
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v3, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_b

    move-object v1, v2

    .line 398
    :cond_a
    :goto_a
    return-object v1

    .line 393
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_16

    move-object v1, v2

    .line 398
    goto :goto_a

    .line 394
    :cond_16
    iget-object v3, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/api/ContentResource;

    .line 395
    .local v1, res:Lcom/samsung/api/ContentResource;
    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getProtocolInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private parseValues(Lcom/samsung/xml/Node;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 419
    if-nez p1, :cond_8

    .line 559
    :cond_7
    return-void

    .line 422
    :cond_8
    instance-of v1, p1, Lcom/samsung/upnp/media/server/object/ContentNode;

    if-eqz v1, :cond_d6

    .line 423
    check-cast p1, Lcom/samsung/upnp/media/server/object/ContentNode;

    .line 424
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getParentID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mParentID:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mObjectId:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mName:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getUPnPClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    .line 428
    const-string v1, "dc:date"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mDate:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mArtist:Ljava/lang/String;

    .line 430
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mSubtitle:Ljava/lang/String;

    .line 434
    :try_start_3a
    const-string v1, "upnp:objectUpdateID"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/api/ContentItem;->mObjectUpdateID:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_46} :catch_a2

    .line 440
    :goto_46
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    const-string v2, "object.container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 441
    iput v5, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    .line 452
    :goto_52
    instance-of v1, p1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v1, :cond_7

    .line 453
    check-cast p1, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 454
    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/item/ItemNode;->getResources()Lcom/samsung/upnp/media/server/object/ContentPropertyList;

    move-result-object v2

    move v1, v0

    .line 456
    :goto_5d
    invoke-virtual {v2}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 457
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/media/server/object/ContentPropertyList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/ContentProperty;

    .line 458
    new-instance v3, Lcom/samsung/api/ContentResource;

    invoke-direct {v3}, Lcom/samsung/api/ContentResource;-><init>()V

    .line 459
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setDuration(Ljava/lang/String;)V

    .line 460
    const-string v4, "protocolInfo"

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setProtocolInfo(Ljava/lang/String;)V

    .line 461
    const-string v4, "resolution"

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setResolutionInfo(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setResourceUrl(Ljava/lang/String;)V

    .line 463
    const-string v4, "size"

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/media/server/object/ContentProperty;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/api/ContentResource;->setSize(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5d

    .line 435
    :catch_a2
    move-exception v1

    .line 436
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    iput v4, p0, Lcom/samsung/api/ContentItem;->mObjectUpdateID:I

    goto :goto_46

    .line 442
    :cond_a9
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    const-string v2, "object.item.imageItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 443
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_52

    .line 444
    :cond_b7
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    const-string v2, "object.item.audioItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 445
    iput v6, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_52

    .line 446
    :cond_c4
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    const-string v2, "object.item.videoItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 447
    iput v7, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_52

    .line 449
    :cond_d1
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto/16 :goto_52

    .line 470
    :cond_d6
    const-string v1, "parentID"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mParentID:Ljava/lang/String;

    .line 471
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getAttribute(Ljava/lang/String;)Lcom/samsung/xml/Attribute;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_ec

    .line 473
    invoke-virtual {v1}, Lcom/samsung/xml/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mObjectId:Ljava/lang/String;

    .line 477
    :cond_ec
    const-string v1, "dc:title"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 478
    if-eqz v1, :cond_fa

    .line 479
    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mName:Ljava/lang/String;

    .line 482
    :cond_fa
    const-string v1, "upnp:class"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 483
    const-string v2, ""

    .line 484
    if-eqz v1, :cond_1a1

    .line 485
    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 489
    :goto_108
    iput-object v1, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    .line 491
    const-string v2, "dc:date"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 492
    if-eqz v2, :cond_118

    .line 493
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/api/ContentItem;->mDate:Ljava/lang/String;

    .line 495
    :cond_118
    const-string v2, "upnp:artist"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_126

    .line 497
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/api/ContentItem;->mArtist:Ljava/lang/String;

    .line 500
    :cond_126
    const-string v2, "sec:CaptionInfo"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 501
    if-eqz v2, :cond_134

    .line 502
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/api/ContentItem;->mSubtitle:Ljava/lang/String;

    .line 506
    :cond_134
    :try_start_134
    const-string v2, "upnp:objectUpdateID"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_146

    .line 508
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/api/ContentItem;->mObjectUpdateID:I
    :try_end_146
    .catch Ljava/lang/NumberFormatException; {:try_start_134 .. :try_end_146} :catch_1a9

    .line 515
    :cond_146
    :goto_146
    :try_start_146
    const-string v2, "childCount"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 516
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_166

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_166

    .line 517
    const-string v2, "childCount"

    invoke-virtual {p1, v2}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/api/ContentItem;->mChildCount:I
    :try_end_166
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_166} :catch_1b0

    .line 522
    :cond_166
    :goto_166
    const-string v2, "object.container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 523
    iput v5, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    :goto_170
    move v1, v0

    .line 534
    :goto_171
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v2

    if-lt v1, v2, :cond_1da

    .line 552
    :goto_177
    invoke-virtual {p1}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 553
    invoke-virtual {p1, v0}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_19e

    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19e

    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumArtURI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19e

    .line 555
    iget-object v2, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_19e
    add-int/lit8 v0, v0, 0x1

    goto :goto_177

    .line 487
    :cond_1a1
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_108

    .line 509
    :catch_1a9
    move-exception v2

    .line 510
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 511
    iput v4, p0, Lcom/samsung/api/ContentItem;->mObjectUpdateID:I

    goto :goto_146

    .line 518
    :catch_1b0
    move-exception v2

    .line 519
    iput v4, p0, Lcom/samsung/api/ContentItem;->mChildCount:I

    goto :goto_166

    .line 524
    :cond_1b4
    const-string v2, "object.item.imageItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 525
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_170

    .line 526
    :cond_1c0
    const-string v2, "object.item.audioItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 527
    iput v6, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_170

    .line 528
    :cond_1cb
    const-string v2, "object.item.videoItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d6

    .line 529
    iput v7, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_170

    .line 531
    :cond_1d6
    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    goto :goto_170

    .line 535
    :cond_1da
    invoke-virtual {p1, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_23d

    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23d

    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "res"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 538
    new-instance v3, Lcom/samsung/api/ContentResource;

    invoke-direct {v3}, Lcom/samsung/api/ContentResource;-><init>()V

    .line 539
    const-string v4, "duration"

    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setDuration(Ljava/lang/String;)V

    .line 540
    const-string v4, "protocolInfo"

    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setProtocolInfo(Ljava/lang/String;)V

    .line 541
    const-string v4, "resolution"

    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setResolutionInfo(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 543
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 544
    if-eqz v4, :cond_222

    invoke-virtual {v4}, Landroid/net/Uri;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_228

    .line 545
    :cond_222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 546
    :cond_228
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/api/ContentResource;->setResourceUrl(Ljava/lang/String;)V

    .line 547
    const-string v4, "size"

    invoke-virtual {v2, v4}, Lcom/samsung/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/api/ContentResource;->setSize(Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_23d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_171
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 366
    if-nez p1, :cond_6

    move v0, v1

    .line 376
    .end local p1
    :goto_5
    return v0

    .line 368
    .restart local p1
    :cond_6
    if-ne p0, p1, :cond_a

    move v0, v2

    .line 369
    goto :goto_5

    .line 370
    :cond_a
    instance-of v0, p1, Lcom/samsung/api/ContentItem;

    if-nez v0, :cond_10

    move v0, v1

    .line 371
    goto :goto_5

    :cond_10
    move-object v0, p1

    .line 372
    check-cast v0, Lcom/samsung/api/ContentItem;

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v3

    if-eq v0, v3, :cond_1f

    move v0, v1

    .line 373
    goto :goto_5

    :cond_1f
    move-object v0, p1

    .line 374
    check-cast v0, Lcom/samsung/api/ContentItem;

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    check-cast p1, Lcom/samsung/api/ContentItem;

    .end local p1
    invoke-virtual {p1}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    move v0, v2

    .line 375
    goto :goto_5

    :cond_3a
    move v0, v1

    .line 376
    goto :goto_5
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 227
    iget v0, p0, Lcom/samsung/api/ContentItem;->mChildCount:I

    return v0
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/samsung/api/ContentItem;->mContentType:I

    return v0
.end method

.method public getContentTypeStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mContentTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultResouce()Lcom/samsung/api/ContentResource;
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    .line 266
    const/4 v0, 0x0

    .line 267
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/ContentResource;

    goto :goto_9
.end method

.method public getDefaultResourceDuration()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 322
    const-string v0, "00:00:00"

    .line 323
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/ContentResource;

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getDuration()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getDefaultResourceSize()Ljava/lang/String;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_b

    .line 336
    const-string v0, "0"

    .line 337
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/ContentResource;

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mObjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/api/ContentItem;->mResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSnapImageUri()Ljava/lang/String;
    .registers 4

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, res:Lcom/samsung/api/ContentResource;
    invoke-virtual {p0}, Lcom/samsung/api/ContentItem;->getThumbnailResource()Lcom/samsung/api/ContentResource;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_c

    .line 300
    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    .line 309
    :goto_b
    return-object v1

    .line 302
    :cond_c
    const-string v1, "_SM"

    invoke-direct {p0, v1}, Lcom/samsung/api/ContentItem;->getResourceByProfile(Ljava/lang/String;)Lcom/samsung/api/ContentResource;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_19

    .line 304
    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 306
    :cond_19
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 307
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mAlbumArtUris:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_b

    .line 309
    :cond_2f
    const-string v1, ""

    goto :goto_b
.end method

.method public getThumbnailResource()Lcom/samsung/api/ContentResource;
    .registers 2

    .prologue
    .line 277
    const-string v0, "_TN"

    invoke-direct {p0, v0}, Lcom/samsung/api/ContentItem;->getResourceByProfile(Ljava/lang/String;)Lcom/samsung/api/ContentResource;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 381
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 345
    new-instance v0, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;-><init>()V

    .line 346
    .local v0, node:Lcom/samsung/upnp/media/server/object/DIDLLiteNode;
    iget-object v1, p0, Lcom/samsung/api/ContentItem;->mRawNode:Lcom/samsung/xml/Node;

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->addNode(Lcom/samsung/xml/Node;)V

    .line 347
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/DIDLLiteNode;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
