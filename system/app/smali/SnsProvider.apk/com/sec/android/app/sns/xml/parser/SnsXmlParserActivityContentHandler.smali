.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserActivityContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodActivity(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    sparse-switch p1, :sswitch_data_22

    .line 111
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 117
    :goto_6
    return-void

    .line 93
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseActivity(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 114
    :catch_b
    move-exception v0

    .line 115
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 96
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseActor(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 99
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseApplication(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 102
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseAttachment(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 105
    :sswitch_19
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseMedia(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 108
    :sswitch_1d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseProperty(ILorg/xml/sax/Attributes;)V
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_20} :catch_b

    goto :goto_6

    .line 91
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_d
        0x5 -> :sswitch_11
        0x7 -> :sswitch_15
        0x2a -> :sswitch_19
        0x45 -> :sswitch_1d
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
    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 31
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
    .line 35
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 36
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
    .line 46
    const/16 v0, 0x66

    .line 48
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 49
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVITY-HANDLER << endElement localName ["

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

    .line 52
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 53
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 55
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 58
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 62
    :cond_47
    return-void
.end method

.method public parseActivity(ILorg/xml/sax/Attributes;)V
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

    .line 127
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v10, :cond_e

    .line 128
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseActivity() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 130
    :cond_e
    const/4 v0, 0x0

    .line 131
    .local v0, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    const/4 v5, 0x0

    .line 132
    .local v5, firstActivity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    const/4 v7, 0x0

    .line 134
    .local v7, lastActivity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_3e

    .line 135
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .end local v0           #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v0, v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 169
    .restart local v0       #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :cond_1e
    :goto_1e
    if-nez v5, :cond_21

    .line 170
    move-object v5, v0

    .line 173
    :cond_21
    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 175
    if-eqz p2, :cond_db

    .line 176
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 178
    .local v1, attCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    if-ge v6, v1, :cond_db

    .line 179
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v3

    .line 184
    .local v3, attrType:I
    sparse-switch v3, :sswitch_data_e6

    .line 178
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 137
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_3e
    new-instance v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .end local v0           #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    invoke-direct {v0}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;-><init>()V

    .line 139
    .restart local v0       #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 141
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_51

    .line 142
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseActivity(): parentObj is NULL !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 145
    :cond_51
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v9           #parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    iget v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-ne v10, v11, :cond_1e

    .line 146
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v10, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    if-nez v10, :cond_68

    .line 147
    iget-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    move-object v8, v10

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 149
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    move-object v5, v8

    .line 150
    iget-object v7, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 151
    goto :goto_1e

    .line 152
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    :cond_68
    new-instance v10, Lorg/xml/sax/SAXException;

    const-string v11, "parseActivity(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 186
    .restart local v1       #attCount:I
    .restart local v2       #attrName:Ljava/lang/String;
    .restart local v3       #attrType:I
    .restart local v4       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_70
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 189
    :sswitch_73
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    goto :goto_3b

    .line 192
    :sswitch_76
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentable:Ljava/lang/Boolean;

    goto :goto_3b

    .line 195
    :sswitch_81
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mRecommendable:Ljava/lang/String;

    goto :goto_3b

    .line 198
    :sswitch_84
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mRecommendsCount:Ljava/lang/Integer;

    goto :goto_3b

    .line 201
    :sswitch_8f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentsCount:Ljava/lang/Integer;

    goto :goto_3b

    .line 204
    :sswitch_9a
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    goto :goto_3b

    .line 207
    :sswitch_a5
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCreateTime:Ljava/lang/Long;

    goto :goto_3b

    .line 210
    :sswitch_b0
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mIconURL:Ljava/lang/String;

    goto :goto_3b

    .line 213
    :sswitch_b3
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mDeletable:Ljava/lang/Boolean;

    goto/16 :goto_3b

    .line 216
    :sswitch_bf
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mForwardable:Ljava/lang/String;

    goto/16 :goto_3b

    .line 219
    :sswitch_c3
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentSubID:Ljava/lang/String;

    goto/16 :goto_3b

    .line 222
    :sswitch_c7
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentTargetID:Ljava/lang/String;

    goto/16 :goto_3b

    .line 225
    :sswitch_cb
    iput-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentType:Ljava/lang/String;

    goto/16 :goto_3b

    .line 228
    :sswitch_cf
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mIsFavorite:Ljava/lang/Boolean;

    goto/16 :goto_3b

    .line 236
    .end local v1           #attCount:I
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #attrType:I
    .end local v4           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_db
    if-nez v7, :cond_e3

    .line 239
    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 244
    :goto_df
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 245
    return-void

    .line 242
    :cond_e3
    iput-object v0, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    goto :goto_df

    .line 184
    :sswitch_data_e6
    .sparse-switch
        0x0 -> :sswitch_9a
        0x15 -> :sswitch_c3
        0x16 -> :sswitch_c7
        0x17 -> :sswitch_cb
        0x18 -> :sswitch_76
        0x1a -> :sswitch_8f
        0x20 -> :sswitch_a5
        0x25 -> :sswitch_b3
        0x41 -> :sswitch_bf
        0x51 -> :sswitch_70
        0x54 -> :sswitch_b0
        0x58 -> :sswitch_cf
        0x87 -> :sswitch_81
        0x88 -> :sswitch_84
        0x95 -> :sswitch_73
    .end sparse-switch
.end method

.method public parseActor(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 256
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseActor() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 258
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 259
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1a

    .line 260
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseActor() : parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 262
    :cond_1a
    const/4 v2, 0x0

    .line 263
    .local v2, actor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;
    const/4 v1, 0x0

    .line 265
    .local v1, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
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

    .line 266
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_b0

    .line 273
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 274
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6e

    .line 275
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseActor : [mTagStack = "

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

    .line 280
    :cond_6e
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 318
    :goto_73
    return-void

    :pswitch_74
    move-object v8, v9

    .line 268
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 269
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    move-object v1, v8

    .line 284
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    .end local v2           #actor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;
    invoke-direct {v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;-><init>()V

    .line 286
    .restart local v2       #actor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;
    if-eqz p2, :cond_a8

    .line 287
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 289
    .local v3, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_84
    if-ge v7, v3, :cond_a8

    .line 290
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v5

    .line 295
    .local v5, attrType:I
    sparse-switch v5, :sswitch_data_b6

    .line 289
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 297
    :sswitch_9c
    iput-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mID:Ljava/lang/String;

    goto :goto_99

    .line 300
    :sswitch_9f
    iput-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mDisplayName:Ljava/lang/String;

    goto :goto_99

    .line 303
    :sswitch_a2
    iput-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mType:Ljava/lang/String;

    goto :goto_99

    .line 306
    :sswitch_a5
    iput-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mIsFriend:Ljava/lang/String;

    goto :goto_99

    .line 314
    .end local v3           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_a8
    if-eqz v1, :cond_ac

    .line 315
    iput-object v2, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    .line 317
    :cond_ac
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_73

    .line 266
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_74
    .end packed-switch

    .line 295
    :sswitch_data_b6
    .sparse-switch
        0x2b -> :sswitch_9f
        0x51 -> :sswitch_9c
        0x5a -> :sswitch_a5
        0xaf -> :sswitch_a2
    .end sparse-switch
.end method

.method public parseApplication(ILorg/xml/sax/Attributes;)V
    .registers 18
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v11, :cond_c

    .line 329
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseApplication() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 331
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v9

    .line 332
    .local v9, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v9, :cond_1a

    .line 333
    new-instance v11, Lorg/xml/sax/SAXException;

    const-string v12, "parseApplication() : parentObj is NULL !!!"

    invoke-direct {v11, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 335
    :cond_1a
    const/4 v2, 0x0

    .line 336
    .local v2, application:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;
    const/4 v1, 0x0

    .line 338
    .local v1, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
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

    .line 339
    .local v10, parentTag:I
    packed-switch v10, :pswitch_data_a8

    .line 346
    const/4 v11, 0x5

    iput v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 347
    iget-boolean v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v11, :cond_6e

    .line 348
    const-string v11, "SNS_PARSER"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SnsSvcXmlParser::parseAddress : [mTagStack = "

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

    .line 354
    :cond_6e
    iget-object v11, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-virtual {p0, v11}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 381
    :goto_73
    return-void

    :pswitch_74
    move-object v8, v9

    .line 341
    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 342
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    move-object v1, v8

    .line 358
    new-instance v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;

    .end local v2           #application:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;
    invoke-direct {v2}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;-><init>()V

    .line 360
    .restart local v2       #application:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;
    if-eqz p2, :cond_9f

    .line 361
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    .line 362
    .local v3, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_84
    if-ge v7, v3, :cond_9f

    .line 363
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v5

    .line 367
    .local v5, attrType:I
    packed-switch v5, :pswitch_data_ae

    .line 362
    :goto_99
    add-int/lit8 v7, v7, 0x1

    goto :goto_84

    .line 369
    :pswitch_9c
    iput-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;->mName:Ljava/lang/String;

    goto :goto_99

    .line 377
    .end local v3           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_9f
    if-eqz v1, :cond_a3

    .line 378
    iput-object v2, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mApplication:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataApplication;

    .line 380
    :cond_a3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_73

    .line 339
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_74
    .end packed-switch

    .line 367
    :pswitch_data_ae
    .packed-switch 0x6f
        :pswitch_9c
    .end packed-switch
.end method

.method public parseAttachment(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 392
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAttachment() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 394
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 395
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 396
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseAttachment() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 398
    :cond_1c
    const/4 v3, 0x0

    .line 399
    .local v3, attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    const/4 v7, 0x0

    .line 400
    .local v7, firstAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    const/4 v9, 0x0

    .line 401
    .local v9, lastAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    const/4 v1, 0x0

    .line 403
    .local v1, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
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

    .line 404
    .local v12, parentTag:I
    packed-switch v12, :pswitch_data_f4

    .line 416
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 417
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_80

    .line 418
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseAttachment : [mTagStack = "

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

    .line 424
    :cond_80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 493
    :goto_89
    return-void

    :pswitch_8a
    move-object v10, v11

    .line 406
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    .line 407
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    if-eqz v13, :cond_c2

    .line 408
    iget-object v7, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 409
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    iget-object v9, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 428
    :goto_97
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .end local v3           #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    invoke-direct {v3}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;-><init>()V

    .line 430
    .restart local v3       #attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    if-nez v7, :cond_9f

    .line 431
    move-object v7, v3

    .line 434
    :cond_9f
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 436
    if-eqz p2, :cond_e5

    .line 437
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    .line 438
    .local v2, attCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_a8
    if-ge v8, v2, :cond_e5

    .line 439
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v5

    .line 443
    .local v5, attrType:I
    sparse-switch v5, :sswitch_data_fa

    .line 438
    :goto_bf
    add-int/lit8 v8, v8, 0x1

    goto :goto_a8

    .line 411
    .end local v2           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    :cond_c2
    move-object v1, v10

    goto :goto_97

    .line 445
    .restart local v2       #attCount:I
    .restart local v4       #attrName:Ljava/lang/String;
    .restart local v5       #attrType:I
    .restart local v6       #attrValue:Ljava/lang/String;
    .restart local v8       #i:I
    :sswitch_c4
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProfileID:Ljava/lang/String;

    goto :goto_bf

    .line 448
    :sswitch_c7
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mPhotoID:Ljava/lang/String;

    goto :goto_bf

    .line 451
    :sswitch_ca
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumID:Ljava/lang/String;

    goto :goto_bf

    .line 454
    :sswitch_cd
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mEventID:Ljava/lang/String;

    goto :goto_bf

    .line 457
    :sswitch_d0
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mGroupID:Ljava/lang/String;

    goto :goto_bf

    .line 460
    :sswitch_d3
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mName:Ljava/lang/String;

    goto :goto_bf

    .line 463
    :sswitch_d6
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mNoteID:Ljava/lang/String;

    goto :goto_bf

    .line 466
    :sswitch_d9
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mVideoID:Ljava/lang/String;

    goto :goto_bf

    .line 469
    :sswitch_dc
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mType:Ljava/lang/String;

    goto :goto_bf

    .line 472
    :sswitch_df
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mAlbumName:Ljava/lang/String;

    goto :goto_bf

    .line 475
    :sswitch_e2
    iput-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mHref:Ljava/lang/String;

    goto :goto_bf

    .line 483
    .end local v2           #attCount:I
    .end local v4           #attrName:Ljava/lang/String;
    .end local v5           #attrType:I
    .end local v6           #attrValue:Ljava/lang/String;
    .end local v8           #i:I
    :cond_e5
    if-nez v9, :cond_f1

    .line 485
    if-eqz v1, :cond_eb

    .line 486
    iput-object v3, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mAttachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 492
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_89

    .line 490
    :cond_f1
    iput-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    goto :goto_eb

    .line 404
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch

    .line 443
    :sswitch_data_fa
    .sparse-switch
        0x7 -> :sswitch_ca
        0x8 -> :sswitch_df
        0x37 -> :sswitch_cd
        0x48 -> :sswitch_d0
        0x50 -> :sswitch_e2
        0x6f -> :sswitch_d3
        0x70 -> :sswitch_d6
        0x79 -> :sswitch_c7
        0x81 -> :sswitch_c4
        0xaf -> :sswitch_dc
        0xb5 -> :sswitch_d9
    .end sparse-switch
.end method

.method public parseMedia(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 504
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMedia() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 506
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v11

    .line 507
    .local v11, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v11, :cond_1c

    .line 508
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseMedia() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 510
    :cond_1c
    const/4 v9, 0x0

    .line 511
    .local v9, media:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;
    const/4 v6, 0x0

    .line 512
    .local v6, firstMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;
    const/4 v8, 0x0

    .line 513
    .local v8, lastMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;
    const/4 v2, 0x0

    .line 515
    .local v2, attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
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

    .line 516
    .local v12, parentTag:I
    packed-switch v12, :pswitch_data_f8

    .line 528
    const/16 v13, 0x2a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 529
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 530
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseMedia : [mTagStack = "

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

    .line 535
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 607
    :goto_8a
    return-void

    :pswitch_8b
    move-object v10, v11

    .line 518
    check-cast v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 519
    .local v10, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    if-eqz v13, :cond_c3

    .line 520
    iget-object v6, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .line 521
    iget-object v13, v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .line 539
    :goto_98
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .end local v9           #media:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;
    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;-><init>()V

    .line 541
    .restart local v9       #media:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;
    if-nez v6, :cond_a0

    .line 542
    move-object v6, v9

    .line 545
    :cond_a0
    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .line 547
    if-eqz p2, :cond_e9

    .line 548
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 549
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a9
    if-ge v7, v1, :cond_e9

    .line 550
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 554
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_fe

    .line 549
    :goto_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    .line 523
    .end local v1           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_c3
    move-object v2, v10

    goto :goto_98

    .line 556
    .restart local v1       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_c5
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mPhotoID:Ljava/lang/String;

    goto :goto_c0

    .line 559
    :sswitch_c8
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumID:Ljava/lang/String;

    goto :goto_c0

    .line 562
    :sswitch_cb
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mVideoID:Ljava/lang/String;

    goto :goto_c0

    .line 565
    :sswitch_ce
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mNoteID:Ljava/lang/String;

    goto :goto_c0

    .line 568
    :sswitch_d1
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mMoodID:Ljava/lang/String;

    goto :goto_c0

    .line 571
    :sswitch_d4
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mHref:Ljava/lang/String;

    goto :goto_c0

    .line 574
    :sswitch_d7
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlt:Ljava/lang/String;

    goto :goto_c0

    .line 577
    :sswitch_da
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mType:Ljava/lang/String;

    goto :goto_c0

    .line 580
    :sswitch_dd
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mSrc:Ljava/lang/String;

    goto :goto_c0

    .line 583
    :sswitch_e0
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mThumbnailURL:Ljava/lang/String;

    goto :goto_c0

    .line 586
    :sswitch_e3
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mWapPhotoID:Ljava/lang/String;

    goto :goto_c0

    .line 589
    :sswitch_e6
    iput-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mAlbumName:Ljava/lang/String;

    goto :goto_c0

    .line 597
    .end local v1           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_e9
    if-nez v8, :cond_f5

    .line 599
    if-eqz v2, :cond_ef

    .line 600
    iput-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mMedia:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    .line 606
    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 604
    :cond_f5
    iput-object v9, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMedia;

    goto :goto_ef

    .line 516
    :pswitch_data_f8
    .packed-switch 0x7
        :pswitch_8b
    .end packed-switch

    .line 554
    :sswitch_data_fe
    .sparse-switch
        0x7 -> :sswitch_c8
        0x8 -> :sswitch_e6
        0x9 -> :sswitch_d7
        0x50 -> :sswitch_d4
        0x6c -> :sswitch_d1
        0x70 -> :sswitch_ce
        0x79 -> :sswitch_c5
        0x9f -> :sswitch_dd
        0xab -> :sswitch_e0
        0xaf -> :sswitch_da
        0xb5 -> :sswitch_cb
        0xb8 -> :sswitch_e3
    .end sparse-switch
.end method

.method public parseProperty(ILorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v13, :cond_e

    .line 618
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseProperty() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 620
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getCurrentParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    move-result-object v10

    .line 621
    .local v10, parentObj:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;
    if-nez v10, :cond_1c

    .line 622
    new-instance v13, Lorg/xml/sax/SAXException;

    const-string v14, "parseProperty() : parentObj is NULL !!!"

    invoke-direct {v13, v14}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 624
    :cond_1c
    const/4 v12, 0x0

    .line 625
    .local v12, property:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;
    const/4 v6, 0x0

    .line 626
    .local v6, firstProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;
    const/4 v8, 0x0

    .line 627
    .local v8, lastProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;
    const/4 v2, 0x0

    .line 629
    .local v2, attachment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
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

    .line 630
    .local v11, parentTag:I
    packed-switch v11, :pswitch_data_de

    .line 642
    const/16 v13, 0x2a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mSkipParsingTag:I

    .line 643
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v13, :cond_81

    .line 644
    const-string v13, "SNS_PARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SnsSvcXmlParser::parseProperty : [mTagStack = "

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

    .line 650
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 695
    :goto_8a
    return-void

    :pswitch_8b
    move-object v9, v10

    .line 632
    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;

    .line 633
    .local v9, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    if-eqz v13, :cond_c3

    .line 634
    iget-object v6, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 635
    iget-object v13, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    iget-object v8, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 654
    :goto_98
    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .end local v12           #property:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;
    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;-><init>()V

    .line 656
    .restart local v12       #property:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;
    if-nez v6, :cond_a0

    .line 657
    move-object v6, v12

    .line 660
    :cond_a0
    iput-object v12, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 662
    if-eqz p2, :cond_ce

    .line 663
    invoke-interface/range {p2 .. p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 664
    .local v1, attCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a9
    if-ge v7, v1, :cond_ce

    .line 665
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, attrName:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 667
    .local v5, attrValue:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v4

    .line 669
    .local v4, attrType:I
    sparse-switch v4, :sswitch_data_e4

    .line 664
    :goto_c0
    add-int/lit8 v7, v7, 0x1

    goto :goto_a9

    .line 637
    .end local v1           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_c3
    move-object v2, v9

    goto :goto_98

    .line 671
    .restart local v1       #attCount:I
    .restart local v3       #attrName:Ljava/lang/String;
    .restart local v4       #attrType:I
    .restart local v5       #attrValue:Ljava/lang/String;
    .restart local v7       #i:I
    :sswitch_c5
    iput-object v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mName:Ljava/lang/String;

    goto :goto_c0

    .line 674
    :sswitch_c8
    iput-object v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mText:Ljava/lang/String;

    goto :goto_c0

    .line 677
    :sswitch_cb
    iput-object v5, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mHref:Ljava/lang/String;

    goto :goto_c0

    .line 685
    .end local v1           #attCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .end local v4           #attrType:I
    .end local v5           #attrValue:Ljava/lang/String;
    .end local v7           #i:I
    :cond_ce
    if-nez v8, :cond_da

    .line 687
    if-eqz v2, :cond_d4

    .line 688
    iput-object v12, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAttachment;->mProperty:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    .line 694
    :cond_d4
    :goto_d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    goto :goto_8a

    .line 692
    :cond_da
    iput-object v12, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProperty;

    goto :goto_d4

    .line 630
    nop

    :pswitch_data_de
    .packed-switch 0x7
        :pswitch_8b
    .end packed-switch

    .line 669
    :sswitch_data_e4
    .sparse-switch
        0x50 -> :sswitch_cb
        0x6f -> :sswitch_c5
        0xa8 -> :sswitch_c8
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
    .line 66
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 67
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
    .line 73
    const/16 v0, 0x66

    .line 75
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 76
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTIVITY-HANDLER >> StartElement localName ["

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

    .line 79
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 80
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 82
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 83
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->pushParsedTag(I)V

    .line 84
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserActivityContentHandler;->invokeParseTagMethodActivity(ILorg/xml/sax/Attributes;)V

    .line 86
    :cond_3c
    return-void
.end method
