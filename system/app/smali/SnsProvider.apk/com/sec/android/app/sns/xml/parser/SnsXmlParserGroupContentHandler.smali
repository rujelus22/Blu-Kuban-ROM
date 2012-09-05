.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserGroupContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodGroup(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    sparse-switch p1, :sswitch_data_12

    .line 93
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 99
    :goto_6
    return-void

    .line 87
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->parseCoverPhoto(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 96
    :catch_b
    move-exception v0

    .line 97
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 90
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->parseGroup(ILorg/xml/sax/Attributes;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_10} :catch_b

    goto :goto_6

    .line 85
    nop

    :sswitch_data_12
    .sparse-switch
        0x10 -> :sswitch_7
        0x20 -> :sswitch_d
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
    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->parseCDATA(Ljava/lang/String;I)V

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

    const-string v3, "GROUP-HANDLER << endElement localName ["

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
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 41
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 44
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 48
    :cond_47
    return-void
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
    .line 108
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 109
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseCoverPhoto() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 111
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 112
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v5, 0x0

    .line 113
    .local v5, coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    const/4 v6, 0x0

    .line 115
    .local v6, group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
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

    .line 116
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_b0

    .line 123
    const/16 v11, 0x10

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 124
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_65

    .line 125
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

    .line 131
    :cond_65
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 168
    :goto_6a
    return-void

    :pswitch_6b
    move-object v8, v9

    .line 118
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 119
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    move-object v6, v8

    .line 135
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    .end local v5           #coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;-><init>()V

    .line 137
    .restart local v5       #coverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;
    if-eqz p2, :cond_a7

    .line 138
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 139
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7b
    if-ge v7, v1, :cond_a7

    .line 140
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 144
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_b6

    .line 139
    :goto_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_7b

    .line 146
    :sswitch_93
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mURL:Ljava/lang/String;

    goto :goto_90

    .line 149
    :sswitch_96
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mID:Ljava/lang/String;

    goto :goto_90

    .line 152
    :sswitch_99
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mSize:Ljava/lang/Integer;

    goto :goto_90

    .line 155
    :sswitch_a4
    iput-object v4, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;->mResolution:Ljava/lang/String;

    goto :goto_90

    .line 164
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_a7
    if-eqz v6, :cond_ab

    .line 165
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mCoverPhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCoverPhoto;

    .line 167
    :cond_ab
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_6a

    .line 116
    nop

    :pswitch_data_b0
    .packed-switch 0x20
        :pswitch_6b
    .end packed-switch

    .line 144
    :sswitch_data_b6
    .sparse-switch
        0x51 -> :sswitch_96
        0x91 -> :sswitch_a4
        0x9c -> :sswitch_99
        0xb0 -> :sswitch_93
    .end sparse-switch
.end method

.method public parseGroup(ILorg/xml/sax/Attributes;)V
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

    .line 178
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 179
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseGroup() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 181
    :cond_e
    const/4 v5, 0x0

    .line 182
    .local v5, group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    const/4 v4, 0x0

    .line 183
    .local v4, firstGroup:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    const/4 v7, 0x0

    .line 185
    .local v7, lastGroup:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 186
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .end local v5           #group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 206
    .restart local v5       #group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 207
    move-object v4, v5

    .line 210
    :cond_21
    iput-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 212
    if-eqz p2, :cond_8c

    .line 213
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 214
    .local v0, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    if-ge v6, v0, :cond_8c

    .line 215
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 219
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_98

    .line 214
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 188
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_3e
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .end local v5           #group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;-><init>()V

    .line 189
    .restart local v5       #group:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 190
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_51

    .line 191
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseGroup(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    :cond_51
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v9           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 195
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0xc

    if-ne v10, v11, :cond_6a

    .line 196
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    move-object v8, v10

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 198
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    move-object v4, v8

    .line 199
    iget-object v7, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    .line 200
    goto :goto_1e

    .line 201
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseGroup(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 221
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_72
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 224
    :sswitch_75
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 227
    :sswitch_78
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 230
    :sswitch_7b
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mType:Ljava/lang/String;

    goto :goto_3b

    .line 233
    :sswitch_7e
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mDescription:Ljava/lang/String;

    goto :goto_3b

    .line 236
    :sswitch_81
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mModifyTime:Ljava/lang/Long;

    goto :goto_3b

    .line 244
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_8c
    if-nez v7, :cond_94

    .line 248
    iput-object v5, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 253
    :goto_90
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 254
    return-void

    .line 251
    :cond_94
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataGroup;

    goto :goto_90

    .line 219
    nop

    :sswitch_data_98
    .sparse-switch
        0x27 -> :sswitch_7e
        0x51 -> :sswitch_72
        0x6b -> :sswitch_81
        0x6f -> :sswitch_78
        0x95 -> :sswitch_75
        0xaf -> :sswitch_7b
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
    .line 67
    const/16 v0, 0x66

    .line 69
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 70
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GROUP-HANDLER >> StartElement localName ["

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

    .line 73
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 74
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 77
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->pushParsedTag(I)V

    .line 78
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserGroupContentHandler;->invokeParseTagMethodGroup(ILorg/xml/sax/Attributes;)V

    .line 80
    :cond_3c
    return-void
.end method
