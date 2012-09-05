.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserNotificationContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodNotification(ILorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "tagType"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_e

    .line 79
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 86
    :goto_6
    return-void

    .line 76
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->parseNotification(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 82
    :catch_b
    move-exception v0

    .line 83
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 74
    nop

    :pswitch_data_e
    .packed-switch 0x32
        :pswitch_7
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
    .line 18
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 19
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
    .line 23
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 24
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
    .line 29
    const/16 v0, 0x66

    .line 31
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 32
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFICATION-HANDLER << endElement localName ["

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

    .line 35
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 36
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 38
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 41
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 45
    :cond_47
    return-void
.end method

.method public parseNotification(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 97
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseNotification() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 99
    :cond_c
    const/4 v7, 0x0

    .line 100
    .local v7, notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    const/4 v4, 0x0

    .line 101
    .local v4, firstNotification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    const/4 v6, 0x0

    .line 104
    .local v6, lastNotification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 105
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .end local v7           #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v7, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 114
    .restart local v7       #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    :goto_1e
    if-nez v4, :cond_21

    .line 115
    move-object v4, v7

    .line 118
    :cond_21
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 120
    if-eqz p2, :cond_8b

    .line 121
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 122
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_8b

    .line 123
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_96

    .line 122
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 107
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .end local v7           #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;-><init>()V

    .line 108
    .restart local v7       #notification:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    move-object v8, v9

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    .line 110
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    move-object v4, v8

    .line 111
    iget-object v6, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    goto :goto_1e

    .line 130
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 133
    :sswitch_51
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mName:Ljava/lang/String;

    goto :goto_3b

    .line 136
    :sswitch_54
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mCount:I

    goto :goto_3b

    .line 139
    :sswitch_5b
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mSp:Ljava/lang/String;

    goto :goto_3b

    .line 142
    :sswitch_5e
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedType:Ljava/lang/String;

    goto :goto_3b

    .line 145
    :sswitch_61
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedID:Ljava/lang/String;

    goto :goto_3b

    .line 148
    :sswitch_64
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedName:Ljava/lang/String;

    goto :goto_3b

    .line 151
    :sswitch_67
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mRelatedHref:Ljava/lang/String;

    goto :goto_3b

    .line 154
    :sswitch_6a
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mSubRelatedID:Ljava/lang/String;

    goto :goto_3b

    .line 157
    :sswitch_6d
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerID:Ljava/lang/String;

    goto :goto_3b

    .line 160
    :sswitch_70
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerName:Ljava/lang/String;

    goto :goto_3b

    .line 163
    :sswitch_73
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mOwnerProfilePhotoURL:Ljava/lang/String;

    goto :goto_3b

    .line 166
    :sswitch_76
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mTypeIconURL:Ljava/lang/String;

    goto :goto_3b

    .line 169
    :sswitch_79
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mCreateTime:Ljava/lang/Long;

    goto :goto_3b

    .line 172
    :sswitch_84
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mUnread:Z

    goto :goto_3b

    .line 180
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_8b
    if-nez v6, :cond_93

    .line 183
    iput-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 188
    :goto_8f
    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 189
    return-void

    .line 186
    :cond_93
    iput-object v7, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNotification;

    goto :goto_8f

    .line 127
    :sswitch_data_96
    .sparse-switch
        0x1d -> :sswitch_54
        0x20 -> :sswitch_79
        0x50 -> :sswitch_67
        0x51 -> :sswitch_4e
        0x54 -> :sswitch_76
        0x6f -> :sswitch_51
        0x72 -> :sswitch_6d
        0x73 -> :sswitch_70
        0x82 -> :sswitch_73
        0x89 -> :sswitch_61
        0x8a -> :sswitch_64
        0x8b -> :sswitch_5e
        0x95 -> :sswitch_5b
        0xa5 -> :sswitch_6a
        0xb2 -> :sswitch_84
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
    .line 49
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 50
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
    .line 56
    const/16 v0, 0x66

    .line 58
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 59
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFICATION-HANDLER >> StartElement localName ["

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

    .line 62
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 63
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 65
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 66
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->pushParsedTag(I)V

    .line 67
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNotificationContentHandler;->invokeParseTagMethodNotification(ILorg/xml/sax/Attributes;)V

    .line 69
    :cond_3c
    return-void
.end method
