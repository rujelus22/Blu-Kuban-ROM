.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserFriendContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodFriend(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    sparse-switch p1, :sswitch_data_2e

    .line 139
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 145
    :goto_6
    return-void

    .line 112
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseAddress(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 142
    :catch_b
    move-exception v0

    .line 143
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 115
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseFriend(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 118
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseFriendRequest(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 121
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseGrouping(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 124
    :sswitch_19
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseInfo(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 127
    :sswitch_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseOwner(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 130
    :sswitch_21
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parsePeople(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 133
    :sswitch_25
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parsePhoneNum(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 136
    :sswitch_29
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseWork(ILorg/xml/sax/Attributes;)V
    :try_end_2c
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_2c} :catch_b

    goto :goto_6

    .line 110
    nop

    :sswitch_data_2e
    .sparse-switch
        0x2 -> :sswitch_7
        0x1c -> :sswitch_d
        0x1d -> :sswitch_11
        0x21 -> :sswitch_15
        0x24 -> :sswitch_19
        0x35 -> :sswitch_1d
        0x38 -> :sswitch_21
        0x3a -> :sswitch_25
        0x64 -> :sswitch_29
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
    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 41
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
    .line 45
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 46
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
    .line 58
    const/16 v0, 0x66

    .line 60
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 61
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FRIEND-HANDLER << endElement localName ["

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

    .line 64
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 65
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 67
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 70
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 74
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
    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 156
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 158
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 159
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 160
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 162
    :cond_1c
    const/4 v1, 0x0

    .line 163
    .local v1, address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v6, 0x0

    .line 164
    .local v6, firstAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v9, 0x0

    .line 165
    .local v9, lastAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v8, 0x0

    .line 167
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

    .line 168
    .local v12, parentTag:I
    packed-switch v12, :pswitch_data_e0

    .line 180
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 181
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_80

    .line 182
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

    .line 188
    :cond_80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 237
    :goto_89
    return-void

    :pswitch_8a
    move-object v10, v11

    .line 170
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 171
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    if-eqz v13, :cond_c2

    .line 172
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 173
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    iget-object v9, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 192
    :goto_97
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .end local v1           #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    invoke-direct {v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;-><init>()V

    .line 194
    .restart local v1       #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    if-nez v6, :cond_9f

    .line 195
    move-object v6, v1

    .line 198
    :cond_9f
    iput-object v1, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 200
    if-eqz p2, :cond_d0

    .line 201
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 203
    .local v2, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a8
    if-ge v7, v2, :cond_d0

    .line 204
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 208
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_e6

    .line 203
    :goto_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 175
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_c2
    move-object v8, v10

    goto :goto_97

    .line 210
    .restart local v2       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_c4
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mCity:Ljava/lang/String;

    goto :goto_bf

    .line 213
    :sswitch_c7
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mDetail:Ljava/lang/String;

    goto :goto_bf

    .line 216
    :sswitch_ca
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZipCode:Ljava/lang/String;

    goto :goto_bf

    .line 219
    :sswitch_cd
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZip:Ljava/lang/String;

    goto :goto_bf

    .line 227
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_d0
    if-nez v9, :cond_dc

    .line 229
    if-eqz v8, :cond_d6

    .line 230
    iput-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 236
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_89

    .line 234
    :cond_dc
    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    goto :goto_d6

    .line 168
    nop

    :pswitch_data_e0
    .packed-switch 0x24
        :pswitch_8a
    .end packed-switch

    .line 208
    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_c4
        0x28 -> :sswitch_c7
        0xbd -> :sswitch_ca
        0xbe -> :sswitch_cd
    .end sparse-switch
.end method

.method public parseFriend(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_c

    .line 248
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 250
    :cond_c
    const/4 v7, 0x0

    .line 251
    .local v7, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    const/4 v6, 0x0

    .line 252
    .local v6, firstFriend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    const/4 v9, 0x0

    .line 254
    .local v9, lastFriend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v13, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0x15

    if-ne v13, v14, :cond_42

    .line 255
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .end local v7           #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v7, v13}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 275
    .restart local v7       #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :cond_1e
    :goto_1e
    if-nez v6, :cond_21

    .line 276
    move-object v6, v7

    .line 279
    :cond_21
    iput-object v7, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 281
    if-eqz p2, :cond_e5

    .line 282
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 283
    .local v1, attCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2a
    if-ge v8, v1, :cond_e5

    .line 284
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 288
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_f0

    .line 283
    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 257
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    :cond_42
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .end local v7           #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;-><init>()V

    .line 258
    .restart local v7       #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 259
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_55

    .line 260
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend(): parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 263
    :cond_55
    check-cast v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v11           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v13, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0x15

    if-ne v13, v14, :cond_1e

    .line 264
    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v13, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_70

    .line 265
    iget-object v13, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    move-object v10, v13

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 267
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    move-object v6, v10

    .line 268
    iget-object v9, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 269
    goto :goto_1e

    .line 270
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :cond_70
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 290
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v8       #i:I
    :sswitch_78
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    goto :goto_3f

    .line 293
    :sswitch_7b
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mSP:Ljava/lang/String;

    goto :goto_3f

    .line 296
    :sswitch_7e
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFirstName:Ljava/lang/String;

    goto :goto_3f

    .line 299
    :sswitch_81
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mLastName:Ljava/lang/String;

    goto :goto_3f

    .line 302
    :sswitch_84
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    goto :goto_3f

    .line 305
    :sswitch_87
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mDisplayName:Ljava/lang/String;

    goto :goto_3f

    .line 308
    :sswitch_8a
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v13, :cond_96

    .line 309
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend(): Email Attribute Should be NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 313
    :cond_96
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v12, st:Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .line 315
    .local v5, curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    :cond_9e
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 316
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-nez v13, :cond_c3

    .line 317
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 318
    iget-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 324
    :goto_b5
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 326
    if-nez v5, :cond_9e

    .line 327
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend() : parentObj is SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 320
    :cond_c3
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 321
    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_b5

    .line 333
    .end local v5           #curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    .end local v12           #st:Ljava/util/StringTokenizer;
    :sswitch_d1
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mAddress:Ljava/lang/String;

    goto/16 :goto_3f

    .line 336
    :sswitch_d5
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mCity:Ljava/lang/String;

    goto/16 :goto_3f

    .line 339
    :sswitch_d9
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mJobTitle:Ljava/lang/String;

    goto/16 :goto_3f

    .line 342
    :sswitch_dd
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mCompany:Ljava/lang/String;

    goto/16 :goto_3f

    .line 345
    :sswitch_e1
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mBirthday:Ljava/lang/String;

    goto/16 :goto_3f

    .line 353
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    :cond_e5
    if-nez v9, :cond_ed

    .line 357
    iput-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 362
    :goto_e9
    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 363
    return-void

    .line 360
    :cond_ed
    iput-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    goto :goto_e9

    .line 288
    :sswitch_data_f0
    .sparse-switch
        0x4 -> :sswitch_d1
        0xe -> :sswitch_e1
        0x13 -> :sswitch_d5
        0x1b -> :sswitch_dd
        0x2b -> :sswitch_87
        0x2e -> :sswitch_8a
        0x3b -> :sswitch_7e
        0x45 -> :sswitch_84
        0x51 -> :sswitch_78
        0x5b -> :sswitch_d9
        0x5c -> :sswitch_81
        0x95 -> :sswitch_7b
    .end sparse-switch
.end method

.method public parseFriendRequest(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 374
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseFriend() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 376
    :cond_c
    const/4 v4, 0x0

    .line 378
    .local v4, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_37

    .line 379
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;

    .end local v4           #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 387
    .restart local v4       #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    :cond_1c
    if-eqz p2, :cond_4d

    .line 388
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 389
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_23
    if-ge v5, v0, :cond_4d

    .line 390
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 393
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_54

    .line 389
    :goto_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 381
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_37
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;

    .end local v4           #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    invoke-direct {v4}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;-><init>()V

    .line 382
    .restart local v4       #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v6

    .line 383
    .local v6, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v6, :cond_1c

    .line 384
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseFriend(): parentObj is NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 395
    .end local v6           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :pswitch_4a
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;->mID:Ljava/lang/String;

    goto :goto_34

    .line 402
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_4d
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 404
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 405
    return-void

    .line 393
    nop

    :pswitch_data_54
    .packed-switch 0x51
        :pswitch_4a
    .end packed-switch
.end method

.method public parseGrouping(ILorg/xml/sax/Attributes;)V
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

    .line 415
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 416
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseFriendGrouping() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 418
    :cond_e
    const/4 v5, 0x0

    .line 419
    .local v5, friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    const/4 v4, 0x0

    .line 420
    .local v4, firstFriendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    const/4 v7, 0x0

    .line 422
    .local v7, lastFriendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 423
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .end local v5           #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v5, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 444
    .restart local v5       #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 445
    move-object v4, v5

    .line 448
    :cond_21
    iput-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 450
    if-eqz p2, :cond_8d

    .line 451
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 452
    .local v0, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    if-ge v6, v0, :cond_8d

    .line 453
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 457
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_98

    .line 452
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 425
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_3e
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .end local v5           #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;-><init>()V

    .line 426
    .restart local v5       #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 427
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_51

    .line 428
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseFriendGrouping(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 431
    :cond_51
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v9           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 432
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_6a

    .line 433
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    move-object v8, v10

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 435
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    move-object v4, v8

    .line 436
    iget-object v7, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 437
    goto :goto_1e

    .line 438
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseFriendGrouping(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 459
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_72
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 462
    :sswitch_75
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 465
    :sswitch_78
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 468
    :sswitch_7b
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFullName:Ljava/lang/String;

    goto :goto_3b

    .line 471
    :sswitch_7e
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mDescription:Ljava/lang/String;

    goto :goto_3b

    .line 474
    :sswitch_81
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mMode:Ljava/lang/String;

    goto :goto_3b

    .line 477
    :sswitch_84
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFriendCount:Ljava/lang/String;

    goto :goto_3b

    .line 480
    :sswitch_87
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFollowing:Ljava/lang/String;

    goto :goto_3b

    .line 483
    :sswitch_8a
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mFollower:Ljava/lang/String;

    goto :goto_3b

    .line 491
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_8d
    if-nez v7, :cond_95

    .line 495
    iput-object v5, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 500
    :goto_91
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 501
    return-void

    .line 498
    :cond_95
    iput-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    goto :goto_91

    .line 457
    :sswitch_data_98
    .sparse-switch
        0x27 -> :sswitch_7e
        0x3d -> :sswitch_8a
        0x3f -> :sswitch_87
        0x42 -> :sswitch_84
        0x45 -> :sswitch_7b
        0x51 -> :sswitch_72
        0x6a -> :sswitch_81
        0x6f -> :sswitch_78
        0x95 -> :sswitch_75
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
    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 512
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 514
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 515
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1c

    .line 516
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 518
    :cond_1c
    const/4 v7, 0x0

    .line 519
    .local v7, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    const/4 v11, 0x0

    .line 521
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

    .line 522
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_114

    .line 529
    const/16 v13, 0x24

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 530
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_7f

    .line 531
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

    .line 536
    :cond_7f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 594
    :goto_88
    return-void

    :pswitch_89
    move-object v8, v9

    .line 524
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 525
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v11, v8

    .line 540
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .end local v7           #info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;-><init>()V

    .line 542
    .restart local v7       #info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    if-eqz p2, :cond_108

    .line 543
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 544
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_99
    if-ge v6, v1, :cond_108

    .line 545
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 549
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_11a

    .line 544
    :cond_b0
    :goto_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_99

    .line 551
    :sswitch_b3
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mFirstName:Ljava/lang/String;

    goto :goto_b0

    .line 554
    :sswitch_b6
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mLastName:Ljava/lang/String;

    goto :goto_b0

    .line 557
    :sswitch_b9
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v13, :cond_c5

    .line 558
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseInfo(): Email Attribute Should be NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 562
    :cond_c5
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, ";"

    invoke-direct {v12, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .local v12, st:Ljava/util/StringTokenizer;
    const/4 v5, 0x0

    .line 564
    .local v5, curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    :cond_cd
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_fc

    .line 565
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-nez v13, :cond_ee

    .line 566
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 567
    iget-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 572
    :goto_e4
    if-nez v5, :cond_cd

    .line 573
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseFriend() : parentObj is SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 569
    :cond_ee
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;-><init>(Ljava/lang/String;)V

    iput-object v13, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    .line 570
    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_e4

    .line 577
    :cond_fc
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    if-eqz v13, :cond_b0

    .line 578
    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mEmail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    iput-object v5, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;

    goto :goto_b0

    .line 581
    .end local v5           #curEmailNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataEmail;
    .end local v12           #st:Ljava/util/StringTokenizer;
    :sswitch_105
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mBirthday:Ljava/lang/String;

    goto :goto_b0

    .line 590
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_108
    if-eqz v11, :cond_10c

    .line 591
    iput-object v7, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 593
    :cond_10c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto/16 :goto_88

    .line 522
    nop

    :pswitch_data_114
    .packed-switch 0x38
        :pswitch_89
    .end packed-switch

    .line 549
    :sswitch_data_11a
    .sparse-switch
        0xe -> :sswitch_105
        0x2f -> :sswitch_b9
        0x3b -> :sswitch_b3
        0x5c -> :sswitch_b6
    .end sparse-switch
.end method

.method public parseOwner(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 605
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseOwner() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 607
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 608
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1a

    .line 609
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseOwner() : parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 611
    :cond_1a
    const/4 v7, 0x0

    .line 612
    .local v7, owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    const/4 v5, 0x0

    .line 614
    .local v5, friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
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

    .line 615
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_b6

    .line 622
    const/16 v11, 0x35

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 623
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6f

    .line 624
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseOwner : [mTagStack = "

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

    .line 629
    :cond_6f
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 668
    :goto_74
    return-void

    :pswitch_75
    move-object v8, v9

    .line 617
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 618
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    move-object v5, v8

    .line 633
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    .end local v7           #owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;-><init>()V

    .line 635
    .restart local v7       #owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    if-eqz p2, :cond_a9

    .line 636
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 637
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_85
    if-ge v6, v1, :cond_a9

    .line 638
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 642
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_bc

    .line 637
    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    .line 644
    :sswitch_9d
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mID:Ljava/lang/String;

    goto :goto_9a

    .line 647
    :sswitch_a0
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mName:Ljava/lang/String;

    goto :goto_9a

    .line 650
    :sswitch_a3
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mIsFriend:Ljava/lang/String;

    goto :goto_9a

    .line 653
    :sswitch_a6
    iput-object v4, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mType:Ljava/lang/String;

    goto :goto_9a

    .line 661
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_a9
    const/16 v11, 0x21

    if-ne v10, v11, :cond_b1

    .line 662
    if-eqz v5, :cond_b1

    .line 663
    iput-object v7, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    .line 667
    :cond_b1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_74

    .line 615
    nop

    :pswitch_data_b6
    .packed-switch 0x21
        :pswitch_75
    .end packed-switch

    .line 642
    :sswitch_data_bc
    .sparse-switch
        0x51 -> :sswitch_9d
        0x5a -> :sswitch_a3
        0x6f -> :sswitch_a0
        0xaf -> :sswitch_a6
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
    .line 678
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 679
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parsePeople() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 681
    :cond_c
    const/4 v8, 0x0

    .line 682
    .local v8, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    const/4 v4, 0x0

    .line 683
    .local v4, firstPeople:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    const/4 v6, 0x0

    .line 686
    .local v6, lastPeople:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 687
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .end local v8           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v8, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 696
    .restart local v8       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    :goto_1e
    if-nez v4, :cond_21

    .line 697
    move-object v4, v8

    .line 700
    :cond_21
    iput-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 702
    if-eqz p2, :cond_65

    .line 703
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 704
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_65

    .line 705
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 709
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_70

    .line 704
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 689
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .end local v8           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;-><init>()V

    .line 690
    .restart local v8       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    move-object v7, v9

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 692
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object v4, v7

    .line 693
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_1e

    .line 712
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 715
    :sswitch_51
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 718
    :sswitch_54
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 721
    :sswitch_57
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mDisplayName:Ljava/lang/String;

    goto :goto_3b

    .line 724
    :sswitch_5a
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mModifyTime:Ljava/lang/Long;

    goto :goto_3b

    .line 732
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_65
    if-nez v6, :cond_6d

    .line 735
    iput-object v8, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 740
    :goto_69
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 741
    return-void

    .line 738
    :cond_6d
    iput-object v8, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    goto :goto_69

    .line 709
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
    .registers 21
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v14, :cond_e

    .line 752
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parsePhoneNum() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 754
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 755
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 756
    new-instance v14, Lorg/xml/sax/SAXException;

    const-string v15, "parsePhoneNum() : parentObj is NULL !!!"

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 758
    :cond_1c
    const/4 v13, 0x0

    .line 759
    .local v13, phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v5, 0x0

    .line 760
    .local v5, firstPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v9, 0x0

    .line 761
    .local v9, lastPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    const/4 v6, 0x0

    .line 762
    .local v6, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    const/4 v8, 0x0

    .line 764
    .local v8, info:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
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

    .line 765
    .local v12, parentTag:I
    sparse-switch v12, :sswitch_data_f2

    .line 787
    const/16 v14, 0x3a

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 788
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v14, :cond_84

    .line 789
    const-string v14, "SNS_PARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SnsSvcXmlParser::parsePhoneNum : [mTagStack = "

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

    .line 795
    :cond_84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 839
    :goto_8d
    return-void

    :sswitch_8e
    move-object v10, v11

    .line 767
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 768
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    if-eqz v14, :cond_c6

    .line 769
    iget-object v5, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 770
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    iget-object v9, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 799
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :goto_9b
    new-instance v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .end local v13           #phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    invoke-direct {v13}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;-><init>()V

    .line 801
    .restart local v13       #phoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;
    if-nez v5, :cond_a3

    .line 802
    move-object v5, v13

    .line 805
    :cond_a3
    iput-object v13, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 807
    if-eqz p2, :cond_de

    .line 808
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 809
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_ac
    if-ge v7, v1, :cond_de

    .line 810
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 814
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_fc

    .line 809
    :goto_c3
    add-int/lit8 v7, v7, 0x1

    goto :goto_ac

    .line 772
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    .restart local v10       #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :cond_c6
    move-object v6, v10

    goto :goto_9b

    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :sswitch_c8
    move-object v10, v11

    .line 777
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 778
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    if-eqz v14, :cond_d6

    .line 779
    iget-object v5, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 780
    iget-object v14, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    iget-object v9, v14, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    goto :goto_9b

    .line 782
    :cond_d6
    move-object v8, v10

    goto :goto_9b

    .line 816
    .end local v10           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_d8
    iput-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mValue:Ljava/lang/String;

    goto :goto_c3

    .line 819
    :sswitch_db
    iput-object v4, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mType:Ljava/lang/String;

    goto :goto_c3

    .line 827
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_de
    if-nez v9, :cond_ef

    .line 829
    if-eqz v6, :cond_ea

    .line 830
    iput-object v13, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    .line 838
    :cond_e4
    :goto_e4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8d

    .line 831
    :cond_ea
    if-eqz v8, :cond_e4

    .line 832
    iput-object v13, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mPhoneNum:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    goto :goto_e4

    .line 836
    :cond_ef
    iput-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhoneNum;

    goto :goto_e4

    .line 765
    :sswitch_data_f2
    .sparse-switch
        0x1c -> :sswitch_8e
        0x24 -> :sswitch_c8
    .end sparse-switch

    .line 814
    :sswitch_data_fc
    .sparse-switch
        0xaf -> :sswitch_db
        0xb4 -> :sswitch_d8
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
    .line 849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 850
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseWork() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 852
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 853
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 854
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseWork() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 856
    :cond_1c
    const/4 v12, 0x0

    .line 857
    .local v12, work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v5, 0x0

    .line 858
    .local v5, firstWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v8, 0x0

    .line 859
    .local v8, lastWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    const/4 v7, 0x0

    .line 861
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

    .line 862
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_ea

    .line 874
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 875
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 876
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

    .line 881
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 938
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 864
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;

    .line 865
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    if-eqz v13, :cond_c3

    .line 866
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 867
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 885
    :goto_98
    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .end local v12           #work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;-><init>()V

    .line 887
    .restart local v12       #work:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;
    if-nez v5, :cond_a0

    .line 888
    move-object v5, v12

    .line 891
    :cond_a0
    iput-object v12, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 893
    if-eqz p2, :cond_da

    .line 894
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 895
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_da

    .line 896
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 897
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 898
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 900
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_f0

    .line 895
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 869
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v7, v9

    goto :goto_98

    .line 902
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mEmployer:Ljava/lang/String;

    goto :goto_c0

    .line 905
    :sswitch_c8
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mPosition:Ljava/lang/String;

    goto :goto_c0

    .line 908
    :sswitch_cb
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mStartMonth:Ljava/lang/String;

    goto :goto_c0

    .line 911
    :sswitch_ce
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mEndMonth:Ljava/lang/String;

    goto :goto_c0

    .line 914
    :sswitch_d1
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mDepartment:Ljava/lang/String;

    goto :goto_c0

    .line 917
    :sswitch_d4
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mCountry:Ljava/lang/String;

    goto :goto_c0

    .line 920
    :sswitch_d7
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mCity:Ljava/lang/String;

    goto :goto_c0

    .line 928
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_da
    if-nez v8, :cond_e6

    .line 930
    if-eqz v7, :cond_e0

    .line 931
    iput-object v12, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataInfo;->mWork:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    .line 937
    :cond_e0
    :goto_e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 935
    :cond_e6
    iput-object v12, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataWork;

    goto :goto_e0

    .line 862
    nop

    :pswitch_data_ea
    .packed-switch 0x24
        :pswitch_8b
    .end packed-switch

    .line 900
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
    .line 78
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 79
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
    .line 93
    const/16 v0, 0x66

    .line 95
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 96
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FRIEND-HANDLER >> StartElement localName ["

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

    .line 99
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 100
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 102
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 103
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->pushParsedTag(I)V

    .line 104
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserFriendContentHandler;->invokeParseTagMethodFriend(ILorg/xml/sax/Attributes;)V

    .line 106
    :cond_3c
    return-void
.end method
