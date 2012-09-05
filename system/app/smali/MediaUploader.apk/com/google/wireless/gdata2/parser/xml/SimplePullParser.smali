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
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 56
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 57
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    invoke-static {v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 59
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_18

    .line 65
    return-void

    .line 62
    :catch_18
    move-exception v0

    .line 63
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 91
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 92
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 93
    invoke-static {v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->moveToStartDocument(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 94
    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_17} :catch_18

    .line 100
    return-void

    .line 97
    :catch_18
    move-exception v0

    .line 98
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter
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
    .parameter

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
    .registers 3
    .parameter
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
    if-eqz v0, :cond_e

    .line 107
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not at start of response"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .parameter

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
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    return v0

    .line 322
    :catch_9
    move-exception v1

    .line 323
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' as an integer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntAttribute(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    if-nez v0, :cond_a

    move v0, p3

    .line 303
    :goto_9
    return v0

    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result v0

    goto :goto_9

    .line 304
    :catch_f
    move-exception v1

    .line 305
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' as an integer"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v0

    return-wide v0

    .line 373
    :catch_9
    move-exception v1

    .line 374
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' as a long"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLongAttribute(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-nez v0, :cond_a

    move-wide v0, p3

    .line 340
    :goto_9
    return-wide v0

    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_d} :catch_f

    move-result-wide v0

    goto :goto_9

    .line 341
    :catch_f
    move-exception v1

    .line 342
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' as a long"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    if-nez v0, :cond_33

    .line 282
    new-instance v0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' attribute on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_33
    return-object v0
.end method

.method public getStringAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    if-nez v0, :cond_9

    move-object v0, p3

    .line 268
    :cond_9
    return-object v0
.end method

.method public nextTag(I)Ljava/lang/String;
    .registers 3
    .parameter
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
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 141
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_8} :catch_3c

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 146
    iput-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 148
    const/4 v2, 0x2

    if-ne v0, v2, :cond_94

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_94

    .line 149
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mCurrentStartTag:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    .line 152
    :goto_32
    if-ge v2, v1, :cond_43

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 142
    :catch_3c
    move-exception v0

    .line 143
    new-instance v1, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;

    invoke-direct {v1, v0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 153
    :cond_43
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    move v2, v5

    .line 155
    :goto_59
    if-ge v2, v1, :cond_7f

    .line 156
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v3, "=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v3, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 162
    :cond_7f
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_8d
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_93
    return-object v0

    .line 168
    :cond_94
    if-ne v0, v3, :cond_c4

    if-ne v1, p1, :cond_c4

    .line 169
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    .line 171
    :goto_aa
    if-ge v2, v1, :cond_b4

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 172
    :cond_b4
    const-string v1, "</>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    move-object v0, v4

    .line 175
    goto :goto_93

    .line 178
    :cond_c4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_d6

    if-nez p1, :cond_d6

    .line 181
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    if-eqz v0, :cond_d4

    .line 182
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 183
    iput-object v4, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->source:Ljava/io/Closeable;

    :cond_d4
    move-object v0, v4

    .line 185
    goto :goto_93

    .line 188
    :cond_d6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    if-ne v1, p1, :cond_3

    .line 189
    if-eqz p2, :cond_3

    .line 192
    iget-object v0, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, "![CDATA["

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
    .parameter
    .parameter
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
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->mLogTag:Ljava/lang/String;

    .line 119
    return-void
.end method
