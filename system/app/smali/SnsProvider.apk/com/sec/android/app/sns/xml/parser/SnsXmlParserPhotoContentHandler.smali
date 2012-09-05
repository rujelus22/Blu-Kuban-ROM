.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserPhotoContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodPhoto(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 77
    sparse-switch p1, :sswitch_data_16

    .line 88
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 94
    :goto_6
    return-void

    .line 79
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->parseAlbum(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 91
    :catch_b
    move-exception v0

    .line 92
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 82
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->parseCoverPhoto(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 85
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->parseUploadLocation(ILorg/xml/sax/Attributes;)V
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_14} :catch_b

    goto :goto_6

    .line 77
    nop

    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_7
        0x10 -> :sswitch_d
        0x61 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 28
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    const/16 v0, 0x66

    .line 35
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 36
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHOTO-HANDLER << endElement localName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 40
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 42
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 45
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 49
    :cond_47
    return-void
.end method

.method public parseAlbum(ILorg/xml/sax/Attributes;)V
    .registers 15
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x15

    .line 104
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 105
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseAlbum() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 107
    :cond_e
    const/4 v0, 0x0

    .line 108
    .local v0, album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    const/4 v5, 0x0

    .line 109
    .local v5, firstAlbum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    const/4 v7, 0x0

    .line 111
    .local v7, lastAlbum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 112
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .end local v0           #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v0, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 133
    .restart local v0       #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    :cond_1e
    :goto_1e
    if-nez v5, :cond_21

    .line 134
    move-object v5, v0

    .line 137
    :cond_21
    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 139
    if-eqz p2, :cond_b2

    .line 140
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 141
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    if-ge v6, v1, :cond_b2

    .line 142
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_be

    .line 141
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 114
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_3e
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .end local v0           #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;-><init>()V

    .line 115
    .restart local v0       #album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 117
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_51

    .line 118
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseAlbum(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 121
    :cond_51
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v9           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 122
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_69

    .line 123
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    move-object v8, v10

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 125
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    move-object v5, v8

    .line 126
    iget-object v7, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 127
    goto :goto_1e

    .line 128
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    :cond_69
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseAlbum(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 148
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_71
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 151
    :sswitch_74
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 154
    :sswitch_77
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 157
    :sswitch_7a
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mVisible:Ljava/lang/String;

    goto :goto_3b

    .line 160
    :sswitch_7d
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mPlace:Ljava/lang/String;

    goto :goto_3b

    .line 163
    :sswitch_80
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreatorID:Ljava/lang/String;

    goto :goto_3b

    .line 166
    :sswitch_83
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mWapID:Ljava/lang/String;

    goto :goto_3b

    .line 169
    :sswitch_86
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mPhotosCount:Ljava/lang/Integer;

    goto :goto_3b

    .line 172
    :sswitch_91
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mProfilePhotos:Ljava/lang/Boolean;

    goto :goto_3b

    .line 175
    :sswitch_9c
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCreateTime:Ljava/lang/Long;

    goto :goto_3b

    .line 178
    :sswitch_a7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mModifyTime:Ljava/lang/Long;

    goto :goto_3b

    .line 186
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_b2
    if-nez v7, :cond_ba

    .line 190
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 195
    :goto_b6
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 196
    return-void

    .line 193
    :cond_ba
    iput-object v0, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    goto :goto_b6

    .line 146
    nop

    :sswitch_data_be
    .sparse-switch
        0x20 -> :sswitch_9c
        0x22 -> :sswitch_80
        0x51 -> :sswitch_71
        0x6b -> :sswitch_a7
        0x6f -> :sswitch_77
        0x7a -> :sswitch_86
        0x7b -> :sswitch_7d
        0x83 -> :sswitch_91
        0x95 -> :sswitch_74
        0xb6 -> :sswitch_7a
        0xb7 -> :sswitch_83
    .end sparse-switch
.end method

.method public parseCoverPhoto(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 207
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseCoverPhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 209
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 210
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v6, 0x0

    .line 211
    .local v6, coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    const/4 v1, 0x0

    .line 213
    .local v1, album:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
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

    .line 214
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_b0

    .line 221
    const/16 v11, 0x10

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 222
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_65

    .line 223
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseCoverPhoto : [mTagStack = "

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

    .line 229
    :cond_65
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 266
    :goto_6a
    return-void

    :pswitch_6b
    move-object v8, v9

    .line 216
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;

    .line 217
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;
    move-object v1, v8

    .line 233
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    .end local v6           #coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    invoke-direct {v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;-><init>()V

    .line 235
    .restart local v6       #coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    if-eqz p2, :cond_a7

    .line 236
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 237
    .local v2, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7b
    if-ge v7, v2, :cond_a7

    .line 238
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 242
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_b6

    .line 237
    :goto_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 244
    :sswitch_93
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mURL:Ljava/lang/String;

    goto :goto_90

    .line 247
    :sswitch_96
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mID:Ljava/lang/String;

    goto :goto_90

    .line 250
    :sswitch_99
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mSize:Ljava/lang/Integer;

    goto :goto_90

    .line 253
    :sswitch_a4
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mResolution:Ljava/lang/String;

    goto :goto_90

    .line 262
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_a7
    if-eqz v1, :cond_ab

    .line 263
    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAlbum;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    .line 265
    :cond_ab
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_6a

    .line 214
    nop

    :pswitch_data_b0
    .packed-switch 0x4
        :pswitch_6b
    .end packed-switch

    .line 242
    :sswitch_data_b6
    .sparse-switch
        0x51 -> :sswitch_96
        0x91 -> :sswitch_a4
        0x9c -> :sswitch_99
        0xb0 -> :sswitch_93
    .end sparse-switch
.end method

.method public parseUploadLocation(ILorg/xml/sax/Attributes;)V
    .registers 15
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x15

    .line 276
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 277
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 279
    :cond_e
    const/4 v9, 0x0

    .line 280
    .local v9, uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    const/4 v4, 0x0

    .line 281
    .local v4, firstUploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    const/4 v6, 0x0

    .line 283
    .local v6, lastUploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 284
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .end local v9           #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 305
    .restart local v9       #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 306
    move-object v4, v9

    .line 309
    :cond_21
    iput-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 311
    if-eqz p2, :cond_7b

    .line 312
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 313
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_7b

    .line 314
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 318
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_86

    .line 313
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 286
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .end local v9           #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;-><init>()V

    .line 287
    .restart local v9       #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 288
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_51

    .line 289
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 292
    :cond_51
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v8           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 293
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0x1c

    if-ne v10, v11, :cond_6a

    .line 294
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    move-object v7, v10

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 296
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    move-object v4, v7

    .line 297
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 298
    goto :goto_1e

    .line 299
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 320
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_72
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mFileName:Ljava/lang/String;

    goto :goto_3b

    .line 323
    :sswitch_75
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mHostAddr:Ljava/lang/String;

    goto :goto_3b

    .line 326
    :sswitch_78
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mResourceID:Ljava/lang/String;

    goto :goto_3b

    .line 334
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_7b
    if-nez v6, :cond_83

    .line 337
    iput-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 342
    :goto_7f
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 343
    return-void

    .line 340
    :cond_83
    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    goto :goto_7f

    .line 318
    :sswitch_data_86
    .sparse-switch
        0x3a -> :sswitch_72
        0x4e -> :sswitch_75
        0x92 -> :sswitch_78
    .end sparse-switch
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 54
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 60
    const/16 v0, 0x66

    .line 62
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 63
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHOTO-HANDLER >> StartElement localName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 67
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 69
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 70
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->pushParsedTag(I)V

    .line 71
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPhotoContentHandler;->invokeParseTagMethodPhoto(ILorg/xml/sax/Attributes;)V

    .line 73
    :cond_3c
    return-void
.end method
