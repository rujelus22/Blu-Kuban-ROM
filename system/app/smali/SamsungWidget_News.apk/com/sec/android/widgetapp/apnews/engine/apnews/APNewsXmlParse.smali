.class public Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;
.super Ljava/lang/Object;
.source "APNewsXmlParse.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field checkContent:Z

.field checkContentend:Z

.field checkItem:Z

.field checkLink:Z

.field checkTitle:Z

.field checkencoded:Z

.field checkpubDate:Z

.field private data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

.field private mNewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation
.end field

.field textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    .line 19
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 28
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    .line 29
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 30
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    .line 33
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    return-void
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
    .line 41
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    if-eqz v0, :cond_a

    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 59
    :cond_9
    :goto_9
    return-void

    .line 45
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    if-eqz v0, :cond_14

    .line 46
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 48
    :cond_14
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    if-eqz v0, :cond_1e

    .line 49
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 51
    :cond_1e
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    if-nez v0, :cond_2c

    .line 52
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 54
    :cond_2c
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 70
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    if-eqz v3, :cond_37

    .line 71
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    .line 104
    :cond_f
    :goto_f
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 106
    const-string v3, "item"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v3, :cond_aa

    .line 107
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    .line 108
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 109
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 110
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 111
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    .line 112
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    .line 116
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 145
    :cond_36
    :goto_36
    return-void

    .line 74
    :cond_37
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    if-eqz v3, :cond_46

    .line 75
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsLink:Ljava/lang/String;

    goto :goto_f

    .line 78
    :cond_46
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    if-eqz v3, :cond_79

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 84
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 86
    .local v2, pos:Ljava/text/ParsePosition;
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GMT"

    const-string v5, "+0000"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 87
    .local v1, l:Ljava/util/Date;
    if-eqz v1, :cond_f

    .line 88
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    goto :goto_f

    .line 91
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    .end local v1           #l:Ljava/util/Date;
    .end local v2           #pos:Ljava/text/ParsePosition;
    :cond_79
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    if-eqz v3, :cond_81

    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    if-eqz v3, :cond_f

    .line 94
    :cond_81
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    if-eqz v3, :cond_f

    .line 95
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->trimToSize()V

    .line 96
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<p>"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "</p>"

    const-string v6, "\n\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    goto/16 :goto_f

    .line 120
    :cond_aa
    const-string v3, "title"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 121
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 122
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 123
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 124
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    goto/16 :goto_36

    .line 126
    :cond_bc
    const-string v3, "link"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 127
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 128
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 129
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 130
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    goto/16 :goto_36

    .line 132
    :cond_ce
    const-string v3, "content"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 133
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 134
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 135
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 136
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    .line 137
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    goto/16 :goto_36

    .line 139
    :cond_e3
    const-string v3, "encoded"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 140
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    goto/16 :goto_36

    .line 142
    :cond_ef
    const-string v3, "pubDate"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 143
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    goto/16 :goto_36
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
    .line 151
    return-void
.end method

.method public getAPNewsData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

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
    .line 157
    return-void
.end method

.method public initAPNewsData()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    .line 235
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
    .line 163
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 168
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
    .line 173
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
    .line 178
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    const-string v0, "item"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    .line 186
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    .line 187
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    .line 188
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 189
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    .line 190
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    .line 191
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    .line 193
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 194
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->mNewsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    .line 218
    :cond_31
    :goto_31
    return-void

    .line 196
    :cond_32
    const-string v0, "title"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v0, :cond_41

    .line 197
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkTitle:Z

    goto :goto_31

    .line 199
    :cond_41
    const-string v0, "link"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v0, :cond_50

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkLink:Z

    goto :goto_31

    .line 202
    :cond_50
    const-string v0, "content"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v0, :cond_75

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContentend:Z

    if-nez v0, :cond_75

    .line 204
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/engine/Util;->getDeviceDensity()I

    move-result v0

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_31

    .line 205
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkContent:Z

    .line 206
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->data:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    const-string v1, "url"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    goto :goto_31

    .line 211
    :cond_75
    const-string v0, "encoded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v0, :cond_84

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkencoded:Z

    goto :goto_31

    .line 214
    :cond_84
    const-string v0, "pubDate"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkItem:Z

    if-eqz v0, :cond_31

    .line 216
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/engine/apnews/APNewsXmlParse;->checkpubDate:Z

    goto :goto_31
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
    .line 224
    return-void
.end method
