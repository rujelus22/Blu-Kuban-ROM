.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserVideoContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodVideo(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_12

    .line 84
    :pswitch_3
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 90
    :goto_6
    return-void

    .line 78
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->parseUploadLocation(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 87
    :catch_b
    move-exception v0

    .line 88
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 81
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :pswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->parseVideo(ILorg/xml/sax/Attributes;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_10} :catch_b

    goto :goto_6

    .line 76
    nop

    :pswitch_data_12
    .packed-switch 0x61
        :pswitch_7
        :pswitch_3
        :pswitch_d
    .end packed-switch
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
    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 22
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
    .line 26
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 27
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
    .line 32
    const/16 v0, 0x66

    .line 34
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 35
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIDEO-HANDLER << endElement localName ["

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

    .line 38
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 39
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 41
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 44
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 48
    :cond_47
    return-void
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

    .line 100
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 101
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 103
    :cond_e
    const/4 v9, 0x0

    .line 104
    .local v9, uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    const/4 v4, 0x0

    .line 105
    .local v4, firstUploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    const/4 v6, 0x0

    .line 107
    .local v6, lastUploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 108
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .end local v9           #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 129
    .restart local v9       #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 130
    move-object v4, v9

    .line 133
    :cond_21
    iput-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 135
    if-eqz p2, :cond_7b

    .line 136
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 137
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_7b

    .line 138
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 142
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_86

    .line 137
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 110
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .end local v9           #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;-><init>()V

    .line 111
    .restart local v9       #uploadLocation:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 112
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_51

    .line 113
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 116
    :cond_51
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v8           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 117
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0x1c

    if-ne v10, v11, :cond_6a

    .line 118
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    move-object v7, v10

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 120
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    move-object v4, v7

    .line 121
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    .line 122
    goto :goto_1e

    .line 123
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 144
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_72
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mFileName:Ljava/lang/String;

    goto :goto_3b

    .line 147
    :sswitch_75
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mHostAddr:Ljava/lang/String;

    goto :goto_3b

    .line 150
    :sswitch_78
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mResourceID:Ljava/lang/String;

    goto :goto_3b

    .line 158
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_7b
    if-nez v6, :cond_83

    .line 161
    iput-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 166
    :goto_7f
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 167
    return-void

    .line 164
    :cond_83
    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUploadLocation;

    goto :goto_7f

    .line 142
    :sswitch_data_86
    .sparse-switch
        0x3a -> :sswitch_72
        0x4e -> :sswitch_75
        0x92 -> :sswitch_78
    .end sparse-switch
.end method

.method public parseVideo(ILorg/xml/sax/Attributes;)V
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

    .line 177
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 178
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseVideo() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :cond_e
    const/4 v9, 0x0

    .line 181
    .local v9, video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    const/4 v4, 0x0

    .line 182
    .local v4, firstVideo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    const/4 v6, 0x0

    .line 184
    .local v6, lastVideo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 185
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .end local v9           #video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 204
    .restart local v9       #video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 205
    move-object v4, v9

    .line 208
    :cond_21
    iput-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .line 210
    if-eqz p2, :cond_7e

    .line 211
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 212
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_7e

    .line 213
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_8a

    .line 212
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 187
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .end local v9           #video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;-><init>()V

    .line 188
    .restart local v9       #video:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 189
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_51

    .line 190
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseUploadLocation(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 192
    :cond_51
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v8           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 193
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_6a

    .line 194
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    move-object v7, v10

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .line 196
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    move-object v4, v7

    .line 197
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    .line 198
    goto :goto_1e

    .line 199
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseVideo(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 219
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_72
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 222
    :sswitch_75
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mCategoryID:Ljava/lang/String;

    goto :goto_3b

    .line 225
    :sswitch_78
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 228
    :sswitch_7b
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mStatus:Ljava/lang/String;

    goto :goto_3b

    .line 236
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_7e
    if-nez v6, :cond_86

    .line 239
    iput-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 244
    :goto_82
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 245
    return-void

    .line 242
    :cond_86
    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataVideo;

    goto :goto_82

    .line 217
    nop

    :sswitch_data_8a
    .sparse-switch
        0x11 -> :sswitch_75
        0x51 -> :sswitch_72
        0x95 -> :sswitch_78
        0xa3 -> :sswitch_7b
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
    .line 52
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 53
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
    .line 59
    const/16 v0, 0x66

    .line 61
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 62
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VIDEO-HANDLER >> StartElement localName ["

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

    .line 65
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 66
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 68
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 69
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->pushParsedTag(I)V

    .line 70
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserVideoContentHandler;->invokeParseTagMethodVideo(ILorg/xml/sax/Attributes;)V

    .line 72
    :cond_3c
    return-void
.end method
