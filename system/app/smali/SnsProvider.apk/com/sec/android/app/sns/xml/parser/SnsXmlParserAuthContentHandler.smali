.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserAuthContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodAuth(ILorg/xml/sax/Attributes;)V
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
    sparse-switch p1, :sswitch_data_1a

    .line 88
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 94
    :goto_6
    return-void

    .line 76
    :sswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->parseOAuth(ILorg/xml/sax/Attributes;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_6

    .line 91
    :catch_b
    move-exception v0

    .line 92
    .local v0, e:Lorg/xml/sax/SAXException;
    throw v0

    .line 79
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :sswitch_d
    :try_start_d
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->parsePersistKey(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 82
    :sswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->parseServer(ILorg/xml/sax/Attributes;)V

    goto :goto_6

    .line 85
    :sswitch_15
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->parseSessionKey(ILorg/xml/sax/Attributes;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_18} :catch_b

    goto :goto_6

    .line 74
    nop

    :sswitch_data_1a
    .sparse-switch
        0x33 -> :sswitch_7
        0x39 -> :sswitch_d
        0x55 -> :sswitch_11
        0x56 -> :sswitch_15
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
    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->parseCDATA(Ljava/lang/String;I)V

    .line 20
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
    .line 24
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->endDocument()V

    .line 25
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
    .line 30
    const/16 v0, 0x66

    .line 32
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 33
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH-HANDLER << endElement localName ["

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

    .line 36
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 37
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 39
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 42
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 46
    :cond_47
    return-void
.end method

.method public parseOAuth(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 105
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseOAuth() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    :cond_c
    const/4 v5, 0x0

    .line 108
    .local v5, bReplaceParsedData:Z
    const/4 v4, 0x0

    .line 110
    .local v4, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_39

    .line 111
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 112
    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    const/4 v5, 0x1

    .line 119
    :goto_1e
    if-eqz p2, :cond_50

    .line 120
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 122
    .local v0, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v0, :cond_50

    .line 123
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_58

    .line 122
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 113
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_39
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    goto :goto_1e

    .line 116
    :cond_45
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseOAuth(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :pswitch_4d
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mOAuthURL:Ljava/lang/String;

    goto :goto_36

    .line 137
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_50
    if-eqz v5, :cond_54

    .line 138
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 140
    :cond_54
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 141
    return-void

    .line 127
    :pswitch_data_58
    .packed-switch 0xb0
        :pswitch_4d
    .end packed-switch
.end method

.method public parsePersistKey(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 152
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parsePersistKey() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 154
    :cond_c
    const/4 v5, 0x0

    .line 155
    .local v5, bReplaceParsedData:Z
    const/4 v4, 0x0

    .line 157
    .local v4, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_39

    .line 158
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 159
    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    const/4 v5, 0x1

    .line 166
    :goto_1e
    if-eqz p2, :cond_66

    .line 167
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 168
    .local v0, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v0, :cond_66

    .line 169
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_6e

    .line 168
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 160
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_39
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    .line 161
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    goto :goto_1e

    .line 163
    :cond_45
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parsePersistKey(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 175
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :sswitch_4d
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKey:Ljava/lang/String;

    goto :goto_36

    .line 178
    :sswitch_50
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKeyExpire:Ljava/lang/Integer;

    goto :goto_36

    .line 181
    :sswitch_5b
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mbPersistyKeyLogined:Ljava/lang/Boolean;

    goto :goto_36

    .line 189
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_66
    if-eqz v5, :cond_6a

    .line 190
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 192
    :cond_6a
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 193
    return-void

    .line 173
    :sswitch_data_6e
    .sparse-switch
        0x39 -> :sswitch_50
        0x61 -> :sswitch_5b
        0xb4 -> :sswitch_4d
    .end sparse-switch
.end method

.method public parseServer(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 204
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseServer() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 206
    :cond_c
    const/4 v5, 0x0

    .line 207
    .local v5, bReplaceParsedData:Z
    const/4 v4, 0x0

    .line 209
    .local v4, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_39

    .line 210
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 211
    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    const/4 v5, 0x1

    .line 218
    :goto_1e
    if-eqz p2, :cond_50

    .line 219
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 220
    .local v0, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v0, :cond_50

    .line 221
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 225
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_58

    .line 220
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 212
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_39
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    goto :goto_1e

    .line 215
    :cond_45
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseServer(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 227
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :pswitch_4d
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    goto :goto_36

    .line 235
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_50
    if-eqz v5, :cond_54

    .line 236
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 238
    :cond_54
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 239
    return-void

    .line 225
    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_4d
    .end packed-switch
.end method

.method public parseSessionKey(ILorg/xml/sax/Attributes;)V
    .registers 12
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v7, :cond_c

    .line 250
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseSessionKey() : mParsedData SHOULD NOT BE NULL !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    :cond_c
    const/4 v5, 0x0

    .line 253
    .local v5, bReplaceParsedData:Z
    const/4 v4, 0x0

    .line 255
    .local v4, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v8, 0x15

    if-ne v7, v8, :cond_39

    .line 256
    new-instance v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v4, v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 257
    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    const/4 v5, 0x1

    .line 264
    :goto_1e
    if-eqz p2, :cond_50

    .line 265
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 266
    .local v0, attrCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_25
    if-ge v6, v0, :cond_50

    .line 267
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, attrType:I
    packed-switch v2, :pswitch_data_58

    .line 266
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 258
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_39
    iget-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_45

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .end local v4           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .restart local v4       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    goto :goto_1e

    .line 261
    :cond_45
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "parseSessionKey(): UnExpected mParsedData.mDataType !!!"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    .restart local v0       #attrCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v6       #i:I
    :pswitch_4d
    iput-object v3, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mLougoutSessionKey:Ljava/lang/String;

    goto :goto_36

    .line 281
    .end local v0           #attrCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v6           #i:I
    :cond_50
    if-eqz v5, :cond_54

    .line 282
    iput-object v4, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 284
    :cond_54
    invoke-virtual {p0, v4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 285
    return-void

    .line 271
    :pswitch_data_58
    .packed-switch 0xb4
        :pswitch_4d
    .end packed-switch
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->startDocument()V

    .line 51
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
    .line 57
    const/16 v0, 0x66

    .line 59
    .local v0, tagType:I
    iget-boolean v1, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mbIsLoggable:Z

    if-eqz v1, :cond_24

    .line 60
    const-string v1, "SNS_PARSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH-HANDLER >> StartElement localName ["

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

    .line 63
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 64
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 67
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->pushParsedTag(I)V

    .line 68
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserAuthContentHandler;->invokeParseTagMethodAuth(ILorg/xml/sax/Attributes;)V

    .line 70
    :cond_3c
    return-void
.end method
