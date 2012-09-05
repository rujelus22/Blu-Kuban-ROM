.class public final Lcom/cooliris/picasa/GDataParser;
.super Ljava/lang/Object;
.source "GDataParser.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/GDataParser$EntryHandler;
    }
.end annotation


# instance fields
.field private mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

.field private mEntry:Lcom/cooliris/picasa/Entry;

.field private mHandler:Lcom/cooliris/picasa/GDataParser$EntryHandler;

.field private mLevel:I

.field private mName:[Ljava/lang/String;

.field private mState:I

.field private mUri:[Ljava/lang/String;

.field private final mValue:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x5

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/cooliris/picasa/GDataParser;->mEntry:Lcom/cooliris/picasa/Entry;

    .line 54
    iput-object v3, p0, Lcom/cooliris/picasa/GDataParser;->mHandler:Lcom/cooliris/picasa/GDataParser$EntryHandler;

    .line 56
    iput v2, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    .line 58
    iput v2, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    .line 60
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/picasa/GDataParser;->mUri:[Ljava/lang/String;

    .line 62
    new-array v2, v4, [Ljava/lang/String;

    iput-object v2, p0, Lcom/cooliris/picasa/GDataParser;->mName:[Ljava/lang/String;

    .line 64
    new-array v2, v4, [Lorg/xml/sax/helpers/AttributesImpl;

    iput-object v2, p0, Lcom/cooliris/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/cooliris/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, Lcom/cooliris/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    .line 74
    .local v0, attributes:[Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-eq v1, v4, :cond_32

    .line 75
    new-instance v2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    aput-object v2, v0, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 77
    :cond_32
    return-void
.end method

.method private endProperty()V
    .registers 7

    .prologue
    .line 155
    iget v0, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    .line 156
    .local v0, level:I
    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mEntry:Lcom/cooliris/picasa/Entry;

    iget-object v2, p0, Lcom/cooliris/picasa/GDataParser;->mUri:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/cooliris/picasa/GDataParser;->mName:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/cooliris/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/cooliris/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cooliris/picasa/Entry;->setPropertyFromXml(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 157
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    .line 158
    return-void
.end method

.method public static parseAtomTimestamp(Ljava/lang/String;)J
    .registers 4
    .parameter "timestamp"

    .prologue
    .line 88
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 89
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method private startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "attrs"

    .prologue
    .line 145
    iget v1, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    add-int/lit8 v0, v1, 0x1

    .line 146
    .local v0, level:I
    iput v0, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    .line 147
    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mUri:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 149
    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mName:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 150
    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mAttributes:[Lorg/xml/sax/helpers/AttributesImpl;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    .line 151
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
    .line 161
    iget-object v0, p0, Lcom/cooliris/picasa/GDataParser;->mValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 162
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
    .line 186
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 122
    iget v0, p0, Lcom/cooliris/picasa/GDataParser;->mLevel:I

    if-lez v0, :cond_8

    .line 124
    invoke-direct {p0}, Lcom/cooliris/picasa/GDataParser;->endProperty()V

    .line 141
    :goto_7
    return-void

    .line 127
    :cond_8
    iget v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    packed-switch v0, :pswitch_data_24

    goto :goto_7

    .line 129
    :pswitch_e
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0}, Lorg/xml/sax/SAXException;-><init>()V

    throw v0

    .line 131
    :pswitch_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    goto :goto_7

    .line 134
    :pswitch_18
    const/4 v0, 0x1

    iput v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    .line 135
    iget-object v0, p0, Lcom/cooliris/picasa/GDataParser;->mHandler:Lcom/cooliris/picasa/GDataParser$EntryHandler;

    iget-object v1, p0, Lcom/cooliris/picasa/GDataParser;->mEntry:Lcom/cooliris/picasa/Entry;

    invoke-interface {v0, v1}, Lcom/cooliris/picasa/GDataParser$EntryHandler;->handleEntry(Lcom/cooliris/picasa/Entry;)V

    goto :goto_7

    .line 127
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_e
        :pswitch_14
        :pswitch_18
    .end packed-switch
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
    .line 194
    return-void
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
    .line 166
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
    .line 170
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 174
    return-void
.end method

.method public setEntry(Lcom/cooliris/picasa/Entry;)V
    .registers 2
    .parameter "entry"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cooliris/picasa/GDataParser;->mEntry:Lcom/cooliris/picasa/Entry;

    .line 81
    return-void
.end method

.method public setHandler(Lcom/cooliris/picasa/GDataParser$EntryHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cooliris/picasa/GDataParser;->mHandler:Lcom/cooliris/picasa/GDataParser$EntryHandler;

    .line 85
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
    .line 178
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
    .line 182
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    packed-switch v0, :pswitch_data_42

    .line 119
    :goto_5
    return-void

    .line 98
    :pswitch_6
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "feed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    goto :goto_5

    .line 101
    :cond_1a
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0}, Lorg/xml/sax/SAXException;-><init>()V

    throw v0

    .line 106
    :pswitch_20
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/cooliris/picasa/GDataParser;->mState:I

    .line 108
    iget-object v0, p0, Lcom/cooliris/picasa/GDataParser;->mEntry:Lcom/cooliris/picasa/Entry;

    invoke-virtual {v0}, Lcom/cooliris/picasa/Entry;->clear()V

    goto :goto_5

    .line 110
    :cond_39
    invoke-direct {p0, p1, p2, p4}, Lcom/cooliris/picasa/GDataParser;->startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_5

    .line 114
    :pswitch_3d
    invoke-direct {p0, p1, p2, p4}, Lcom/cooliris/picasa/GDataParser;->startProperty(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_5

    .line 95
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6
        :pswitch_20
        :pswitch_3d
    .end packed-switch
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
    .line 190
    return-void
.end method
