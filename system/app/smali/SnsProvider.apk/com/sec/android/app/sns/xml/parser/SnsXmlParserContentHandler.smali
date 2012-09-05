.class public abstract Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SnsXmlParserContentHandler.java"


# instance fields
.field protected mDataStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

.field protected mSkipParsingTag:I

.field protected mTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mbIsLoggable:Z


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 75
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    .line 77
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    .line 79
    iput v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    .line 87
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 88
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    .line 89
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    .line 90
    iput v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 92
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "SNS_PARSER"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    .line 97
    :goto_35
    return-void

    .line 95
    :cond_36
    iput-boolean v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    goto :goto_35
.end method

.method private appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "dest"
    .parameter "src"

    .prologue
    .line 501
    if-nez p1, :cond_3

    .line 504
    .end local p2
    :goto_2
    return-object p2

    .restart local p2
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2
.end method


# virtual methods
.method protected doesTagHaveBindParseFunc(I)Z
    .registers 3
    .parameter "tagType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_8

    .line 239
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 197
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 131
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getAttrEnum(Ljava/lang/String;)I
    .registers 9
    .parameter "attrName"

    .prologue
    .line 478
    const/4 v3, 0x0

    .line 479
    .local v3, low:I
    const/16 v2, 0xbe

    .line 481
    .local v2, high:I
    :goto_3
    if-lt v2, v3, :cond_1b

    .line 482
    add-int v4, v3, v2

    div-int/lit8 v1, v4, 0x2

    .line 484
    .local v1, half:I
    sget-object v4, Lcom/sec/android/app/sns/type/SnsXmlParserAttribute;->_NAME_:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, diff:I
    if-lez v0, :cond_16

    .line 487
    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    .line 488
    :cond_16
    if-gez v0, :cond_3f

    .line 489
    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    .line 494
    .end local v0           #diff:I
    .end local v1           #half:I
    :cond_1b
    iget-boolean v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v4, :cond_3d

    .line 495
    const-string v4, "SNS_PARSER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAttrEnum() : UNKNOWN ATTRIBUTE : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_3d
    const/16 v1, 0xbf

    :cond_3f
    return v1
.end method

.method getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    goto :goto_9
.end method

.method public getParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    return-object v0
.end method

.method public getTagEnum(Ljava/lang/String;)I
    .registers 9
    .parameter "tagName"

    .prologue
    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, low:I
    const/16 v2, 0x65

    .line 450
    .local v2, high:I
    :goto_3
    if-lt v2, v3, :cond_1b

    .line 451
    add-int v4, v3, v2

    div-int/lit8 v1, v4, 0x2

    .line 453
    .local v1, half:I
    sget-object v4, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, diff:I
    if-lez v0, :cond_16

    .line 456
    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    .line 457
    :cond_16
    if-gez v0, :cond_3f

    .line 458
    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    .line 463
    .end local v0           #diff:I
    .end local v1           #half:I
    :cond_1b
    iget-boolean v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v4, :cond_3d

    .line 464
    const-string v4, "SNS_PARSER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTagEnum() : UNKNOWN TAG : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_3d
    const/16 v1, 0x66

    :cond_3f
    return v1
.end method

