.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserScheduleContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodSchedule(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 89
    sparse-switch p1, :sswitch_data_22

    .line 109
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 115
    :goto_6
    return-void

    .line 91
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseAddress(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 112
    :catch_b
    move-exception v0

    .line 113
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 94
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseMember(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 97
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseOwner(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 100
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parsePhotoThumbnail(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 103
    :sswitch_19
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseRSVP(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 106
    :sswitch_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseSchedule(ILorg/xml/sax/Attributes;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_20} :catch_b

    goto :goto_6

    .line 89
    nop

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_7
        0x2b -> :sswitch_d
        0x35 -> :sswitch_11
        0x3f -> :sswitch_15
        0x46 -> :sswitch_19
        0x51 -> :sswitch_1d
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
    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 26
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
    .line 30
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 31
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
    .line 36
    const/16 v0, 0x66

    .line 38
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 39
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCHEDULE-HANDLER << endElement localName ["

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

    .line 42
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 43
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 45
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 48
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 52
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
    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 126
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 128
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 129
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 130
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAddress() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 132
    :cond_1c
    const/4 v1, 0x0

    .line 133
    .local v1, address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v6, 0x0

    .line 134
    .local v6, firstAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v8, 0x0

    .line 135
    .local v8, lastAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    const/4 v12, 0x0

    .line 137
    .local v12, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
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

    .line 138
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_e0

    .line 150
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 151
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_80

    .line 152
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

    .line 158
    :cond_80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 207
    :goto_89
    return-void

    :pswitch_8a
    move-object v9, v10

    .line 140
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 141
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    if-eqz v13, :cond_c2

    .line 142
    iget-object v6, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 143
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 162
    :goto_97
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .end local v1           #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    invoke-direct {v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;-><init>()V

    .line 164
    .restart local v1       #address:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;
    if-nez v6, :cond_9f

    .line 165
    move-object v6, v1

    .line 168
    :cond_9f
    iput-object v1, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 170
    if-eqz p2, :cond_d0

    .line 171
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 173
    .local v2, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a8
    if-ge v7, v2, :cond_d0

    .line 174
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 178
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_e6

    .line 173
    :goto_bf
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    .line 145
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_c2
    move-object v12, v9

    goto :goto_97

    .line 180
    .restart local v2       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_c4
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mCity:Ljava/lang/String;

    goto :goto_bf

    .line 183
    :sswitch_c7
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mDetail:Ljava/lang/String;

    goto :goto_bf

    .line 186
    :sswitch_ca
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZipCode:Ljava/lang/String;

    goto :goto_bf

    .line 189
    :sswitch_cd
    iput-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mZip:Ljava/lang/String;

    goto :goto_bf

    .line 197
    .end local v2           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_d0
    if-nez v8, :cond_dc

    .line 199
    if-eqz v12, :cond_d6

    .line 200
    iput-object v1, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mAddress:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    .line 206
    :cond_d6
    :goto_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_89

    .line 204
    :cond_dc
    iput-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAddress;

    goto :goto_d6

    .line 138
    nop

    :pswitch_data_e0
    .packed-switch 0x51
        :pswitch_8a
    .end packed-switch

    .line 178
    :sswitch_data_e6
    .sparse-switch
        0x13 -> :sswitch_c4
        0x28 -> :sswitch_c7
        0xbd -> :sswitch_ca
        0xbe -> :sswitch_cd
    .end sparse-switch
.end method

.method public parseMember(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 218
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMember() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 220
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 222
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 223
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMember() : parentObj SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 225
    :cond_1c
    const/4 v8, 0x0

    .line 226
    .local v8, member:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;
    const/4 v5, 0x0

    .line 227
    .local v5, firstMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;
    const/4 v7, 0x0

    .line 228
    .local v7, lastMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;
    const/4 v12, 0x0

    .line 230
    .local v12, rsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
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

    .line 231
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_da

    .line 243
    const/16 v13, 0x2b

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 244
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 245
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseMember : [mTagStack = "

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

    .line 251
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 294
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 233
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .line 234
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    if-eqz v13, :cond_c3

    .line 235
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .line 236
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    iget-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .line 255
    :goto_98
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .end local v8           #member:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;
    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;-><init>()V

    .line 257
    .restart local v8       #member:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;
    if-nez v5, :cond_a0

    .line 258
    move-object v5, v8

    .line 261
    :cond_a0
    iput-object v8, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .line 263
    if-eqz p2, :cond_cb

    .line 264
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 265
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_cb

    .line 266
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 270
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_e0

    .line 265
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 238
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v12, v9

    goto :goto_98

    .line 272
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mID:Ljava/lang/String;

    goto :goto_c0

    .line 275
    :sswitch_c8
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mName:Ljava/lang/String;

    goto :goto_c0

    .line 284
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_cb
    if-nez v7, :cond_d7

    .line 286
    if-eqz v12, :cond_d1

    .line 287
    iput-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMember:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    .line 293
    :cond_d1
    :goto_d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 291
    :cond_d7
    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMember;

    goto :goto_d1

    .line 231
    :pswitch_data_da
    .packed-switch 0x46
        :pswitch_8b
    .end packed-switch

    .line 270
    :sswitch_data_e0
    .sparse-switch
        0x51 -> :sswitch_c5
        0x6f -> :sswitch_c8
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
    .line 304
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 305
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseOwner() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 307
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 308
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_1a

    .line 309
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseOwner() : parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 311
    :cond_1a
    const/4 v6, 0x0

    .line 312
    .local v6, owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    const/4 v10, 0x0

    .line 314
    .local v10, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
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

    .line 315
    .local v9, parentTag:I
    packed-switch v9, :pswitch_data_b6

    .line 322
    const/16 v11, 0x35

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 323
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6f

    .line 324
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

    .line 329
    :cond_6f
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 368
    :goto_74
    return-void

    :pswitch_75
    move-object v7, v8

    .line 317
    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 318
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    move-object v10, v7

    .line 333
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    .end local v6           #owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    invoke-direct {v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;-><init>()V

    .line 335
    .restart local v6       #owner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;
    if-eqz p2, :cond_a9

    .line 336
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 337
    .local v1, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_85
    if-ge v5, v1, :cond_a9

    .line 338
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_bc

    .line 337
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 344
    :sswitch_9d
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mID:Ljava/lang/String;

    goto :goto_9a

    .line 347
    :sswitch_a0
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mName:Ljava/lang/String;

    goto :goto_9a

    .line 350
    :sswitch_a3
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mIsFriend:Ljava/lang/String;

    goto :goto_9a

    .line 353
    :sswitch_a6
    iput-object v4, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;->mType:Ljava/lang/String;

    goto :goto_9a

    .line 361
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a9
    const/16 v11, 0x51

    if-ne v9, v11, :cond_b1

    .line 362
    if-eqz v10, :cond_b1

    .line 363
    iput-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mOwner:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataOwner;

    .line 367
    :cond_b1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_74

    .line 315
    nop

    :pswitch_data_b6
    .packed-switch 0x51
        :pswitch_75
    .end packed-switch

    .line 342
    :sswitch_data_bc
    .sparse-switch
        0x51 -> :sswitch_9d
        0x5a -> :sswitch_a3
        0x6f -> :sswitch_a0
        0xaf -> :sswitch_a6
    .end sparse-switch
.end method

.method public parsePhotoThumbnail(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 379
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parsePhotoThumbnail() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 381
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v7

    .line 382
    .local v7, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    const/4 v9, 0x0

    .line 383
    .local v9, photoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;
    const/4 v10, 0x0

    .line 385
    .local v10, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    iget-object v12, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v11, v12}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 386
    .local v8, parentTag:I
    packed-switch v8, :pswitch_data_9e

    .line 395
    const/16 v11, 0x3f

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 396
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_65

    .line 397
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parsePhotoThumbnail : [mTagStack = "

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

    .line 403
    :cond_65
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 430
    :goto_6a
    return-void

    :pswitch_6b
    move-object v6, v7

    .line 390
    check-cast v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 391
    .local v6, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    move-object v10, v6

    .line 407
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;

    .end local v9           #photoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;-><init>()V

    .line 409
    .restart local v9       #photoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;
    if-eqz p2, :cond_96

    .line 410
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 411
    .local v1, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7b
    if-ge v5, v1, :cond_96

    .line 412
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 416
    .local v3, attrType:I
    packed-switch v3, :pswitch_data_a4

    .line 411
    :goto_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 418
    :pswitch_93
    iput-object v4, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;->mUrl:Ljava/lang/String;

    goto :goto_90

    .line 426
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_96
    if-eqz v10, :cond_9a

    .line 427
    iput-object v9, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPhotoThumbnail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPhotoThumbnail;

    .line 429
    :cond_9a
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_6a

    .line 386
    :pswitch_data_9e
    .packed-switch 0x51
        :pswitch_6b
    .end packed-switch

    .line 416
    :pswitch_data_a4
    .packed-switch 0xb0
        :pswitch_93
    .end packed-switch
.end method

.method public parseRSVP(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 441
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseRSVP() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 443
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 444
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1c

    .line 445
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseActor() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 447
    :cond_1c
    const/4 v11, 0x0

    .line 448
    .local v11, rsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    const/4 v5, 0x0

    .line 449
    .local v5, firstRsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    const/4 v7, 0x0

    .line 450
    .local v7, lastRsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    const/4 v12, 0x0

    .line 452
    .local v12, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
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

    .line 453
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_de

    .line 465
    const/16 v13, 0x46

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 466
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 467
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseRSVP : [mTagStack = "

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

    .line 472
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 515
    :goto_8a
    return-void

    :pswitch_8b
    move-object v8, v9

    .line 455
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 456
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    iget-object v13, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    if-eqz v13, :cond_c3

    .line 457
    iget-object v5, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .line 458
    iget-object v13, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    iget-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .line 476
    :goto_98
    new-instance v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .end local v11           #rsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    invoke-direct {v11}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;-><init>()V

    .line 478
    .restart local v11       #rsvp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;
    if-nez v5, :cond_a0

    .line 479
    move-object v5, v11

    .line 482
    :cond_a0
    iput-object v11, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .line 484
    if-eqz p2, :cond_cf

    .line 485
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 486
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_cf

    .line 487
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 491
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_e4

    .line 486
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 460
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v12, v8

    goto :goto_98

    .line 493
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mType:Ljava/lang/String;

    goto :goto_c0

    .line 496
    :sswitch_c8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mMembersCount:I

    goto :goto_c0

    .line 505
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_cf
    if-nez v7, :cond_db

    .line 507
    if-eqz v12, :cond_d5

    .line 508
    iput-object v11, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mRSVP:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    .line 514
    :cond_d5
    :goto_d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 512
    :cond_db
    iput-object v11, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRSVP;

    goto :goto_d5

    .line 453
    :pswitch_data_de
    .packed-switch 0x51
        :pswitch_8b
    .end packed-switch

    .line 491
    :sswitch_data_e4
    .sparse-switch
        0x65 -> :sswitch_c8
        0xaf -> :sswitch_c5
    .end sparse-switch
.end method

.method public parseSchedule(ILorg/xml/sax/Attributes;)V
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

    .line 525
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 526
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseActivity() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 528
    :cond_e
    const/4 v9, 0x0

    .line 529
    .local v9, schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    const/4 v4, 0x0

    .line 530
    .local v4, firstSchedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    const/4 v6, 0x0

    .line 532
    .local v6, lastSchedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 533
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .end local v9           #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 552
    .restart local v9       #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :cond_1e
    :goto_1e
    if-nez v4, :cond_21

    .line 553
    move-object v4, v9

    .line 556
    :cond_21
    iput-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 558
    if-eqz p2, :cond_a5

    .line 559
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 560
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_a5

    .line 561
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 565
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_b0

    .line 560
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 535
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .end local v9           #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;-><init>()V

    .line 536
    .restart local v9       #schedule:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 537
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_51

    .line 538
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseSchedule(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 541
    :cond_51
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v8           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 542
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v11, 0x17

    if-ne v10, v11, :cond_6a

    .line 543
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    move-object v7, v10

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 544
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    move-object v4, v7

    .line 545
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    .line 546
    goto :goto_1e

    .line 547
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;
    :cond_6a
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseSchedule(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 567
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_72
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 570
    :sswitch_75
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 573
    :sswitch_78
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mType:Ljava/lang/String;

    goto :goto_3b

    .line 576
    :sswitch_7b
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mTitle:Ljava/lang/String;

    goto :goto_3b

    .line 579
    :sswitch_7e
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mHostName:Ljava/lang/String;

    goto :goto_3b

    .line 582
    :sswitch_81
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mStartTime:Ljava/lang/Long;

    goto :goto_3b

    .line 585
    :sswitch_8c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mEndTime:Ljava/lang/Long;

    goto :goto_3b

    .line 588
    :sswitch_97
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPostTime:Ljava/lang/Long;

    goto :goto_3b

    .line 591
    :sswitch_a2
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mPlace:Ljava/lang/String;

    goto :goto_3b

    .line 599
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a5
    if-nez v6, :cond_ad

    .line 602
    iput-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 607
    :goto_a9
    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 608
    return-void

    .line 605
    :cond_ad
    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSchedule;

    goto :goto_a9

    .line 565
    :sswitch_data_b0
    .sparse-switch
        0x32 -> :sswitch_8c
        0x4f -> :sswitch_7e
        0x51 -> :sswitch_72
        0x7b -> :sswitch_a2
        0x7f -> :sswitch_97
        0x95 -> :sswitch_75
        0xa2 -> :sswitch_81
        0xac -> :sswitch_7b
        0xaf -> :sswitch_78
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
    .line 56
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 57
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
    .line 71
    const/16 v0, 0x66

    .line 73
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 74
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCHEDULE-HANDLER >> StartElement localName ["

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

    .line 77
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 78
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 80
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 81
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->pushParsedTag(I)V

    .line 82
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserScheduleContentHandler;->invokeParseTagMethodSchedule(ILorg/xml/sax/Attributes;)V

    .line 84
    :cond_3c
    return-void
.end method
