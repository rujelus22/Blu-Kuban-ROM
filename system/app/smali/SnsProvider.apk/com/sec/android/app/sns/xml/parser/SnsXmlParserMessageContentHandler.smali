.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserMessageContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodMessage(ILorg/xml/sax/Attributes;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 108
    :goto_6
    return-void

    .line 84
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseDeleted(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 105
    :catch_b
    move-exception v0

    .line 106
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 87
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseFail(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 90
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseMessage(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 93
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseReceiver(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 96
    :sswitch_19
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseSender(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 99
    :sswitch_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseThread(ILorg/xml/sax/Attributes;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_20} :catch_b

    goto :goto_6

    .line 82
    nop

    :sswitch_data_22
    .sparse-switch
        0x13 -> :sswitch_7
        0x18 -> :sswitch_d
        0x2c -> :sswitch_11
        0x48 -> :sswitch_15
        0x54 -> :sswitch_19
        0x5d -> :sswitch_1d
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
    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 27
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
    .line 31
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 32
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
    .line 37
    const/16 v0, 0x66

    .line 39
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 40
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE-HANDLER << endElement localName ["

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

    .line 43
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 44
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 46
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 49
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 53
    :cond_47
    return-void
.end method

.method public parseDeleted(ILorg/xml/sax/Attributes;)V
    .registers 11
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v6, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v6, :cond_c

    .line 119
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "parseDeleted() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 121
    :cond_c
    const/4 v4, 0x0

    .line 123
    .local v4, deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    iget-object v6, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_37

    .line 124
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;

    .end local v4           #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    iget-object v6, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 129
    .restart local v4       #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    if-eqz p2, :cond_46

    .line 130
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 131
    .local v0, attrCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_23
    if-ge v5, v0, :cond_46

    .line 132
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 136
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_4c

    .line 131
    :goto_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 126
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_37
    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "parseDeleted(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :pswitch_3f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mCount:I

    goto :goto_34

    .line 145
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_46
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 147
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 148
    return-void

    .line 136
    :pswitch_data_4c
    .packed-switch 0x1d
        :pswitch_3f
    .end packed-switch
.end method

.method public parseFail(ILorg/xml/sax/Attributes;)V
    .registers 16
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 158
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseFail() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 160
    :cond_c
    const/4 v5, 0x0

    .line 161
    .local v5, fail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;
    const/4 v6, 0x0

    .line 162
    .local v6, firstFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;
    const/4 v8, 0x0

    .line 164
    .local v8, lastFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;
    const/4 v4, 0x0

    .line 166
    .local v4, deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_20

    .line 167
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseFail(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 169
    :cond_20
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5a

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;

    .line 172
    .restart local v4       #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    .end local v5           #fail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;
    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;-><init>()V

    .line 174
    .restart local v5       #fail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;
    iget-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    if-eqz v9, :cond_3a

    .line 175
    iget-object v6, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    .line 176
    iget-object v9, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    iget-object v8, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    .line 192
    :cond_3a
    if-nez v6, :cond_3d

    .line 193
    move-object v6, v5

    .line 196
    :cond_3d
    iput-object v5, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    .line 198
    if-eqz p2, :cond_a2

    .line 199
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 200
    .local v0, attrCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_46
    if-ge v7, v0, :cond_a2

    .line 201
    invoke-interface {p2, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_ae

    .line 200
    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 179
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_5a
    const/16 v9, 0x18

    iput v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 180
    iget-boolean v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v9, :cond_96

    .line 181
    const-string v9, "SNS_PARSER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SnsSvcXmlParser::parseFavorite : [mTagStack = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v11}, Ljava/util/Stack;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ], SKIPPING-TAG = <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/sec/android/app/sns/type/SnsXmlParserTag;->_NAME_:[Ljava/lang/String;

    iget v12, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_96
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 225
    :goto_9b
    return-void

    .line 207
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_9c
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mID:Ljava/lang/String;

    goto :goto_57

    .line 210
    :sswitch_9f
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mSP:Ljava/lang/String;

    goto :goto_57

    .line 218
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_a2
    if-nez v8, :cond_aa

    .line 219
    iput-object v5, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;->mFail:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    .line 224
    :goto_a6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_9b

    .line 221
    :cond_aa
    iput-object v5, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFail;

    goto :goto_a6

    .line 205
    nop

    :sswitch_data_ae
    .sparse-switch
        0x51 -> :sswitch_9c
        0x95 -> :sswitch_9f
    .end sparse-switch
.end method

.method public parseMessage(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 236
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMessage() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 238
    :cond_e
    const/4 v8, 0x0

    .line 239
    .local v8, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    const/4 v5, 0x0

    .line 240
    .local v5, firstMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    const/4 v7, 0x0

    .line 242
    .local v7, lastMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    const/4 v12, 0x0

    .line 245
    .local v12, thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v13, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0x15

    if-ne v13, v14, :cond_4b

    .line 246
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .end local v8           #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v8, v13}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 294
    .restart local v8       #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :goto_25
    if-nez v5, :cond_28

    .line 295
    move-object v5, v8

    .line 298
    :cond_28
    iput-object v8, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 300
    if-eqz p2, :cond_12f

    .line 301
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 302
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_31
    if-ge v6, v1, :cond_12f

    .line 303
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 307
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_144

    .line 302
    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 249
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_4b
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .end local v8           #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;-><init>()V

    .line 250
    .restart local v8       #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 252
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_5e

    .line 253
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMessage(): parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_5e
    move-object v13, v10

    .line 255
    check-cast v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v13, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0x15

    if-ne v13, v14, :cond_86

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v13, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v14, 0xf

    if-ne v13, v14, :cond_7e

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    move-object v9, v13

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 259
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    move-object v5, v9

    .line 260
    iget-object v7, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 261
    goto :goto_25

    .line 262
    .end local v9           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :cond_7e
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMessage(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 265
    :cond_86
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

    .line 266
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_16a

    .line 280
    const/16 v13, 0x2c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 281
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_e7

    .line 282
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseMessage : [mTagStack = "

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

    .line 288
    :cond_e7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 358
    .end local v10           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v11           #parentTag:I
    :goto_f0
    return-void

    .restart local v10       #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .restart local v11       #parentTag:I
    :pswitch_f1
    move-object v9, v10

    .line 270
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .line 271
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    if-eqz v13, :cond_100

    .line 272
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 273
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    goto/16 :goto_25

    .line 275
    :cond_100
    move-object v12, v9

    goto/16 :goto_25

    .line 309
    .end local v9           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    .end local v10           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    .end local v11           #parentTag:I
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_103
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mThreadID:Ljava/lang/String;

    goto/16 :goto_48

    .line 315
    :sswitch_107
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    goto/16 :goto_48

    .line 318
    :sswitch_10b
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSP:Ljava/lang/String;

    goto/16 :goto_48

    .line 321
    :sswitch_10f
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    goto/16 :goto_48

    .line 324
    :sswitch_113
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    goto/16 :goto_48

    .line 327
    :sswitch_117
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSent:Ljava/lang/String;

    goto/16 :goto_48

    .line 330
    :sswitch_11b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    goto/16 :goto_48

    .line 333
    :sswitch_127
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    goto/16 :goto_48

    .line 336
    :sswitch_12b
    iput-object v4, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    goto/16 :goto_48

    .line 344
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_12f
    if-nez v7, :cond_140

    .line 346
    if-eqz v12, :cond_13b

    .line 347
    iput-object v8, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 357
    :goto_135
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_f0

    .line 351
    :cond_13b
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    goto :goto_135

    .line 355
    :cond_140
    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    goto :goto_135

    .line 307
    nop

    :sswitch_data_144
    .sparse-switch
        0x3c -> :sswitch_10f
        0x51 -> :sswitch_107
        0x94 -> :sswitch_12b
        0x95 -> :sswitch_10b
        0x98 -> :sswitch_11b
        0x99 -> :sswitch_117
        0xa9 -> :sswitch_103
        0xac -> :sswitch_113
        0xb2 -> :sswitch_127
    .end sparse-switch

    .line 266
    :pswitch_data_16a
    .packed-switch 0x5d
        :pswitch_f1
    .end packed-switch
.end method

.method public parseReceiver(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 369
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseReceiver() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 371
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 373
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 374
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseActor() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 376
    :cond_1c
    const/4 v12, 0x0

    .line 377
    .local v12, receiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;
    const/4 v5, 0x0

    .line 378
    .local v5, firstReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;
    const/4 v7, 0x0

    .line 380
    .local v7, lastReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;
    const/4 v8, 0x0

    .line 382
    .local v8, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
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

    .line 384
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_de

    .line 397
    const/16 v13, 0x48

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 398
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 399
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseReceiver : [mTagStack = "

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

    .line 405
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 451
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 387
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 388
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    if-eqz v13, :cond_c3

    .line 389
    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 390
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v7, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 409
    :goto_98
    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .end local v12           #receiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;
    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;-><init>()V

    .line 411
    .restart local v12       #receiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;
    if-nez v5, :cond_a0

    .line 412
    move-object v5, v12

    .line 415
    :cond_a0
    iput-object v12, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 417
    if-eqz p2, :cond_ce

    .line 418
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 419
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a9
    if-ge v6, v1, :cond_ce

    .line 420
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 424
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_e4

    .line 419
    :goto_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a9

    .line 392
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_c3
    move-object v8, v9

    goto :goto_98

    .line 426
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_c5
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mID:Ljava/lang/String;

    goto :goto_c0

    .line 429
    :sswitch_c8
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mName:Ljava/lang/String;

    goto :goto_c0

    .line 432
    :sswitch_cb
    iput-object v4, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    goto :goto_c0

    .line 441
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_ce
    if-nez v7, :cond_da

    .line 443
    if-eqz v8, :cond_d4

    .line 444
    iput-object v12, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    .line 450
    :cond_d4
    :goto_d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 448
    :cond_da
    iput-object v12, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    goto :goto_d4

    .line 384
    nop

    :pswitch_data_de
    .packed-switch 0x2c
        :pswitch_8b
    .end packed-switch

    .line 424
    :sswitch_data_e4
    .sparse-switch
        0x51 -> :sswitch_c5
        0x6f -> :sswitch_c8
        0xb2 -> :sswitch_cb
    .end sparse-switch
.end method

.method public parseSender(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 462
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseSender() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 464
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v8

    .line 465
    .local v8, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v8, :cond_1a

    .line 466
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseSender(): parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 468
    :cond_1a
    const/4 v10, 0x0

    .line 469
    .local v10, sender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;
    const/4 v6, 0x0

    .line 471
    .local v6, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
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

    .line 472
    .local v9, parentTag:I
    packed-switch v9, :pswitch_data_ac

    .line 480
    const/16 v11, 0x54

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 481
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6f

    .line 482
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseSender : [mTagStack = "

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

    .line 488
    :cond_6f
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 519
    :goto_74
    return-void

    :pswitch_75
    move-object v7, v8

    .line 475
    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 476
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    move-object v6, v7

    .line 492
    new-instance v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    .end local v10           #sender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;
    invoke-direct {v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;-><init>()V

    .line 494
    .restart local v10       #sender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;
    if-eqz p2, :cond_a3

    .line 495
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 496
    .local v1, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_85
    if-ge v5, v1, :cond_a3

    .line 497
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 501
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_b2

    .line 496
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    .line 503
    :sswitch_9d
    iput-object v4, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    goto :goto_9a

    .line 506
    :sswitch_a0
    iput-object v4, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    goto :goto_9a

    .line 515
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a3
    if-eqz v6, :cond_a7

    .line 516
    iput-object v10, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    .line 518
    :cond_a7
    invoke-virtual {p0, v10}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_74

    .line 472
    nop

    :pswitch_data_ac
    .packed-switch 0x2c
        :pswitch_75
    .end packed-switch

    .line 501
    :sswitch_data_b2
    .sparse-switch
        0x51 -> :sswitch_9d
        0x6f -> :sswitch_a0
    .end sparse-switch
.end method

.method public parseThread(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 530
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseThread() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 532
    :cond_c
    const/4 v8, 0x0

    .line 533
    .local v8, thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    const/4 v4, 0x0

    .line 534
    .local v4, firstThread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    const/4 v6, 0x0

    .line 537
    .local v6, lastThread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 538
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .end local v8           #thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v8, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 546
    .restart local v8       #thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    :goto_1e
    if-nez v4, :cond_21

    .line 547
    move-object v4, v8

    .line 550
    :cond_21
    iput-object v8, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .line 552
    if-eqz p2, :cond_5c

    .line 553
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 554
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_5c

    .line 555
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 559
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_68

    .line 554
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 540
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .end local v8           #thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;-><init>()V

    .line 541
    .restart local v8       #thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    move-object v7, v9

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .line 542
    .local v7, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    move-object v4, v7

    .line 543
    iget-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    goto :goto_1e

    .line 561
    .end local v7           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 564
    :sswitch_51
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mUnread:Ljava/lang/Integer;

    goto :goto_3b

    .line 572
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_5c
    if-nez v6, :cond_64

    .line 575
    iput-object v8, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 580
    :goto_60
    invoke-virtual {p0, v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 581
    return-void

    .line 578
    :cond_64
    iput-object v8, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    goto :goto_60

    .line 559
    nop

    :sswitch_data_68
    .sparse-switch
        0x51 -> :sswitch_4e
        0xb2 -> :sswitch_51
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
    .line 57
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 58
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
    .line 64
    const/16 v0, 0x66

    .line 66
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 67
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE-HANDLER >> StartElement localName ["

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

    .line 70
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 71
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 73
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 74
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->pushParsedTag(I)V

    .line 75
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserMessageContentHandler;->invokeParseTagMethodMessage(ILorg/xml/sax/Attributes;)V

    .line 77
    :cond_3c
    return-void
.end method