.method protected invokeParseTagMethod(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    sparse-switch p1, :sswitch_data_6a

    .line 429
    :goto_3
    return-void

    .line 249
    :sswitch_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseAttachedPhoto(ILorg/xml/sax/Attributes;)V
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_3

    .line 426
    :catch_8
    move-exception v0

    .line 427
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 253
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseAuthor(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 257
    :sswitch_e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseCaption(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 261
    :sswitch_12
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseComment(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 265
    :sswitch_16
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseCommenter(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 269
    :sswitch_1a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseContent(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 273
    :sswitch_1e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseCreator(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 277
    :sswitch_22
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseCryptSessionKey(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 281
    :sswitch_26
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseDescription(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 285
    :sswitch_2a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseFavorite(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 289
    :sswitch_2e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseForwarder(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 293
    :sswitch_32
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseMainPhoto(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 297
    :sswitch_36
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseMood(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 301
    :sswitch_3a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseName(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 305
    :sswitch_3e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parsePhoto(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 309
    :sswitch_42
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseProfilePhoto(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 313
    :sswitch_46
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseRelatedContent(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 317
    :sswitch_4a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseRemoteLoginInfo(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 321
    :sswitch_4e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseResponse(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 325
    :sswitch_52
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseStatus(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 329
    :sswitch_56
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseTarget(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 333
    :sswitch_5a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseTag(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 337
    :sswitch_5e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseText(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 341
    :sswitch_62
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseThumbnail(ILorg/xml/sax/Attributes;)V

    goto :goto_3

    .line 345
    :sswitch_66
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->parseUser(ILorg/xml/sax/Attributes;)V
    :try_end_69
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_69} :catch_8

    goto :goto_3

    .line 247
    :sswitch_data_6a
    .sparse-switch
        0x6 -> :sswitch_4
        0x8 -> :sswitch_a
        0xa -> :sswitch_e
        0xc -> :sswitch_12
        0xd -> :sswitch_16
        0xf -> :sswitch_1a
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_22
        0x14 -> :sswitch_26
        0x19 -> :sswitch_2a
        0x1b -> :sswitch_2e
        0x29 -> :sswitch_32
        0x2d -> :sswitch_36
        0x2e -> :sswitch_3a
        0x3c -> :sswitch_3e
        0x43 -> :sswitch_42
        0x4a -> :sswitch_46
        0x4d -> :sswitch_4a
        0x4f -> :sswitch_4e
        0x57 -> :sswitch_52
        0x59 -> :sswitch_5a
        0x5a -> :sswitch_56
        0x5c -> :sswitch_5e
        0x5e -> :sswitch_62
        0x62 -> :sswitch_66
    .end sparse-switch
.end method

.method public parseAttachedPhoto(ILorg/xml/sax/Attributes;)V
    .registers 24
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    .line 805
    new-instance v17, Lorg/xml/sax/SAXException;

    const-string v18, "parseAttachedPhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct/range {v17 .. v18}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 807
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v13

    .line 808
    .local v13, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v13, :cond_1e

    .line 809
    new-instance v17, Lorg/xml/sax/SAXException;

    const-string v18, "parseAttachedPhoto() : parentObj is SHOULD NOT BE NULL !!!"

    invoke-direct/range {v17 .. v18}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 812
    :cond_1e
    const/4 v3, 0x0

    .line 813
    .local v3, attachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;
    const/4 v8, 0x0

    .line 814
    .local v8, firstAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;
    const/4 v10, 0x0

    .line 816
    .local v10, lastAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;
    const/4 v15, 0x0

    .line 817
    .local v15, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    const/4 v11, 0x0

    .line 818
    .local v11, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    const/4 v7, 0x0

    .line 819
    .local v7, event:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;
    const/16 v16, 0x0

    .line 821
    .local v16, url:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 822
    .local v14, parentTag:I
    sparse-switch v14, :sswitch_data_160

    .line 866
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 867
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_91

    .line 868
    const-string v17, "SNS_PARSER"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SnsSvcXmlParser::parseAttachedPhoto : [mTagStack = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ], SKIPPING-TAG = <"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 934
    :goto_9e
    return-void

    :sswitch_9f
    move-object v12, v13

    .line 826
    check-cast v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 827
    .local v12, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    if-eqz v17, :cond_dd

    .line 828
    iget-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 829
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 878
    .end local v12           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :goto_b2
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .end local v3           #attachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;
    invoke-direct {v3}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;-><init>()V

    .line 880
    .restart local v3       #attachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;
    if-nez v8, :cond_ba

    .line 881
    move-object v8, v3

    .line 884
    :cond_ba
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 886
    if-eqz p2, :cond_13e

    .line 887
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 888
    .local v2, attCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c3
    if-ge v9, v2, :cond_13e

    .line 889
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v5

    .line 893
    .local v5, attrType:I
    sparse-switch v5, :sswitch_data_172

    .line 888
    :goto_da
    add-int/lit8 v9, v9, 0x1

    goto :goto_c3

    .line 831
    .end local v2           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v9           #i:I
    .restart local v12       #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :cond_dd
    move-object v15, v12

    goto :goto_b2

    .end local v12           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :sswitch_df
    move-object v12, v13

    .line 836
    check-cast v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 837
    .local v12, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f3

    .line 838
    iget-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 839
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_b2

    .line 841
    :cond_f3
    move-object v11, v12

    goto :goto_b2

    .end local v12           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    :sswitch_f5
    move-object v12, v13

    .line 846
    check-cast v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;

    .line 847
    .local v12, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    if-eqz v17, :cond_109

    .line 848
    iget-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 849
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_b2

    .line 851
    :cond_109
    move-object v7, v12

    goto :goto_b2

    .end local v12           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;
    :sswitch_10b
    move-object v12, v13

    .line 856
    check-cast v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;

    .line 857
    .local v12, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11f

    .line 858
    iget-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 859
    iget-object v0, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_b2

    .line 861
    :cond_11f
    move-object/from16 v16, v12

    goto :goto_b2

    .line 895
    .end local v12           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;
    .restart local v2       #attCount:I
    .restart local v4       #attrName:Ljava/lang/String;
    .restart local v5       #attrType:I
    .restart local v6       #attrValue:Ljava/lang/String;
    .restart local v9       #i:I
    :sswitch_122
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mID:Ljava/lang/String;

    goto :goto_da

    .line 898
    :sswitch_125
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mAlbumID:Ljava/lang/String;

    goto :goto_da

    .line 901
    :sswitch_128
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mThumbnailURL:Ljava/lang/String;

    goto :goto_da

    .line 904
    :sswitch_12b
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mURL:Ljava/lang/String;

    goto :goto_da

    .line 907
    :sswitch_12e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mSize:Ljava/lang/Integer;

    goto :goto_da

    .line 910
    :sswitch_13b
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mResolution:Ljava/lang/String;

    goto :goto_da

    .line 918
    .end local v2           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v9           #i:I
    :cond_13e
    if-nez v10, :cond_15c

    .line 920
    if-eqz v15, :cond_14b

    .line 921
    iput-object v3, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    .line 933
    :cond_144
    :goto_144
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto/16 :goto_9e

    .line 922
    :cond_14b
    if-eqz v11, :cond_150

    .line 923
    iput-object v3, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_144

    .line 924
    :cond_150
    if-eqz v7, :cond_155

    .line 925
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEvent;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_144

    .line 926
    :cond_155
    if-eqz v16, :cond_144

    .line 927
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataURL;->mAttachedPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_144

    .line 931
    :cond_15c
    iput-object v3, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachedPhoto;

    goto :goto_144

    .line 822
    nop

    :sswitch_data_160
    .sparse-switch
        0x17 -> :sswitch_f5
        0x31 -> :sswitch_df
        0x3c -> :sswitch_9f
        0x60 -> :sswitch_10b
    .end sparse-switch

    .line 893
    :sswitch_data_172
    .sparse-switch
        0x7 -> :sswitch_125
        0x51 -> :sswitch_122
        0x91 -> :sswitch_13b
        0x9c -> :sswitch_12e
        0xab -> :sswitch_128
        0xb0 -> :sswitch_12b
    .end sparse-switch
.end method

.method public parseAuthor(ILorg/xml/sax/Attributes;)V
    .registers 19
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 944
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v12, :cond_e

    .line 945
    new-instance v12, Lorg/xml/sax/SAXException;

    const-string v13, "parseAuthor() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v12, v13}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 947
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 948
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v5, 0x0

    .line 949
    .local v5, author:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;
    const/4 v11, 0x0

    .line 950
    .local v11, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    const/4 v7, 0x0

    .line 952
    .local v7, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v12, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 953
    .local v10, parentTag:I
    sparse-switch v10, :sswitch_data_c2

    .line 966
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 967
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v12, :cond_74

    .line 968
    const-string v12, "SNS_PARSER"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SnsSvcXmlParser::parseAuthor : [mTagStack = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ], SKIPPING-TAG = <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_74
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1008
    :goto_7d
    return-void

    :sswitch_7e
    move-object v8, v9

    .line 956
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 957
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object v11, v8

    .line 978
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :goto_82
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    .end local v5           #author:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;-><init>()V

    .line 980
    .restart local v5       #author:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;
    if-eqz p2, :cond_b3

    .line 981
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 982
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8e
    if-ge v6, v1, :cond_b3

    .line 983
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 984
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 985
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 987
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_cc

    .line 982
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :sswitch_a8
    move-object v8, v9

    .line 961
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 962
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    move-object v7, v8

    .line 964
    goto :goto_82

    .line 989
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_ad
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mID:Ljava/lang/String;

    goto :goto_a5

    .line 992
    :sswitch_b0
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mName:Ljava/lang/String;

    goto :goto_a5

    .line 1002
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_b3
    if-eqz v11, :cond_bd

    .line 1003
    iput-object v5, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    .line 1007
    :cond_b7
    :goto_b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_7d

    .line 1004
    :cond_bd
    if-eqz v7, :cond_b7

    .line 1005
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mAuthor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    goto :goto_b7

    .line 953
    :sswitch_data_c2
    .sparse-switch
        0x31 -> :sswitch_a8
        0x3c -> :sswitch_7e
    .end sparse-switch

    .line 987
    :sswitch_data_cc
    .sparse-switch
        0x51 -> :sswitch_ad
        0x6f -> :sswitch_b0
    .end sparse-switch
.end method

.method public parseCDATA(Ljava/lang/String;I)V
    .registers 31
    .parameter "value"
    .parameter "nLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v9, 0x0

    .line 516
    .local v9, destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/16 v7, 0x66

    .line 517
    .local v7, currentTag:I
    const/16 v19, 0x66

    .line 519
    .local v19, parentTag:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->size()I

    move-result v23

    .line 520
    .local v23, tagStackSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->size()I

    move-result v8

    .line 521
    .local v8, dataStackSize:I
    add-int/lit8 v12, v23, -0x1

    .line 522
    .local v12, indexCurrent:I
    add-int/lit8 v13, v12, -0x1

    .line 524
    .local v13, indexParent:I
    const/16 v24, 0x66

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5c

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5b

    .line 526
    const-string v24, "SNS_PARSER"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parseCDATA() : Now Skipping tag <"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v27, v0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ">"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_5b
    :goto_5b
    return-void

    .line 532
    :cond_5c
    move/from16 v0, v23

    if-eq v0, v8, :cond_8f

    .line 533
    new-instance v24, Lorg/xml/sax/SAXException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "parseCDATA() : tagStackSize["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] is not equal to dataStackSize["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "] !!!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 538
    :cond_8f
    if-gez v13, :cond_99

    .line 539
    new-instance v24, Lorg/xml/sax/SAXException;

    const-string v25, "parseCDATA() : indexParent is invalid !!!"

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 542
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 545
    sparse-switch v7, :sswitch_data_3d4

    goto :goto_5b

    .line 783
    :sswitch_c1
    const/16 v24, 0x7

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_5b

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v5, v9

    .line 785
    check-cast v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 786
    .local v5, attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mCaption:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mCaption:Ljava/lang/String;

    goto/16 :goto_5b

    .line 547
    .end local v5           #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    :sswitch_ee
    sparse-switch v19, :sswitch_data_3f2

    goto/16 :goto_5b

    .line 549
    :sswitch_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v3, v9

    .line 550
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 551
    .local v3, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 563
    .end local v3           #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :sswitch_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v6, v9

    .line 564
    check-cast v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 565
    .local v6, comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    iget-object v0, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 602
    .end local v6           #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    :sswitch_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v14, v9

    .line 603
    check-cast v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 604
    .local v14, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    iget-object v0, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 608
    .end local v14           #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :sswitch_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v16, v9

    .line 609
    check-cast v16, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 610
    .local v16, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 614
    .end local v16           #note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    :sswitch_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v17, v9

    .line 615
    check-cast v17, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 616
    .local v17, notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 620
    .end local v17           #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :sswitch_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v18, v9

    .line 621
    check-cast v18, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .line 622
    .local v18, object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 626
    .end local v18           #object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    :sswitch_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v20, v9

    .line 627
    check-cast v20, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 628
    .local v20, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 632
    .end local v20           #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :sswitch_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v22, v9

    .line 633
    check-cast v22, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 634
    .local v22, status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    goto/16 :goto_5b

    .line 645
    .end local v22           #status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    :sswitch_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v21, v9

    .line 646
    check-cast v21, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 647
    .local v21, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 656
    .end local v21           #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :sswitch_25e
    sparse-switch v19, :sswitch_data_418

    goto/16 :goto_5b

    .line 658
    :sswitch_263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v4, v9

    .line 659
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 660
    .local v4, album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    iget-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mDescription:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mDescription:Ljava/lang/String;

    goto/16 :goto_5b

    .line 664
    .end local v4           #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    :sswitch_288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v11, v9

    .line 665
    check-cast v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 666
    .local v11, group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    iget-object v0, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mDescription:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mDescription:Ljava/lang/String;

    goto/16 :goto_5b

    .line 670
    .end local v11           #group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    :sswitch_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v10, v9

    .line 671
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 672
    .local v10, friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    iget-object v0, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mDescription:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mDescription:Ljava/lang/String;

    goto/16 :goto_5b

    .line 705
    .end local v10           #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    :sswitch_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v5, v9

    .line 706
    check-cast v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 707
    .restart local v5       #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mDescription:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mDescription:Ljava/lang/String;

    goto/16 :goto_5b

    .line 711
    .end local v5           #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    :sswitch_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v21, v9

    .line 712
    check-cast v21, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 713
    .restart local v21       #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mDescription:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mDescription:Ljava/lang/String;

    goto/16 :goto_5b

    .line 747
    .end local v21           #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :sswitch_321
    packed-switch v19, :pswitch_data_42e

    goto/16 :goto_5b

    .line 749
    :pswitch_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v17, v9

    .line 750
    check-cast v17, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 751
    .restart local v17       #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedContent:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedContent:Ljava/lang/String;

    goto/16 :goto_5b

    .line 761
    .end local v17           #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :sswitch_350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object/from16 v22, v9

    .line 762
    check-cast v22, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 763
    .restart local v22       #status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    goto/16 :goto_5b

    .line 767
    .end local v22           #status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    :sswitch_37a
    const/16 v24, 0x2d

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_5b

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v15, v9

    .line 769
    check-cast v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    .line 770
    .local v15, mood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;
    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mText:Ljava/lang/String;

    goto/16 :goto_5b

    .line 775
    .end local v15           #mood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;
    :sswitch_3a7
    const/16 v24, 0x7

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_5b

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .restart local v9       #destObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    move-object v5, v9

    .line 777
    check-cast v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 778
    .restart local v5       #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->appendString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mName:Ljava/lang/String;

    goto/16 :goto_5b

    .line 545
    :sswitch_data_3d4
    .sparse-switch
        0xa -> :sswitch_c1
        0xf -> :sswitch_ee
        0x14 -> :sswitch_25e
        0x2e -> :sswitch_3a7
        0x4a -> :sswitch_321
        0x57 -> :sswitch_350
        0x5c -> :sswitch_37a
    .end sparse-switch

    .line 547
    :sswitch_data_3f2
    .sparse-switch
        0x0 -> :sswitch_f3
        0xc -> :sswitch_118
        0x2c -> :sswitch_13d
        0x31 -> :sswitch_162
        0x32 -> :sswitch_18c
        0x34 -> :sswitch_1b6
        0x3c -> :sswitch_1e0
        0x51 -> :sswitch_234
        0x57 -> :sswitch_20a
    .end sparse-switch

    .line 656
    :sswitch_data_418
    .sparse-switch
        0x4 -> :sswitch_263
        0x7 -> :sswitch_2d2
        0x20 -> :sswitch_288
        0x21 -> :sswitch_2ad
        0x51 -> :sswitch_2f7
    .end sparse-switch

    .line 747
    :pswitch_data_42e
    .packed-switch 0x32
        :pswitch_326
    .end packed-switch
.end method

.method public parseCaption(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 1020
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseCaption() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1024
    return-void
.end method

.method public parseComment(ILorg/xml/sax/Attributes;)V
    .registers 21
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1049
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v14, :cond_e

    .line 1050
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parseComment() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1052
    :cond_e
    const/4 v5, 0x0

    .line 1053
    .local v5, comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    const/4 v6, 0x0

    .line 1054
    .local v6, firstComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    const/4 v8, 0x0

    .line 1056
    .local v8, lastComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    const/4 v9, 0x0

    .line 1057
    .local v9, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    const/4 v13, 0x0

    .line 1059
    .local v13, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v15, 0x15

    if-ne v14, v15, :cond_4c

    .line 1060
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .end local v5           #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v5, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 1121
    .restart local v5       #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    :goto_26
    if-nez v6, :cond_29

    .line 1122
    move-object v6, v5

    .line 1125
    :cond_29
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1127
    if-eqz p2, :cond_13b

    .line 1128
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1129
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_32
    if-ge v7, v1, :cond_13b

    .line 1130
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1131
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1132
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1134
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_154

    .line 1129
    :goto_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 1062
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_4c
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .end local v5           #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;-><init>()V

    .line 1063
    .restart local v5       #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 1066
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_5f

    .line 1067
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parseComment(): parentObj is NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5f
    move-object v14, v11

    .line 1069
    check-cast v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v15, 0x15

    if-ne v14, v15, :cond_86

    .line 1070
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7e

    .line 1071
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    move-object v10, v14

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1072
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    move-object v6, v10

    .line 1073
    iget-object v8, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1074
    goto :goto_26

    .line 1075
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    :cond_7e
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parseComment(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1078
    :cond_86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1079
    .local v12, parentTag:I
    sparse-switch v12, :sswitch_data_16a

    .line 1107
    const/16 v14, 0xc

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1108
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v14, :cond_e9

    .line 1109
    const-string v14, "SNS_PARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SnsSvcXmlParser::parseComment : [mTagStack = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ], SKIPPING-TAG = <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_e9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1174
    .end local v11           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v12           #parentTag:I
    :goto_f2
    return-void

    .restart local v11       #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .restart local v12       #parentTag:I
    :sswitch_f3
    move-object v10, v11

    .line 1081
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 1082
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    if-eqz v14, :cond_102

    .line 1083
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1084
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    iget-object v8, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    goto/16 :goto_26

    .line 1086
    :cond_102
    move-object v9, v10

    goto/16 :goto_26

    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    :sswitch_105
    move-object v10, v11

    .line 1091
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1093
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    if-eqz v14, :cond_114

    .line 1094
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1095
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    iget-object v8, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    goto/16 :goto_26

    .line 1097
    :cond_114
    move-object v13, v10

    goto/16 :goto_26

    .line 1136
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    .end local v11           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v12           #parentTag:I
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_117
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1139
    :sswitch_11b
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTargetID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1142
    :sswitch_11f
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mResult:Ljava/lang/String;

    goto/16 :goto_49

    .line 1147
    :sswitch_123
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mbRecommend:Ljava/lang/Boolean;

    goto/16 :goto_49

    .line 1150
    :sswitch_12f
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCreateTime:Ljava/lang/Long;

    goto/16 :goto_49

    .line 1158
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_13b
    if-nez v8, :cond_151

    .line 1160
    if-eqz v9, :cond_147

    .line 1161
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1173
    :goto_141
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_f2

    .line 1162
    :cond_147
    if-eqz v13, :cond_14c

    .line 1163
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mComment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    goto :goto_141

    .line 1167
    :cond_14c
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_141

    .line 1171
    :cond_151
    iput-object v5, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    goto :goto_141

    .line 1134
    :sswitch_data_154
    .sparse-switch
        0x20 -> :sswitch_12f
        0x51 -> :sswitch_117
        0x86 -> :sswitch_123
        0x94 -> :sswitch_11f
        0xa7 -> :sswitch_11b
    .end sparse-switch

    .line 1079
    :sswitch_data_16a
    .sparse-switch
        0x31 -> :sswitch_f3
        0x3c -> :sswitch_105
    .end sparse-switch
.end method

.method public parseCommenter(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1184
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 1185
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseCommenter() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1187
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 1188
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1a

    .line 1189
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseCommenter() : parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1191
    :cond_1a
    const/4 v6, 0x0

    .line 1192
    .local v6, commenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;
    const/4 v5, 0x0

    .line 1194
    .local v5, comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v12, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1195
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_ac

    .line 1202
    const/16 v11, 0xd

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1203
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6f

    .line 1204
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseCommenter : [mTagStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ], SKIPPING-TAG = <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v14, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_6f
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1241
    :goto_74
    return-void

    :pswitch_75
    move-object v8, v9

    .line 1197
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 1198
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    move-object v5, v8

    .line 1214
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    .end local v6           #commenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;
    invoke-direct {v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;-><init>()V

    .line 1216
    .restart local v6       #commenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;
    if-eqz p2, :cond_a3

    .line 1217
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1219
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_85
    if-ge v7, v1, :cond_a3

    .line 1220
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1222
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1224
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_b2

    .line 1219
    :goto_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 1226
    :sswitch_9d
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mID:Ljava/lang/String;

    goto :goto_9a

    .line 1229
    :sswitch_a0
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mName:Ljava/lang/String;

    goto :goto_9a

    .line 1237
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_a3
    if-eqz v5, :cond_a7

    .line 1238
    iput-object v6, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    .line 1240
    :cond_a7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_74

    .line 1195
    nop

    :pswitch_data_ac
    .packed-switch 0xc
        :pswitch_75
    .end packed-switch

    .line 1224
    :sswitch_data_b2
    .sparse-switch
        0x51 -> :sswitch_9d
        0x6f -> :sswitch_a0
    .end sparse-switch
.end method

.method public parseContent(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 1035
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseContent() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1039
    return-void
.end method

.method public parseCreator(ILorg/xml/sax/Attributes;)V
    .registers 19
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1251
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v12, :cond_e

    .line 1252
    new-instance v12, Lorg/xml/sax/SAXException;

    const-string v13, "parseCreator() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v12, v13}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1254
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 1255
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v5, 0x0

    .line 1256
    .local v5, creator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;
    const/4 v11, 0x0

    .line 1257
    .local v11, status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    const/4 v7, 0x0

    .line 1259
    .local v7, object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v12, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1260
    .local v10, parentTag:I
    sparse-switch v10, :sswitch_data_cc

    .line 1272
    const/16 v12, 0x11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v12, :cond_74

    .line 1274
    const-string v12, "SNS_PARSER"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SnsSvcXmlParser::parseCreator : [mTagStack = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ], SKIPPING-TAG = <"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_74
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1319
    :goto_7d
    return-void

    :sswitch_7e
    move-object v8, v9

    .line 1262
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 1263
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object v11, v8

    .line 1284
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    :goto_82
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    .end local v5           #creator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;-><init>()V

    .line 1286
    .restart local v5       #creator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;
    if-eqz p2, :cond_bd

    .line 1287
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1288
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8e
    if-ge v6, v1, :cond_bd

    .line 1289
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1291
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1293
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_d6

    .line 1288
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :sswitch_a8
    move-object v8, v9

    .line 1267
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .line 1268
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    move-object v7, v8

    .line 1270
    goto :goto_82

    .line 1295
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_ad
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mID:Ljava/lang/String;

    goto :goto_a5

    .line 1298
    :sswitch_b0
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mName:Ljava/lang/String;

    goto :goto_a5

    .line 1301
    :sswitch_b3
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mFullName:Ljava/lang/String;

    goto :goto_a5

    .line 1304
    :sswitch_b6
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->bFollowing:Z

    goto :goto_a5

    .line 1313
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_bd
    if-eqz v11, :cond_c7

    .line 1314
    iput-object v5, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    .line 1318
    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_7d

    .line 1315
    :cond_c7
    if-eqz v7, :cond_c1

    .line 1316
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreator:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    goto :goto_c1

    .line 1260
    :sswitch_data_cc
    .sparse-switch
        0x34 -> :sswitch_a8
        0x57 -> :sswitch_7e
    .end sparse-switch

    .line 1293
    :sswitch_data_d6
    .sparse-switch
        0x45 -> :sswitch_b3
        0x51 -> :sswitch_ad
        0x59 -> :sswitch_b6
        0x6f -> :sswitch_b0
    .end sparse-switch
.end method

.method public parseCryptSessionKey(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1329
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 1330
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseServer() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1332
    :cond_c
    const/4 v5, 0x0

    .line 1333
    .local v5, bReplaceParsedData:Z
    const/4 v4, 0x0

    .line 1335
    .local v4, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_39

    .line 1336
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 1337
    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    const/4 v5, 0x1

    .line 1344
    :goto_1e
    if-eqz p2, :cond_50

    .line 1345
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 1346
    .local v0, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v0, :cond_50

    .line 1347
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 1351
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_58

    .line 1346
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 1338
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_39
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    .line 1339
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    goto :goto_1e

    .line 1341
    :cond_45
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseServer(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1353
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :pswitch_4d
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    goto :goto_36

    .line 1361
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_50
    if-eqz v5, :cond_54

    .line 1362
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 1364
    :cond_54
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1365
    return-void

    .line 1351
    :pswitch_data_58
    .packed-switch 0xb4
        :pswitch_4d
    .end packed-switch
.end method

.method public parseDescription(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 1378
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseDescription() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1381
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1382
    return-void
.end method

.method public parseFavorite(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1393
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 1394
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseDescription() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1396
    :cond_c
    const/4 v5, 0x0

    .line 1397
    .local v5, favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 1398
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v7, 0x0

    .line 1400
    .local v7, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v11, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v12, 0x15

    if-ne v11, v12, :cond_40

    .line 1401
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;

    .end local v5           #favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v5, v11}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 1428
    .restart local v5       #favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    :goto_21
    if-eqz p2, :cond_c0

    .line 1429
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1430
    .local v1, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_28
    if-ge v6, v1, :cond_c0

    .line 1431
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1433
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1435
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_cc

    .line 1430
    :cond_3d
    :goto_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 1403
    .end local v1           #attrCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_40
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;

    .end local v5           #favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;-><init>()V

    .line 1404
    .restart local v5       #favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v12, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1406
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_d6

    .line 1414
    const/16 v11, 0x19

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1415
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_98

    .line 1416
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseFavorite : [mTagStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ], SKIPPING-TAG = <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v14, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_98
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1458
    .end local v10           #parentTag:I
    :goto_9d
    return-void

    .restart local v10       #parentTag:I
    :pswitch_9e
    move-object v8, v9

    .line 1409
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 1410
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    move-object v7, v8

    .line 1412
    goto/16 :goto_21

    .line 1437
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    .end local v10           #parentTag:I
    .restart local v1       #attrCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_a4
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;->mID:Ljava/lang/String;

    goto :goto_3d

    .line 1440
    :sswitch_a7
    const-string v11, "true"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b3

    .line 1441
    const/4 v11, 0x1

    iput-boolean v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;->mMask:Z

    goto :goto_3d

    .line 1442
    :cond_b3
    const-string v11, "false"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    .line 1443
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;->mMask:Z

    goto/16 :goto_3d

    .line 1452
    .end local v1           #attrCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c0
    if-eqz v7, :cond_c8

    .line 1453
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mFavorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;

    .line 1457
    :goto_c4
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_9d

    .line 1455
    :cond_c8
    iput-object v5, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_c4

    .line 1435
    nop

    :sswitch_data_cc
    .sparse-switch
        0x51 -> :sswitch_a4
        0x64 -> :sswitch_a7
    .end sparse-switch

    .line 1406
    :pswitch_data_d6
    .packed-switch 0x24
        :pswitch_9e
    .end packed-switch
.end method

.method public parseForwarder(ILorg/xml/sax/Attributes;)V
    .registers 21
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v14, :cond_e

    .line 1469
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parseForwarder() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1471
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 1472
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 1473
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parseForwarder(): parentObj is NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1475
    :cond_1c
    const/4 v7, 0x0

    .line 1476
    .local v7, forwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;
    const/4 v6, 0x0

    .line 1477
    .local v6, firstForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;
    const/4 v9, 0x0

    .line 1478
    .local v9, lastForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;
    const/4 v1, 0x0

    .line 1479
    .local v1, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    const/4 v13, 0x0

    .line 1481
    .local v13, status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1482
    .local v12, parentTag:I
    sparse-switch v12, :sswitch_data_f2

    .line 1504
    const/16 v14, 0x1b

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1505
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v14, :cond_84

    .line 1506
    const-string v14, "SNS_PARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SnsSvcXmlParser::parseForwarder : [mTagStack = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ], SKIPPING-TAG = <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1557
    :goto_8d
    return-void

    :sswitch_8e
    move-object v10, v11

    .line 1484
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 1485
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    if-eqz v14, :cond_c6

    .line 1486
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 1487
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v9, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 1516
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :goto_9b
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .end local v7           #forwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;-><init>()V

    .line 1518
    .restart local v7       #forwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;
    if-nez v6, :cond_a3

    .line 1519
    move-object v6, v7

    .line 1522
    :cond_a3
    iput-object v7, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 1524
    if-eqz p2, :cond_de

    .line 1525
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 1526
    .local v2, attCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_ac
    if-ge v8, v2, :cond_de

    .line 1527
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1529
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 1531
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_fc

    .line 1526
    :goto_c3
    add-int/lit8 v8, v8, 0x1

    goto :goto_ac

    .line 1489
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    .restart local v10       #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :cond_c6
    move-object v1, v10

    goto :goto_9b

    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :sswitch_c8
    move-object v10, v11

    .line 1494
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 1495
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    if-eqz v14, :cond_d6

    .line 1496
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 1497
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    iget-object v9, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    goto :goto_9b

    .line 1499
    :cond_d6
    move-object v13, v10

    goto :goto_9b

    .line 1533
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    .restart local v2       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v8       #i:I
    :sswitch_d8
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mID:Ljava/lang/String;

    goto :goto_c3

    .line 1536
    :sswitch_db
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mName:Ljava/lang/String;

    goto :goto_c3

    .line 1544
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    :cond_de
    if-nez v9, :cond_ef

    .line 1546
    if-eqz v1, :cond_ea

    .line 1547
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 1556
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8d

    .line 1548
    :cond_ea
    if-eqz v13, :cond_e4

    .line 1549
    iput-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwarder:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    goto :goto_e4

    .line 1553
    :cond_ef
    iput-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    goto :goto_e4

    .line 1482
    :sswitch_data_f2
    .sparse-switch
        0x0 -> :sswitch_8e
        0x57 -> :sswitch_c8
    .end sparse-switch

    .line 1531
    :sswitch_data_fc
    .sparse-switch
        0x51 -> :sswitch_d8
        0x6f -> :sswitch_db
    .end sparse-switch
.end method

.method public parseMainPhoto(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1568
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 1569
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseMainPhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1571
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 1572
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v6, 0x0

    .line 1573
    .local v6, mainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;
    const/4 v10, 0x0

    .line 1575
    .local v10, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v12, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1576
    .local v9, parentTag:I
    packed-switch v9, :pswitch_data_ac

    .line 1583
    const/16 v11, 0x29

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1584
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_65

    .line 1585
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseMainPhoto : [mTagStack = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ], SKIPPING-TAG = <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v14, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_65
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1625
    :goto_6a
    return-void

    :pswitch_6b
    move-object v7, v8

    .line 1578
    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1579
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object v10, v7

    .line 1595
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;

    .end local v6           #mainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;
    invoke-direct {v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;-><init>()V

    .line 1597
    .restart local v6       #mainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;
    if-eqz p2, :cond_a4

    .line 1598
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1599
    .local v1, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7b
    if-ge v5, v1, :cond_a4

    .line 1600
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1602
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1604
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_b2

    .line 1599
    :goto_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 1606
    :sswitch_93
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;->mURL:Ljava/lang/String;

    goto :goto_90

    .line 1609
    :sswitch_96
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;->mSize:Ljava/lang/Integer;

    goto :goto_90

    .line 1612
    :sswitch_a1
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;->mResolution:Ljava/lang/String;

    goto :goto_90

    .line 1621
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a4
    if-eqz v10, :cond_a8

    .line 1622
    iput-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mMainPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMainPhoto;

    .line 1624
    :cond_a8
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_6a

    .line 1576
    :pswitch_data_ac
    .packed-switch 0x3c
        :pswitch_6b
    .end packed-switch

    .line 1604
    :sswitch_data_b2
    .sparse-switch
        0x91 -> :sswitch_a1
        0x9c -> :sswitch_96
        0xb0 -> :sswitch_93
    .end sparse-switch
.end method

.method public parseMood(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1635
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 1636
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMood() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1638
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 1640
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1c

    .line 1641
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMood(): parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1643
    :cond_1c
    const/4 v7, 0x0

    .line 1644
    .local v7, mood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;
    const/4 v11, 0x0

    .line 1645
    .local v11, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    const/4 v5, 0x0

    .line 1646
    .local v5, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    const/4 v12, 0x0

    .line 1648
    .local v12, status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v13, v14}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1649
    .local v10, parentTag:I
    sparse-switch v10, :sswitch_data_dc

    .line 1668
    const/16 v13, 0x2d

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1669
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 1670
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseMood : [mTagStack = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ], SKIPPING-TAG = <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1713
    :goto_8a
    return-void

    :sswitch_8b
    move-object v8, v9

    .line 1651
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 1652
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v11, v8

    .line 1679
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    :goto_8f
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    .end local v7           #mood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;-><init>()V

    .line 1681
    .restart local v7       #mood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;
    if-eqz p2, :cond_c8

    .line 1682
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1683
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_9b
    if-ge v6, v1, :cond_c8

    .line 1684
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1685
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1686
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 1688
    .local v3, attrType:I
    packed-switch v3, :pswitch_data_ea

    .line 1683
    :goto_b2
    :pswitch_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_9b

    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :sswitch_b5
    move-object v8, v9

    .line 1656
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 1657
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    move-object v5, v8

    .line 1659
    goto :goto_8f

    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :sswitch_ba
    move-object v8, v9

    .line 1661
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 1662
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    move-object v12, v8

    .line 1664
    goto :goto_8f

    .line 1690
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :pswitch_bf
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mID:Ljava/lang/String;

    goto :goto_b2

    .line 1693
    :pswitch_c2
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconID:Ljava/lang/String;

    goto :goto_b2

    .line 1696
    :pswitch_c5
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;->mIconURL:Ljava/lang/String;

    goto :goto_b2

    .line 1705
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c8
    if-eqz v11, :cond_d2

    .line 1706
    iput-object v7, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    .line 1712
    :cond_cc
    :goto_cc
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 1707
    :cond_d2
    if-eqz v5, :cond_d7

    .line 1708
    iput-object v7, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    goto :goto_cc

    .line 1709
    :cond_d7
    if-eqz v12, :cond_cc

    .line 1710
    iput-object v7, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mMood:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMood;

    goto :goto_cc

    .line 1649
    :sswitch_data_dc
    .sparse-switch
        0x1c -> :sswitch_b5
        0x38 -> :sswitch_8b
        0x57 -> :sswitch_ba
    .end sparse-switch

    .line 1688
    :pswitch_data_ea
    .packed-switch 0x51
        :pswitch_bf
        :pswitch_b2
        :pswitch_c2
        :pswitch_c5
    .end packed-switch
.end method

.method public parseName(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 1725
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseName() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1729
    return-void
.end method

.method public parsePhoto(ILorg/xml/sax/Attributes;)V
    .registers 21
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v14, :cond_e

    .line 1741
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parsePhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1743
    :cond_e
    const/4 v13, 0x0

    .line 1744
    .local v13, photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    const/4 v6, 0x0

    .line 1745
    .local v6, firstPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    const/4 v8, 0x0

    .line 1746
    .local v8, lastPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    const/4 v1, 0x0

    .line 1747
    .local v1, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    const/4 v9, 0x0

    .line 1750
    .local v9, link:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v15, 0x15

    if-ne v14, v15, :cond_4c

    .line 1751
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .end local v13           #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 1807
    .restart local v13       #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :goto_26
    if-nez v6, :cond_29

    .line 1808
    move-object v6, v13

    .line 1811
    :cond_29
    iput-object v13, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1813
    if-eqz p2, :cond_1a0

    .line 1814
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 1815
    .local v2, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_32
    if-ge v7, v2, :cond_1a0

    .line 1816
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 1817
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1818
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 1820
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_1ba

    .line 1815
    :goto_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 1754
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_4c
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .end local v13           #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    invoke-direct {v13}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;-><init>()V

    .line 1755
    .restart local v13       #photo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 1758
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_5f

    .line 1759
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parsePhoto(): parentObj is NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5f
    move-object v14, v11

    .line 1761
    check-cast v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v15, 0x15

    if-ne v14, v15, :cond_87

    .line 1762
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v14, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v15, 0x13

    if-ne v14, v15, :cond_7f

    .line 1763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    move-object v10, v14

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1764
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    move-object v6, v10

    .line 1765
    iget-object v8, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1766
    goto :goto_26

    .line 1767
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;
    :cond_7f
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parsePhoto(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1770
    :cond_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v14, v15}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1771
    .local v12, parentTag:I
    sparse-switch v12, :sswitch_data_214

    .line 1793
    const/16 v14, 0x3c

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 1794
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v14, :cond_ea

    .line 1795
    const-string v14, "SNS_PARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SnsSvcXmlParser::parsePhoto : [mTagStack = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ], SKIPPING-TAG = <"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_ea
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 1909
    .end local v11           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v12           #parentTag:I
    :goto_f3
    return-void

    .restart local v11       #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .restart local v12       #parentTag:I
    :sswitch_f4
    move-object v10, v11

    .line 1773
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 1774
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    if-eqz v14, :cond_103

    .line 1775
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1776
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    iget-object v8, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    goto/16 :goto_26

    .line 1778
    :cond_103
    move-object v1, v10

    goto/16 :goto_26

    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :sswitch_106
    move-object v10, v11

    .line 1783
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;

    .line 1784
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    if-eqz v14, :cond_115

    .line 1785
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1786
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    iget-object v8, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    goto/16 :goto_26

    .line 1788
    :cond_115
    move-object v9, v10

    goto/16 :goto_26

    .line 1822
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;
    .end local v11           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v12           #parentTag:I
    .restart local v2       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_118
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1825
    :sswitch_11c
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1828
    :sswitch_120
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumName:Ljava/lang/String;

    goto/16 :goto_49

    .line 1831
    :sswitch_124
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAlbumCaption:Ljava/lang/String;

    goto/16 :goto_49

    .line 1834
    :sswitch_128
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mOwnerID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1837
    :sswitch_12c
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mOwnerName:Ljava/lang/String;

    goto/16 :goto_49

    .line 1840
    :sswitch_130
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthorID:Ljava/lang/String;

    goto/16 :goto_49

    .line 1843
    :sswitch_134
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mAuthorName:Ljava/lang/String;

    goto/16 :goto_49

    .line 1846
    :sswitch_138
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTitle:Ljava/lang/String;

    goto/16 :goto_49

    .line 1849
    :sswitch_13c
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mPlace:Ljava/lang/String;

    goto/16 :goto_49

    .line 1852
    :sswitch_140
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mLocation:Ljava/lang/String;

    goto/16 :goto_49

    .line 1855
    :sswitch_144
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mURL:Ljava/lang/String;

    goto/16 :goto_49

    .line 1858
    :sswitch_148
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mResolution:Ljava/lang/String;

    goto/16 :goto_49

    .line 1861
    :sswitch_14c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mSize:Ljava/lang/Integer;

    goto/16 :goto_49

    .line 1864
    :sswitch_158
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mRecommendsCount:Ljava/lang/Integer;

    goto/16 :goto_49

    .line 1867
    :sswitch_164
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mCommentsCount:Ljava/lang/Integer;

    goto/16 :goto_49

    .line 1870
    :sswitch_170
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mCounts:Ljava/lang/Integer;

    goto/16 :goto_49

    .line 1873
    :sswitch_17c
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mShootTime:Ljava/lang/Long;

    goto/16 :goto_49

    .line 1876
    :sswitch_188
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mUploadTime:Ljava/lang/Long;

    goto/16 :goto_49

    .line 1879
    :sswitch_194
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mStatus:Ljava/lang/String;

    goto/16 :goto_49

    .line 1882
    :sswitch_198
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mSP:Ljava/lang/String;

    goto/16 :goto_49

    .line 1885
    :sswitch_19c
    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnailUrl:Ljava/lang/String;

    goto/16 :goto_49

    .line 1893
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_1a0
    if-nez v8, :cond_1b7

    .line 1895
    if-eqz v1, :cond_1ad

    .line 1896
    iput-object v13, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 1908
    :goto_1a6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto/16 :goto_f3

    .line 1897
    :cond_1ad
    if-eqz v9, :cond_1b2

    .line 1898
    iput-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataLink;->mPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    goto :goto_1a6

    .line 1902
    :cond_1b2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_1a6

    .line 1906
    :cond_1b7
    iput-object v13, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    goto :goto_1a6

    .line 1820
    :sswitch_data_1ba
    .sparse-switch
        0x6 -> :sswitch_124
        0x7 -> :sswitch_11c
        0x8 -> :sswitch_120
        0xc -> :sswitch_130
        0xd -> :sswitch_134
        0x1a -> :sswitch_164
        0x1e -> :sswitch_170
        0x51 -> :sswitch_118
        0x5e -> :sswitch_140
        0x72 -> :sswitch_128
        0x73 -> :sswitch_12c
        0x7b -> :sswitch_13c
        0x88 -> :sswitch_158
        0x91 -> :sswitch_148
        0x95 -> :sswitch_198
        0x9b -> :sswitch_17c
        0x9c -> :sswitch_14c
        0xa3 -> :sswitch_194
        0xaa -> :sswitch_19c
        0xac -> :sswitch_138
        0xb0 -> :sswitch_144
        0xb3 -> :sswitch_188
    .end sparse-switch

    .line 1771
    :sswitch_data_214
    .sparse-switch
        0x0 -> :sswitch_f4
        0x26 -> :sswitch_106
    .end sparse-switch
.end method

.method public parseProfilePhoto(ILorg/xml/sax/Attributes;)V
    .registers 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v2, :cond_e

    .line 1921
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "parseProfilePhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1923
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v3

    .line 1924
    if-nez v3, :cond_1c

    .line 1925
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "parseProfilePhoto() : parentObj SHOULD NOT BE NULL !!!"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1929
    :cond_1c
    const/4 v6, 0x0

    .line 1930
    const/4 v5, 0x0

    .line 1932
    const/4 v4, 0x0

    .line 1933
    const/4 v8, 0x0

    .line 1934
    const/4 v9, 0x0

    .line 1935
    const/4 v10, 0x0

    .line 1936
    const/4 v11, 0x0

    .line 1937
    const/4 v12, 0x0

    .line 1938
    const/4 v13, 0x0

    .line 1939
    const/4 v14, 0x0

    .line 1940
    const/4 v15, 0x0

    .line 1941
    const/16 v16, 0x0

    .line 1942
    const/4 v7, 0x0

    .line 1943
    const/16 v17, 0x0

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1947
    sparse-switch v2, :sswitch_data_20a

    .line 2072
    const/16 v2, 0x43

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 2073
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v2, :cond_8f

    .line 2074
    const-string v2, "SNS_PARSER"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SnsSvcXmlParser::parseProfilePhoto : [mTagStack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ], SKIPPING-TAG = <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_8f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2160
    :goto_98
    return-void

    :sswitch_99
    move-object v2, v3

    .line 1950
    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    .line 1951
    iget-object v3, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v3, :cond_dc

    .line 1952
    iget-object v3, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 1953
    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v2, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object/from16 v20, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v20

    :goto_ac
    move-object v5, v3

    move-object v6, v4

    move-object v4, v2

    .line 2084
    :goto_af
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct {v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    .line 2086
    if-nez v6, :cond_b7

    move-object v6, v2

    .line 2090
    :cond_b7
    iput-object v2, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2092
    if-eqz p2, :cond_1ba

    .line 2093
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    .line 2094
    const/4 v3, 0x0

    :goto_c0
    if-ge v3, v6, :cond_1ba

    .line 2095
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v18

    .line 2096
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v19

    .line 2097
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v18

    .line 2099
    sparse-switch v18, :sswitch_data_23c

    .line 2094
    :goto_d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c0

    :cond_dc
    move-object v3, v5

    move-object v4, v6

    .line 1955
    goto :goto_ac

    .line 1960
    :sswitch_df
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;

    .line 1961
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_ec

    .line 1962
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 1963
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v7

    :cond_ec
    move-object v7, v3

    .line 1968
    goto :goto_af

    .line 1971
    :sswitch_ee
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    .line 1972
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_fb

    .line 1973
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 1974
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v8

    :cond_fb
    move-object v8, v3

    .line 1979
    goto :goto_af

    .line 1981
    :sswitch_fd
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    .line 1982
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_10a

    .line 1983
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 1984
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v9

    :cond_10a
    move-object v9, v3

    .line 1989
    goto :goto_af

    .line 1991
    :sswitch_10c
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 1992
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_119

    .line 1993
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 1994
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v10

    :cond_119
    move-object v10, v3

    .line 1999
    goto :goto_af

    .line 2001
    :sswitch_11b
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    .line 2002
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_128

    .line 2003
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2004
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v11

    :cond_128
    move-object v11, v3

    .line 2009
    goto :goto_af

    .line 2011
    :sswitch_12a
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;

    .line 2012
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_137

    .line 2013
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2014
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v12

    :cond_137
    move-object v12, v3

    .line 2019
    goto/16 :goto_af

    .line 2021
    :sswitch_13a
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 2022
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_147

    .line 2023
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2024
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v13

    :cond_147
    move-object v13, v3

    .line 2029
    goto/16 :goto_af

    .line 2031
    :sswitch_14a
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 2032
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_157

    .line 2033
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2034
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v14

    :cond_157
    move-object v14, v3

    .line 2039
    goto/16 :goto_af

    .line 2041
    :sswitch_15a
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 2042
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_167

    .line 2043
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2044
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object v3, v15

    :cond_167
    move-object v15, v3

    .line 2049
    goto/16 :goto_af

    .line 2051
    :sswitch_16a
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;

    .line 2052
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_178

    .line 2053
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2054
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object/from16 v3, v16

    :cond_178
    move-object/from16 v16, v3

    .line 2059
    goto/16 :goto_af

    .line 2061
    :sswitch_17c
    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .line 2062
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v2, :cond_18a

    .line 2063
    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2064
    iget-object v2, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object/from16 v3, v17

    :cond_18a
    move-object/from16 v17, v3

    .line 2069
    goto/16 :goto_af

    .line 2101
    :sswitch_18e
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    goto/16 :goto_d9

    .line 2104
    :sswitch_194
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mSize:Ljava/lang/Integer;

    goto/16 :goto_d9

    .line 2107
    :sswitch_1a2
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mResolution:Ljava/lang/String;

    goto/16 :goto_d9

    .line 2110
    :sswitch_1a8
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mAlbumID:Ljava/lang/String;

    goto/16 :goto_d9

    .line 2113
    :sswitch_1ae
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    goto/16 :goto_d9

    .line 2116
    :sswitch_1b4
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    goto/16 :goto_d9

    .line 2124
    :cond_1ba
    if-nez v5, :cond_207

    .line 2126
    if-eqz v4, :cond_1c7

    .line 2127
    iput-object v2, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 2159
    :goto_1c0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto/16 :goto_98

    .line 2128
    :cond_1c7
    if-eqz v7, :cond_1cc

    .line 2129
    iput-object v2, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCreator;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2130
    :cond_1cc
    if-eqz v8, :cond_1d1

    .line 2131
    iput-object v2, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2132
    :cond_1d1
    if-eqz v9, :cond_1d6

    .line 2133
    iput-object v2, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2134
    :cond_1d6
    if-eqz v10, :cond_1db

    .line 2135
    iput-object v2, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2136
    :cond_1db
    if-eqz v11, :cond_1e0

    .line 2137
    iput-object v2, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2138
    :cond_1e0
    if-eqz v12, :cond_1e5

    .line 2139
    iput-object v2, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuthor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2140
    :cond_1e5
    if-eqz v13, :cond_1ea

    .line 2141
    iput-object v2, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2142
    :cond_1ea
    if-eqz v14, :cond_1ef

    .line 2143
    iput-object v2, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2144
    :cond_1ef
    if-eqz v15, :cond_1f4

    .line 2145
    iput-object v2, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2146
    :cond_1f4
    if-eqz v16, :cond_1fb

    .line 2147
    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataForwarder;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2148
    :cond_1fb
    if-eqz v17, :cond_202

    .line 2149
    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 2153
    :cond_202
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_1c0

    .line 2157
    :cond_207
    iput-object v2, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    goto :goto_1c0

    .line 1947
    :sswitch_data_20a
    .sparse-switch
        0x1 -> :sswitch_99
        0x8 -> :sswitch_12a
        0xd -> :sswitch_11b
        0x11 -> :sswitch_df
        0x1b -> :sswitch_16a
        0x1c -> :sswitch_13a
        0x35 -> :sswitch_ee
        0x38 -> :sswitch_14a
        0x48 -> :sswitch_10c
        0x4d -> :sswitch_15a
        0x54 -> :sswitch_fd
        0x62 -> :sswitch_17c
    .end sparse-switch

    .line 2099
    :sswitch_data_23c
    .sparse-switch
        0x7 -> :sswitch_1a8
        0x46 -> :sswitch_1b4
        0x66 -> :sswitch_1ae
        0x91 -> :sswitch_1a2
        0x9c -> :sswitch_194
        0xb0 -> :sswitch_18e
    .end sparse-switch
.end method

.method public parseRelatedContent(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 2173
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseRelatedContent() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2176
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2177
    return-void
.end method

.method public parseRemoteLoginInfo(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2187
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_e

    .line 2188
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseRemoteLoginInfo() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4f

    .line 2197
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 2198
    const/4 v0, 0x1

    .line 2205
    :goto_1e
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    invoke-direct {v4}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;-><init>()V

    .line 2206
    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    if-eqz v5, :cond_86

    .line 2207
    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 2208
    iget-object v3, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    move-object v8, v3

    move-object v3, v5

    move-object v5, v8

    .line 2211
    :goto_30
    if-nez v3, :cond_33

    move-object v3, v4

    .line 2215
    :cond_33
    iput-object v4, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 2217
    if-eqz p2, :cond_77

    .line 2218
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 2219
    :goto_3b
    if-ge v1, v3, :cond_77

    .line 2220
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 2221
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 2222
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v6

    .line 2224
    sparse-switch v6, :sswitch_data_88

    .line 2219
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 2199
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5d

    .line 2200
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    move-object v2, v0

    move v0, v1

    goto :goto_1e

    .line 2202
    :cond_5d
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseRemoteLoginInfo(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2226
    :sswitch_65
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mSP:Ljava/lang/String;

    goto :goto_4c

    .line 2229
    :sswitch_68
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginUserName:Ljava/lang/String;

    goto :goto_4c

    .line 2232
    :sswitch_6b
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginPeopleID:Ljava/lang/String;

    goto :goto_4c

    .line 2235
    :sswitch_6e
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_4c

    .line 2238
    :sswitch_71
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mSessionKey:Ljava/lang/String;

    goto :goto_4c

    .line 2241
    :sswitch_74
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mContext:Ljava/lang/String;

    goto :goto_4c

    .line 2250
    :cond_77
    if-eqz v5, :cond_83

    .line 2251
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 2256
    :goto_7b
    if-eqz v0, :cond_7f

    .line 2257
    iput-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 2259
    :cond_7f
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2260
    return-void

    .line 2253
    :cond_83
    iput-object v4, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    goto :goto_7b

    :cond_86
    move-object v5, v3

    goto :goto_30

    .line 2224
    :sswitch_data_88
    .sparse-switch
        0x1c -> :sswitch_74
        0x2b -> :sswitch_6e
        0x5f -> :sswitch_6b
        0x60 -> :sswitch_68
        0x95 -> :sswitch_65
        0x9a -> :sswitch_71
    .end sparse-switch
.end method

.method public parseResponse(ILorg/xml/sax/Attributes;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-eqz v0, :cond_e

    .line 2271
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseResponse() : mParsedData SHOULD BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2273
    :cond_e
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataResponseOnly;

    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataResponseOnly;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 2275
    if-eqz p2, :cond_d3

    .line 2276
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 2278
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v2, :cond_d3

    .line 2279
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 2280
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 2281
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v0

    .line 2283
    sparse-switch v0, :sswitch_data_da

    .line 2278
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 2285
    :sswitch_32
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSessionKey:Ljava/lang/String;

    goto :goto_2e

    .line 2288
    :sswitch_37
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mStartContext:Ljava/lang/String;

    goto :goto_2e

    .line 2291
    :sswitch_3c
    const-string v0, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2292
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    goto :goto_2e

    .line 2294
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    goto :goto_2e

    .line 2297
    :sswitch_4e
    const-string v0, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2298
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    goto :goto_2e

    .line 2300
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput v7, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mIsEmpty:I

    goto :goto_2e

    .line 2304
    :sswitch_60
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v0, ";"

    invoke-direct {v4, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    const/4 v0, 0x0

    .line 2306
    :cond_68
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2307
    iget-object v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    if-nez v3, :cond_95

    .line 2308
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 2309
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 2317
    :cond_85
    :goto_85
    iget-object v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget-object v3, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    iput-object v0, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 2319
    if-nez v0, :cond_68

    .line 2320
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseResponse() : curErrSpNode is SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2311
    :cond_95
    if-eqz v0, :cond_85

    .line 2312
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 2313
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    goto :goto_85

    .line 2326
    :sswitch_a5
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrCode:Ljava/lang/Integer;

    goto/16 :goto_2e

    .line 2329
    :sswitch_b3
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mSubErrCode:Ljava/lang/Integer;

    goto/16 :goto_2e

    .line 2332
    :sswitch_c1
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrContext:Ljava/lang/String;

    goto/16 :goto_2e

    .line 2335
    :sswitch_c7
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    goto/16 :goto_2e

    .line 2338
    :sswitch_cd
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iput-object v3, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    goto/16 :goto_2e

    .line 2346
    :cond_d3
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2347
    return-void

    .line 2283
    nop

    :sswitch_data_da
    .sparse-switch
        0x23 -> :sswitch_c7
        0x33 -> :sswitch_a5
        0x34 -> :sswitch_c1
        0x35 -> :sswitch_60
        0x36 -> :sswitch_b3
        0x4a -> :sswitch_3c
        0x57 -> :sswitch_4e
        0x93 -> :sswitch_cd
        0x9a -> :sswitch_32
        0xa0 -> :sswitch_37
    .end sparse-switch
.end method

.method public parseStatus(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    const/4 v2, 0x0

    .line 2358
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_f

    .line 2359
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseStatus() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2369
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v4, :cond_3f

    .line 2370
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    move-object v3, v2

    move-object v4, v2

    move-object v0, v2

    .line 2416
    :goto_1f
    if-nez v0, :cond_22

    move-object v0, v1

    .line 2420
    :cond_22
    iput-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 2422
    if-eqz p2, :cond_119

    .line 2423
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    .line 2424
    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v5, :cond_119

    .line 2425
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 2426
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 2427
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v6

    .line 2429
    sparse-switch v6, :sswitch_data_132

    .line 2424
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2373
    :cond_3f
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    invoke-direct {v3}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;-><init>()V

    .line 2374
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v1

    .line 2376
    if-nez v1, :cond_52

    .line 2377
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseStatus(): parentObj is NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    move-object v0, v1

    .line 2379
    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v4, :cond_75

    .line 2380
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_6d

    .line 2381
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 2384
    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    move-object v4, v1

    move-object v1, v3

    move-object v3, v2

    .line 2385
    goto :goto_1f

    .line 2386
    :cond_6d
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseStatus(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2389
    :cond_75
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2390
    sparse-switch v0, :sswitch_data_14c

    .line 2402
    const/16 v0, 0x57

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 2403
    iget-boolean v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v0, :cond_c8

    .line 2404
    const-string v0, "SNS_PARSER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsSvcXmlParser::parseStatus : [mTagStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ], SKIPPING-TAG = <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_c8
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2473
    :goto_cd
    return-void

    .line 2392
    :sswitch_ce
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    move-object v4, v2

    move-object v0, v2

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    .line 2395
    goto/16 :goto_1f

    .line 2397
    :sswitch_d7
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    move-object v4, v2

    move-object v0, v2

    move-object v8, v1

    move-object v1, v3

    move-object v3, v2

    move-object v2, v8

    .line 2400
    goto/16 :goto_1f

    .line 2431
    :sswitch_e1
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mID:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2434
    :sswitch_e5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCommentsCount:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2437
    :sswitch_f1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    goto/16 :goto_3c

    .line 2440
    :sswitch_fd
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mUTCoffset:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2443
    :sswitch_109
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mForwardable:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2446
    :sswitch_10d
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mIsFavorite:Ljava/lang/Boolean;

    goto/16 :goto_3c

    .line 2454
    :cond_119
    if-nez v4, :cond_12f

    .line 2456
    if-nez v3, :cond_11f

    if-eqz v2, :cond_12c

    .line 2458
    :cond_11f
    if-eqz v3, :cond_127

    .line 2459
    iput-object v1, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 2472
    :cond_123
    :goto_123
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_cd

    .line 2460
    :cond_127
    if-eqz v2, :cond_123

    .line 2461
    iput-object v1, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    goto :goto_123

    .line 2466
    :cond_12c
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_123

    .line 2470
    :cond_12f
    iput-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    goto :goto_123

    .line 2429
    :sswitch_data_132
    .sparse-switch
        0x1a -> :sswitch_e5
        0x20 -> :sswitch_f1
        0x41 -> :sswitch_109
        0x51 -> :sswitch_e1
        0x58 -> :sswitch_10d
        0xb1 -> :sswitch_fd
    .end sparse-switch

    .line 2390
    :sswitch_data_14c
    .sparse-switch
        0x1c -> :sswitch_d7
        0x38 -> :sswitch_ce
    .end sparse-switch
.end method

.method public parseTag(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2484
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_d

    .line 2485
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseTag() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2487
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v1

    .line 2488
    if-nez v1, :cond_1b

    .line 2489
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseActor() : parentObj is NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2497
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2498
    sparse-switch v0, :sswitch_data_da

    .line 2521
    const/16 v0, 0x59

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 2522
    iget-boolean v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v0, :cond_6e

    .line 2523
    const-string v0, "SNS_PARSER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsSvcXmlParser::parseTag : [mTagStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ], SKIPPING-TAG = <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    :cond_6e
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2572
    :goto_73
    return-void

    :sswitch_74
    move-object v0, v1

    .line 2501
    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 2502
    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    if-eqz v1, :cond_a9

    .line 2503
    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    .line 2504
    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    .line 2532
    :goto_84
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    invoke-direct {v4}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;-><init>()V

    .line 2534
    if-nez v3, :cond_8c

    move-object v3, v4

    .line 2538
    :cond_8c
    iput-object v4, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    .line 2540
    if-eqz p2, :cond_c7

    .line 2541
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    .line 2542
    const/4 v3, 0x0

    :goto_95
    if-ge v3, v5, :cond_c7

    .line 2543
    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 2544
    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 2545
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v6

    .line 2547
    sparse-switch v6, :sswitch_data_e4

    .line 2542
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    :cond_a9
    move-object v1, v2

    move-object v3, v2

    .line 2506
    goto :goto_84

    .line 2511
    :sswitch_ac
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 2512
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    if-eqz v0, :cond_be

    .line 2513
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    .line 2514
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    move-object v1, v2

    :goto_b9
    move-object v8, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v8

    .line 2519
    goto :goto_84

    :cond_be
    move-object v0, v2

    move-object v3, v2

    .line 2516
    goto :goto_b9

    .line 2549
    :sswitch_c1
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mID:Ljava/lang/String;

    goto :goto_a6

    .line 2552
    :sswitch_c4
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mName:Ljava/lang/String;

    goto :goto_a6

    .line 2560
    :cond_c7
    if-nez v1, :cond_d6

    .line 2562
    if-eqz v0, :cond_d1

    .line 2563
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    .line 2571
    :cond_cd
    :goto_cd
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_73

    .line 2564
    :cond_d1
    if-eqz v2, :cond_cd

    .line 2565
    iput-object v4, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mTag:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    goto :goto_cd

    .line 2569
    :cond_d6
    iput-object v4, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTag;

    goto :goto_cd

    .line 2498
    nop

    :sswitch_data_da
    .sparse-switch
        0x0 -> :sswitch_74
        0x3c -> :sswitch_ac
    .end sparse-switch

    .line 2547
    :sswitch_data_e4
    .sparse-switch
        0x51 -> :sswitch_c1
        0x6f -> :sswitch_c4
    .end sparse-switch
.end method

.method public parseTarget(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x0

    .line 2582
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_f

    .line 2583
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseTarget() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v3, :cond_3f

    .line 2592
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    move-object v3, v2

    move-object v4, v2

    move-object v0, v2

    .line 2649
    :goto_1f
    if-nez v0, :cond_22

    move-object v0, v1

    .line 2653
    :cond_22
    iput-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 2655
    if-eqz p2, :cond_13e

    .line 2656
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    .line 2657
    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v5, :cond_13e

    .line 2658
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 2659
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 2660
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v6

    .line 2662
    sparse-switch v6, :sswitch_data_154

    .line 2657
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 2594
    :cond_3f
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    invoke-direct {v4}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;-><init>()V

    .line 2596
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v1

    .line 2599
    if-nez v1, :cond_52

    .line 2600
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseTarget(): parentObj is NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    move-object v0, v1

    .line 2602
    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v3, :cond_76

    .line 2603
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_6e

    .line 2604
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 2607
    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    move-object v3, v2

    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    .line 2608
    goto :goto_1f

    .line 2609
    :cond_6e
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseTarget(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2612
    :cond_76
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2613
    sparse-switch v0, :sswitch_data_176

    .line 2635
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 2636
    iget-boolean v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v0, :cond_c9

    .line 2637
    const-string v0, "SNS_PARSER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsSvcXmlParser::parseMessage : [mTagStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ], SKIPPING-TAG = <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_c9
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2709
    :goto_ce
    return-void

    .line 2615
    :sswitch_cf
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 2616
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    if-eqz v0, :cond_e3

    .line 2617
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 2618
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    move-object v1, v2

    :goto_dc
    move-object v8, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v8

    .line 2623
    goto/16 :goto_1f

    :cond_e3
    move-object v0, v2

    move-object v3, v2

    .line 2620
    goto :goto_dc

    .line 2625
    :sswitch_e6
    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 2626
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    if-eqz v0, :cond_fb

    .line 2627
    iget-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 2628
    iget-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    move-object v1, v2

    :goto_f3
    move-object v8, v1

    move-object v1, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v8

    .line 2633
    goto/16 :goto_1f

    :cond_fb
    move-object v0, v2

    move-object v3, v2

    .line 2630
    goto :goto_f3

    .line 2664
    :sswitch_fe
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mID:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2667
    :sswitch_102
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mSubID:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2670
    :sswitch_106
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2673
    :sswitch_10a
    iput-object v7, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mType:Ljava/lang/String;

    goto/16 :goto_3c

    .line 2676
    :sswitch_10e
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mMyComments:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2679
    :sswitch_11a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mTotalComments:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2682
    :sswitch_126
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mMyRecommends:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2685
    :sswitch_132
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mTotalRecommends:Ljava/lang/Integer;

    goto/16 :goto_3c

    .line 2693
    :cond_13e
    if-nez v4, :cond_150

    .line 2695
    if-eqz v3, :cond_148

    .line 2696
    iput-object v1, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 2708
    :goto_144
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_ce

    .line 2697
    :cond_148
    if-eqz v2, :cond_14d

    .line 2698
    iput-object v1, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    goto :goto_144

    .line 2702
    :cond_14d
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_144

    .line 2706
    :cond_150
    iput-object v1, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    goto :goto_144

    .line 2662
    nop

    :sswitch_data_154
    .sparse-switch
        0x2b -> :sswitch_106
        0x51 -> :sswitch_fe
        0x6d -> :sswitch_10e
        0x6e -> :sswitch_126
        0xa4 -> :sswitch_102
        0xad -> :sswitch_11a
        0xae -> :sswitch_132
        0xaf -> :sswitch_10a
    .end sparse-switch

    .line 2613
    :sswitch_data_176
    .sparse-switch
        0x0 -> :sswitch_e6
        0xc -> :sswitch_cf
    .end sparse-switch
.end method

.method public parseText(ILorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 2720
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseText() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2723
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2724
    return-void
.end method

.method public parseThumbnail(ILorg/xml/sax/Attributes;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_c

    .line 2735
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseThumbnail() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2737
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v1

    .line 2741
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2742
    packed-switch v0, :pswitch_data_a6

    .line 2749
    const/16 v0, 0x5e

    iput v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 2750
    iget-boolean v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v0, :cond_63

    .line 2751
    const-string v0, "SNS_PARSER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnsSvcXmlParser::parseThumbnail : [mTagStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ], SKIPPING-TAG = <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_63
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2792
    :goto_68
    return-void

    :pswitch_69
    move-object v0, v1

    .line 2744
    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;

    .line 2761
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;

    invoke-direct {v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;-><init>()V

    .line 2763
    if-eqz p2, :cond_9d

    .line 2764
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 2765
    const/4 v1, 0x0

    :goto_78
    if-ge v1, v3, :cond_9d

    .line 2766
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 2767
    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2768
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 2770
    sparse-switch v4, :sswitch_data_ac

    .line 2765
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .line 2772
    :sswitch_8c
    iput-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;->mURL:Ljava/lang/String;

    goto :goto_89

    .line 2775
    :sswitch_8f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;->mSize:Ljava/lang/Integer;

    goto :goto_89

    .line 2778
    :sswitch_9a
    iput-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;->mResolution:Ljava/lang/String;

    goto :goto_89

    .line 2788
    :cond_9d
    if-eqz v0, :cond_a1

    .line 2789
    iput-object v2, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoto;->mThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThumbnail;

    .line 2791
    :cond_a1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_68

    .line 2742
    nop

    :pswitch_data_a6
    .packed-switch 0x3c
        :pswitch_69
    .end packed-switch

    .line 2770
    :sswitch_data_ac
    .sparse-switch
        0x91 -> :sswitch_9a
        0x9c -> :sswitch_8f
        0xb0 -> :sswitch_8c
    .end sparse-switch
.end method

.method public parseUser(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x15

    .line 2803
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v0, :cond_f

    .line 2804
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseDescription() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2813
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v3, :cond_40

    .line 2814
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    iget-object v2, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v0, v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    move-object v2, v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 2833
    :goto_20
    if-nez v0, :cond_23

    move-object v0, v1

    .line 2837
    :cond_23
    iput-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .line 2839
    if-eqz p2, :cond_b3

    .line 2840
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 2841
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v3, :cond_b3

    .line 2842
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 2843
    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 2844
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 2846
    sparse-switch v4, :sswitch_data_c4

    .line 2841
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 2816
    :cond_40
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    invoke-direct {v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;-><init>()V

    .line 2818
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v0

    .line 2819
    if-nez v0, :cond_53

    .line 2820
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseUploadLocation(): parentObj is NULL !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2822
    :cond_53
    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v0, v3, :cond_be

    .line 2823
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_6d

    .line 2824
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .line 2826
    iget-object v1, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 2827
    goto :goto_20

    .line 2828
    :cond_6d
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "parseVideo(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2848
    :sswitch_75
    iget-boolean v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v4, :cond_91

    .line 2849
    const-string v4, "SNS_PARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseUser() attributes ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_91
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mID:Ljava/lang/String;

    goto :goto_3d

    .line 2854
    :sswitch_94
    iget-boolean v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v4, :cond_b0

    .line 2855
    const-string v4, "SNS_PARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseUser() attributes NAME "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_b0
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mName:Ljava/lang/String;

    goto :goto_3d

    .line 2866
    :cond_b3
    if-nez v2, :cond_bb

    .line 2867
    iput-object v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 2871
    :goto_b7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 2872
    return-void

    .line 2869
    :cond_bb
    iput-object v1, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    goto :goto_b7

    :cond_be
    move-object v0, v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_20

    .line 2846
    :sswitch_data_c4
    .sparse-switch
        0x51 -> :sswitch_75
        0x6f -> :sswitch_94
    .end sparse-switch
.end method

.method protected popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    return-object v0
.end method

.method protected popParsedTag()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mDataStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method protected pushParsedTag(I)V
    .registers 4
    .parameter "tagEnum"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
