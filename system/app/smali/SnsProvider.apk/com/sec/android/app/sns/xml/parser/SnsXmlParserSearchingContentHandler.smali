.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserSearchingContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodSearching(ILorg/xml/sax/Attributes;)V
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
    sparse-switch p1, :sswitch_data_12

    .line 84
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 90
    :goto_6
    return-void

    .line 78
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->parseObject(ILorg/xml/sax/Attributes;)V
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
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->parseKeyword(ILorg/xml/sax/Attributes;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_10} :catch_b

    goto :goto_6

    .line 76
    nop

    :sswitch_data_12
    .sparse-switch
        0x25 -> :sswitch_d
        0x34 -> :sswitch_7
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
    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 21
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
    .line 25
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 26
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
    .line 31
    const/16 v0, 0x66

    .line 33
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 34
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COMMENT-HANDLER << endElement localName ["

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

    .line 37
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 38
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 40
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 43
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 47
    :cond_47
    return-void
.end method

.method public parseKeyword(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 165
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseNote(): mParsedData SHOULD NOTE BE NULL!!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    :cond_c
    const/4 v6, 0x0

    .line 168
    .local v6, keyword:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    const/4 v4, 0x0

    .line 169
    .local v4, firstNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    const/4 v7, 0x0

    .line 171
    .local v7, lastNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 172
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .end local v6           #keyword:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v6, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 181
    .restart local v6       #keyword:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    :goto_1e
    if-nez v4, :cond_21

    .line 182
    move-object v4, v6

    .line 185
    :cond_21
    iput-object v6, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .line 187
    if-eqz p2, :cond_5f

    .line 188
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 189
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_5f

    .line 190
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 194
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_6a

    .line 189
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 174
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .end local v6           #keyword:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    invoke-direct {v6}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;-><init>()V

    .line 175
    .restart local v6       #keyword:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    move-object v8, v9

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    .line 177
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    move-object v4, v8

    .line 178
    iget-object v7, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    goto :goto_1e

    .line 196
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 199
    :sswitch_51
    iput-object v3, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mValue:Ljava/lang/String;

    goto :goto_3b

    .line 202
    :sswitch_54
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mCreatedTime:Ljava/lang/Long;

    goto :goto_3b

    .line 210
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_5f
    if-nez v7, :cond_67

    .line 211
    iput-object v6, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 216
    :goto_63
    invoke-virtual {p0, v6}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 217
    return-void

    .line 213
    :cond_67
    iput-object v6, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataKeyword;

    goto :goto_63

    .line 194
    :sswitch_data_6a
    .sparse-switch
        0x21 -> :sswitch_54
        0x51 -> :sswitch_4e
        0xb4 -> :sswitch_51
    .end sparse-switch
.end method

.method public parseObject(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 101
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseNote(): mParsedData SHOULD NOTE BE NULL!!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 103
    :cond_c
    const/4 v7, 0x0

    .line 104
    .local v7, object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    const/4 v4, 0x0

    .line 105
    .local v4, firstNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    const/4 v6, 0x0

    .line 107
    .local v6, lastNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 108
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .end local v7           #object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v7, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 117
    .restart local v7       #object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    :goto_1e
    if-nez v4, :cond_21

    .line 118
    move-object v4, v7

    .line 121
    :cond_21
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .line 123
    if-eqz p2, :cond_5f

    .line 124
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 125
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_5f

    .line 126
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_6a

    .line 125
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
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .end local v7           #object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;-><init>()V

    .line 111
    .restart local v7       #object:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    move-object v8, v9

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    .line 113
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    move-object v4, v8

    .line 114
    iget-object v6, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    goto :goto_1e

    .line 132
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 135
    :sswitch_51
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mType:Ljava/lang/String;

    goto :goto_3b

    .line 138
    :sswitch_54
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mCreateTime:Ljava/lang/Long;

    goto :goto_3b

    .line 146
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_5f
    if-nez v6, :cond_67

    .line 147
    iput-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 152
    :goto_63
    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 153
    return-void

    .line 149
    :cond_67
    iput-object v7, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataObject;

    goto :goto_63

    .line 130
    :sswitch_data_6a
    .sparse-switch
        0x20 -> :sswitch_54
        0x51 -> :sswitch_4e
        0xaf -> :sswitch_51
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
    .line 51
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 52
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

    const-string v3, "COMMENT-HANDLER >> StartElement localName ["

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
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 67
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 68
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->pushParsedTag(I)V

    .line 69
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserSearchingContentHandler;->invokeParseTagMethodSearching(ILorg/xml/sax/Attributes;)V

    .line 71
    :cond_3c
    return-void
.end method
