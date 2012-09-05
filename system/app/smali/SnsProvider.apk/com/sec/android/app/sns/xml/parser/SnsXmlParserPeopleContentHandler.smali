.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserPeopleContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodPeople(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    sparse-switch p1, :sswitch_data_22

    .line 102
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 107
    :goto_6
    return-void

    .line 84
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parseAddress(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 104
    :catch_b
    move-exception v0

    .line 105
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 87
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parseFriendship(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 90
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parseInfo(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 93
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parsePeople(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 96
    :sswitch_19
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parsePhoneNum(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 99
    :sswitch_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parseWork(ILorg/xml/sax/Attributes;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_20} :catch_b

    goto :goto_6

    .line 82
    nop

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_7
        0x1e -> :sswitch_d
        0x24 -> :sswitch_11
        0x38 -> :sswitch_15
        0x3a -> :sswitch_19
        0x64 -> :sswitch_1d
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
    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 28
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
    .line 32
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 33
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
    .line 38
    const/16 v0, 0x66

    .line 40
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 41
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEOPLE-HANDLER << endElement localName ["

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

    .line 44
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 45
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 47
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 50
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 54
    :cond_47
    return-void
.end method

.method public parseAddress(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 118
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 120
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 121
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 122
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 124
    :cond_1c
    const/4 v1, 0x0

    .line 125
    .local v1, address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v6, 0x0

    .line 126
    .local v6, firstAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v9, 0x0

    .line 127
    .local v9, lastAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v8, 0x0

    .line 129
    .local v8, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
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

    move-result v12

    .line 130
    .local v12, parentTag:I
    packed-switch v12, :pswitch_data_e0

    .line 142
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 143
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_80

    .line 144
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseAddress : [mTagStack = "

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

    .line 150
    :cond_80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 199
    :goto_89
    return-void

    :pswitch_8a
    move-object v10, v11

    .line 132
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 133
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    if-eqz v13, :cond_c2

    .line 134
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 135
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    iget-object v9, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 154
    :goto_97
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .end local v1           #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    invoke-direct {v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;-><init>()V

    .line 156
    .restart local v1       #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    if-nez v6, :cond_9f

    .line 157
    move-object v6, v1

    .line 160
    :cond_9f
    iput-object v1, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 162
    if-eqz p2, :cond_d0

    .line 163
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 165
    .local v2, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a8
    if-ge v7, v2, :cond_d0

    .line 166
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_e6

    .line 165
    :goto_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 137
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_c2
    move-object v8, v10

    goto :goto_97

    .line 172
    .restart local v2       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_c4
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mCity:Ljava/lang/String;

    goto :goto_bf

    .line 175
    :sswitch_c7
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mDetail:Ljava/lang/String;

    goto :goto_bf

    .line 178
    :sswitch_ca
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZipCode:Ljava/lang/String;

    goto :goto_bf

    .line 181
    :sswitch_cd
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZip:Ljava/lang/String;

    goto :goto_bf

    .line 189
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_d0
    if-nez v9, :cond_dc

    .line 191
    if-eqz v8, :cond_d6

    .line 192
    iput-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 198
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_89

    .line 196
    :cond_dc
    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    goto :goto_d6

    .line 130
    nop

    :pswitch_data_e0
    .packed-switch 0x24
        :pswitch_8a
    .end packed-switch

    .line 170
    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_c4
        0x28 -> :sswitch_c7
        0xbd -> :sswitch_ca
        0xbe -> :sswitch_cd
    .end sparse-switch
.end method

.method public parseFriendship(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 210
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseFriendship() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 212
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 213
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v5, 0x0

    .line 214
    .local v5, friendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;
    const/4 v10, 0x0

    .line 216
    .local v10, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
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

    .line 217
    .local v9, parentTag:I
    packed-switch v9, :pswitch_data_c8

    .line 224
    const/16 v11, 0x1e

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 225
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_65

    .line 226
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseFriendship : [mTagStack = "

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

    .line 232
    :cond_65
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 270
    :goto_6a
    return-void

    :pswitch_6b
    move-object v7, v8

    .line 219
    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 220
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v10, v7

    .line 236
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;

    .end local v5           #friendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;-><init>()V

    .line 238
    .restart local v5       #friendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;
    if-eqz p2, :cond_bf

    .line 239
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 240
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_7b
    if-ge v6, v1, :cond_bf

    .line 241
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 245
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_ce

    .line 240
    :goto_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 247
    :sswitch_93
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFollowerNum:Ljava/lang/Integer;

    goto :goto_90

    .line 250
    :sswitch_9e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFollowingNum:Ljava/lang/Integer;

    goto :goto_90

    .line 253
    :sswitch_a9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mFriendNum:Ljava/lang/Integer;

    goto :goto_90

    .line 256
    :sswitch_b4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;->mDegree:Ljava/lang/Integer;

    goto :goto_90

    .line 266
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_bf
    if-eqz v10, :cond_c3

    .line 267
    iput-object v5, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mFriendship:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendship;

    .line 269
    :cond_c3
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_6a

    .line 217
    nop

    :pswitch_data_c8
    .packed-switch 0x38
        :pswitch_6b
    .end packed-switch

    .line 245
    :sswitch_data_ce
    .sparse-switch
        0x24 -> :sswitch_b4
        0x3e -> :sswitch_93
        0x40 -> :sswitch_9e
        0x43 -> :sswitch_a9
    .end sparse-switch
.end method

.method public parseInfo(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 281
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 283
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 284
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1c

    .line 285
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 287
    :cond_1c
    const/4 v7, 0x0

    .line 288
    .local v7, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    const/4 v11, 0x0

    .line 290
    .local v11, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
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

    .line 291
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_114

    .line 298
    const/16 v13, 0x24

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 299
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_7f

    .line 300
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseInfo : [mTagStack = "

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

    .line 305
    :cond_7f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 363
    :goto_88
    return-void

    :pswitch_89
    move-object v8, v9

    .line 293
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 294
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v11, v8

    .line 309
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .end local v7           #info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;-><init>()V

    .line 311
    .restart local v7       #info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    if-eqz p2, :cond_108

    .line 312
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 313
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_99
    if-ge v6, v1, :cond_108

    .line 314
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 318
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_11a

    .line 313
    :cond_b0
    :goto_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 320
    :sswitch_b3
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mFirstName:Ljava/lang/String;

    goto :goto_b0

    .line 323
    :sswitch_b6
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mLastName:Ljava/lang/String;

    goto :goto_b0

    .line 326
    :sswitch_b9
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v13, :cond_c5

    .line 327
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo(): Email Attribute Should be NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 331
    :cond_c5
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v12, st:Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .line 333
    .local v5, curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    :cond_cd
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_fc

    .line 334
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-nez v13, :cond_ee

    .line 335
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 336
    iget-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 341
    :goto_e4
    if-nez v5, :cond_cd

    .line 342
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend() : parentObj is SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 338
    :cond_ee
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 339
    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_e4

    .line 346
    :cond_fc
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v13, :cond_b0

    .line 347
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_b0

    .line 350
    .end local v5           #curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    .end local v12           #st:Ljava/util/StringTokenizer;
    :sswitch_105
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mBirthday:Ljava/lang/String;

    goto :goto_b0

    .line 359
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_108
    if-eqz v11, :cond_10c

    .line 360
    iput-object v7, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 362
    :cond_10c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto/16 :goto_88

    .line 291
    nop

    :pswitch_data_114
    .packed-switch 0x38
        :pswitch_89
    .end packed-switch

    .line 318
    :sswitch_data_11a
    .sparse-switch
        0xe -> :sswitch_105
        0x2f -> :sswitch_b9
        0x3b -> :sswitch_b3
        0x5c -> :sswitch_b6
    .end sparse-switch
.end method

.method public parsePeople(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 375
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parsePeople() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 377
    :cond_c
    const/4 v8, 0x0

    .line 378
    .local v8, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    const/4 v4, 0x0

    .line 379
    .local v4, firstPeople:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    const/4 v6, 0x0

    .line 382
    .local v6, lastPeople:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 383
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .end local v8           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v8, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 392
    .restart local v8       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    :goto_1e
    if-nez v4, :cond_21

    .line 393
    move-object v4, v8

    .line 396
    :cond_21
    iput-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 398
    if-eqz p2, :cond_65

    .line 399
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 400
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_65

    .line 401
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_70

    .line 400
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 385
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .end local v8           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;-><init>()V

    .line 386
    .restart local v8       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    move-object v7, v9

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 388
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v4, v7

    .line 389
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_1e

    .line 408
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 411
    :sswitch_51
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 414
    :sswitch_54
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 417
    :sswitch_57
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mDisplayName:Ljava/lang/String;

    goto :goto_3b

    .line 420
    :sswitch_5a
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mModifyTime:Ljava/lang/Long;

    goto :goto_3b

    .line 428
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_65
    if-nez v6, :cond_6d

    .line 431
    iput-object v8, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 436
    :goto_69
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 437
    return-void

    .line 434
    :cond_6d
    iput-object v8, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_69

    .line 405
    :sswitch_data_70
    .sparse-switch
        0x2b -> :sswitch_57
        0x51 -> :sswitch_4e
        0x6b -> :sswitch_5a
        0x6f -> :sswitch_54
        0x95 -> :sswitch_51
    .end sparse-switch
.end method

.method public parsePhoneNum(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 448
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parsePhoneNum() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 450
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 451
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 452
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parsePhoneNum() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 454
    :cond_1c
    const/4 v12, 0x0

    .line 455
    .local v12, phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v5, 0x0

    .line 456
    .local v5, firstPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v8, 0x0

    .line 457
    .local v8, lastPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v7, 0x0

    .line 459
    .local v7, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
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

    move-result v11

    .line 460
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_da

    .line 472
    const/16 v13, 0x3a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 473
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 474
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parsePhoneNum : [mTagStack = "

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

    .line 480
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 522
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 462
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 463
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    if-eqz v13, :cond_c3

    .line 464
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 465
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 484
    :goto_98
    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .end local v12           #phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;-><init>()V

    .line 486
    .restart local v12       #phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    if-nez v5, :cond_a0

    .line 487
    move-object v5, v12

    .line 490
    :cond_a0
    iput-object v12, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 492
    if-eqz p2, :cond_cb

    .line 493
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 494
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_cb

    .line 495
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 499
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_e0

    .line 494
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 467
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v7, v9

    goto :goto_98

    .line 501
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mValue:Ljava/lang/String;

    goto :goto_c0

    .line 504
    :sswitch_c8
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mType:Ljava/lang/String;

    goto :goto_c0

    .line 512
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_cb
    if-nez v8, :cond_d7

    .line 514
    if-eqz v7, :cond_d1

    .line 515
    iput-object v12, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 521
    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 519
    :cond_d7
    iput-object v12, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    goto :goto_d1

    .line 460
    :pswitch_data_da
    .packed-switch 0x24
        :pswitch_8b
    .end packed-switch

    .line 499
    :sswitch_data_e0
    .sparse-switch
        0xaf -> :sswitch_c8
        0xb4 -> :sswitch_c5
    .end sparse-switch
.end method

.method public parseWork(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 533
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseWork() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 535
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 536
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 537
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseWork() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 539
    :cond_1c
    const/4 v12, 0x0

    .line 540
    .local v12, work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v5, 0x0

    .line 541
    .local v5, firstWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v8, 0x0

    .line 542
    .local v8, lastWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v7, 0x0

    .line 544
    .local v7, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
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

    move-result v11

    .line 545
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_ea

    .line 557
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 558
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 559
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseWork : [mTagStack = "

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

    .line 564
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 621
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 547
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 548
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    if-eqz v13, :cond_c3

    .line 549
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 550
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 568
    :goto_98
    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .end local v12           #work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;-><init>()V

    .line 570
    .restart local v12       #work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    if-nez v5, :cond_a0

    .line 571
    move-object v5, v12

    .line 574
    :cond_a0
    iput-object v12, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 576
    if-eqz p2, :cond_da

    .line 577
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 578
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_da

    .line 579
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 583
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_f0

    .line 578
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 552
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v7, v9

    goto :goto_98

    .line 585
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mEmployer:Ljava/lang/String;

    goto :goto_c0

    .line 588
    :sswitch_c8
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mPosition:Ljava/lang/String;

    goto :goto_c0

    .line 591
    :sswitch_cb
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mStartMonth:Ljava/lang/String;

    goto :goto_c0

    .line 594
    :sswitch_ce
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mEndMonth:Ljava/lang/String;

    goto :goto_c0

    .line 597
    :sswitch_d1
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mDepartment:Ljava/lang/String;

    goto :goto_c0

    .line 600
    :sswitch_d4
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mCountry:Ljava/lang/String;

    goto :goto_c0

    .line 603
    :sswitch_d7
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mCity:Ljava/lang/String;

    goto :goto_c0

    .line 611
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_da
    if-nez v8, :cond_e6

    .line 613
    if-eqz v7, :cond_e0

    .line 614
    iput-object v12, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 620
    :cond_e0
    :goto_e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 618
    :cond_e6
    iput-object v12, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    goto :goto_e0

    .line 545
    nop

    :pswitch_data_ea
    .packed-switch 0x24
        :pswitch_8b
    .end packed-switch

    .line 583
    :sswitch_data_f0
    .sparse-switch
        0x13 -> :sswitch_d7
        0x1f -> :sswitch_d4
        0x26 -> :sswitch_d1
        0x30 -> :sswitch_c5
        0x31 -> :sswitch_ce
        0x7e -> :sswitch_c8
        0xa1 -> :sswitch_cb
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
    .line 58
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 59
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
    .line 65
    const/16 v0, 0x66

    .line 67
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 68
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PEOPLE-HANDLER >> StartElement localName ["

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

    .line 71
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 72
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 74
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 75
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->pushParsedTag(I)V

    .line 76
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserPeopleContentHandler;->invokeParseTagMethodPeople(ILorg/xml/sax/Attributes;)V

    .line 78
    :cond_3c
    return-void
.end method
