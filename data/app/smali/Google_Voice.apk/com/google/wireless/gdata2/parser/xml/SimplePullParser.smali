.class public Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;
.super Ljava/lang/Object;
.source "SimplePullParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
    }
.end annotation


# static fields
.field public static final TEXT_TAG:Ljava/lang/String; = "![CDATA["


# instance fields
.field private mCurrentStartTag:Ljava/lang/String;

.field private mLogTag:Ljava/lang/String;

.field private final mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private source:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "stream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 56
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 57
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    iput-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_18

    .line 65
    return-void

    .line 62
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_18
    move-exception v0

    .line 63
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 91
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 92
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 93
    invoke-static {v1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    iput-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 95
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_18

    .line 100
    return-void

    .line 97
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_18
    move-exception v0

    .line 98
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v2, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;-><init>(Ljava/io/Reader;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .parameter "parser"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 73
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    .line 75
    return-void
.end method

.method private static moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 106
    .local v0, eventType:I
    if-eqz v0, :cond_e

    .line 107
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Not at start of response"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_e
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    if-eqz v0, :cond_9

    .line 353
    :try_start_4
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 358
    :cond_9
    :goto_9
    return-void

    .line 354
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter "i"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    return v0
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 322
    :catch_9
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_9

    .line 303
    .end local p3
    :goto_8
    return p3

    .restart local p3
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result p3

    goto :goto_8

    .line 304
    :catch_e
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as an integer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, value:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v2

    return-wide v2

    .line 373
    :catch_9
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 10
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_9

    .line 340
    .end local p3
    :goto_8
    return-wide p3

    .restart local p3
    :cond_9
    :try_start_9
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide p3

    goto :goto_8

    .line 341
    :catch_e
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' as a long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_33

    .line 282
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' attribute on \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_33
    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "namespace"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 268
    .end local p3
    :goto_8
    return-object p3

    .restart local p3
    :cond_9
    move-object p3, v0

    goto :goto_8
.end method

.method public nextTag(I)Ljava/lang/String;
    .registers 3
    .parameter "parentDepth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->nextTagOrText(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextTagOrText(ILjava/lang/StringBuilder;)Ljava/lang/String;
    .registers 13
    .parameter "parentDepth"
    .parameter "textBuilder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    .line 139
    :cond_2
    const/4 v3, 0x0

    .line 141
    .local v3, eventType:I
    :try_start_3
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_8} :catch_3c

    move-result v3

    .line 145
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 146
    .local v1, depth:I
    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 148
    const/4 v8, 0x2

    if-ne v3, v8, :cond_94

    add-int/lit8 v8, p1, 0x1

    if-ne v1, v8, :cond_94

    .line 149
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 150
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v7, :cond_8d

    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_32
    if-ge v4, v1, :cond_43

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 142
    .end local v1           #depth:I
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :catch_3c
    move-exception v2

    .line 143
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v7, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v7, v2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 153
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #depth:I
    .restart local v4       #i:I
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_43
    const-string v7, "<"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 155
    .local v0, count:I
    const/4 v4, 0x0

    :goto_59
    if-ge v4, v0, :cond_7f

    .line 156
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v7, "=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 162
    :cond_7f
    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_8d
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_93
    :goto_93
    return-object v7

    .line 168
    :cond_94
    if-ne v3, v9, :cond_c3

    if-ne v1, p1, :cond_c3

    .line 169
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v8, :cond_93

    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_aa
    if-ge v4, v1, :cond_b4

    const-string v8, "  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    .line 172
    :cond_b4
    const-string v8, "</>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 178
    .end local v4           #i:I
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_c3
    const/4 v8, 0x1

    if-ne v3, v8, :cond_d4

    if-nez p1, :cond_d4

    .line 181
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    if-eqz v8, :cond_93

    .line 182
    iget-object v8, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    .line 183
    iput-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    goto :goto_93

    .line 188
    :cond_d4
    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    if-ne v1, p1, :cond_2

    .line 189
    if-eqz p2, :cond_2

    .line 192
    iget-object v7, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v7, "![CDATA["

    goto :goto_93
.end method

.method public numAttributes()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public readRemainingText(ILjava/lang/StringBuilder;)V
    .registers 4
    .parameter "parentDepth"
    .parameter "textBuilder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 225
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->nextTagOrText(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .registers 2
    .parameter "logTag"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 119
    return-void
.end method