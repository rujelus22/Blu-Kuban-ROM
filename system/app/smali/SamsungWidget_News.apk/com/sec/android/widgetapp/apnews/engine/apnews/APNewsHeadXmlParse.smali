.class public Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;
.super Ljava/lang/Object;
.source "APNewsHeadXmlParse.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private checkBody:Z

.field private data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

.field private mNewsHeadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->checkBody:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
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
    .line 36
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    return-void
.end method

.method public getAPNewsHeadLineData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public initAPNewsHeadLineData()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 61
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v2, "body"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->checkBody:Z

    .line 117
    :cond_b
    return-void

    .line 78
    :cond_c
    const-string v2, "outline"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->checkBody:Z

    if-eqz v2, :cond_b

    .line 79
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 82
    const-string v2, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 83
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->name:Ljava/lang/String;

    .line 87
    :cond_3a
    const-string v2, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 88
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, temp_str:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->id:I

    .line 93
    .end local v1           #temp_str:Ljava/lang/String;
    :cond_56
    const-string v2, "adCategoryId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 94
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .restart local v1       #temp_str:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->adCategoryId:I

    .line 99
    .end local v1           #temp_str:Ljava/lang/String;
    :cond_72
    const-string v2, "xmlUrl"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 100
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    .line 104
    :cond_86
    const-string v2, "partnerModuleId"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 105
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1       #temp_str:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->partnerModuleId:I

    .line 110
    .end local v1           #temp_str:Ljava/lang/String;
    :cond_a2
    const-string v2, "headline"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 111
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->headline:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->mNewsHeadList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsHeadXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_20
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    return-void
.end method
