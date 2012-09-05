.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;
.super Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
.source "SnsXmlParserNoteContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;-><init>()V

    return-void
.end method

.method private invokeParseTagMethodNote(ILorg/xml/sax/Attributes;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->invokeParseTagMethod(ILorg/xml/sax/Attributes;)V

    .line 85
    :goto_6
    return-void

    .line 76
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->parseNote(ILorg/xml/sax/Attributes;)V
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
    .packed-switch 0x31
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
    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->parseCDATA(Ljava/lang/String;I)V

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

    .line 36
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 37
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 39
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->popParsedTag()I

    move-result v1

    if-eq v0, v1, :cond_44

    .line 42
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "TAG STACK MIS-MATCH !!!"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->popParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;

    .line 46
    :cond_47
    return-void
.end method

.method public parseNote(ILorg/xml/sax/Attributes;)V
    .registers 14
    .parameter "currentTag"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    if-nez v9, :cond_c

    .line 96
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string v10, "parseNote(): mParsedData SHOULD NOTE BE NULL!!!"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_c
    const/4 v7, 0x0

    .line 99
    .local v7, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    const/4 v4, 0x0

    .line 100
    .local v4, firstNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    const/4 v6, 0x0

    .line 102
    .local v6, lastNote:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    iget v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mDataType:I

    const/16 v10, 0x15

    if-ne v9, v10, :cond_3e

    .line 103
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .end local v7           #note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    invoke-direct {v7, v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;-><init>(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)V

    .line 112
    .restart local v7       #note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    :goto_1e
    if-nez v4, :cond_21

    .line 113
    move-object v4, v7

    .line 116
    :cond_21
    iput-object v7, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 118
    if-eqz p2, :cond_54

    .line 119
    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 120
    .local v0, attCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    if-ge v5, v0, :cond_54

    .line 121
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, attrValue:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->getAttrEnum(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, attrType:I
    sparse-switch v2, :sswitch_data_60

    .line 120
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 105
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3e
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .end local v7           #note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;-><init>()V

    .line 106
    .restart local v7       #note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    iget-object v9, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    check-cast v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    move-object v8, v9

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 108
    .local v8, parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    move-object v4, v8

    .line 109
    iget-object v6, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mLast:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    goto :goto_1e

    .line 127
    .end local v8           #parentNode:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    .restart local v0       #attCount:I
    .restart local v1       #attrName:Ljava/lang/String;
    .restart local v2       #attrType:I
    .restart local v3       #attrValue:Ljava/lang/String;
    .restart local v5       #i:I
    :sswitch_4e
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mResult:Ljava/lang/String;

    goto :goto_3b

    .line 130
    :sswitch_51
    iput-object v3, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mID:Ljava/lang/String;

    goto :goto_3b

    .line 138
    .end local v0           #attCount:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrType:I
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #i:I
    :cond_54
    if-nez v6, :cond_5c

    .line 139
    iput-object v7, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    .line 144
    :goto_58
    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->pushParsedData(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataBase;)V

    .line 145
    return-void

    .line 141
    :cond_5c
    iput-object v7, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    goto :goto_58

    .line 125
    nop

    :sswitch_data_60
    .sparse-switch
        0x51 -> :sswitch_51
        0x94 -> :sswitch_4e
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

    .line 63
    :cond_24
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    .line 64
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->getTagEnum(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->doesTagHaveBindParseFunc(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 67
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->pushParsedTag(I)V

    .line 68
    invoke-direct {p0, v0, p4}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserNoteContentHandler;->invokeParseTagMethodNote(ILorg/xml/sax/Attributes;)V

    .line 70
    :cond_3c
    return-void
.end method
