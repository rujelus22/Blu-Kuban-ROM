.class public Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TermsAndConditionsParserHandler.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static final Paragraph:Ljava/lang/String; = "Paragraph"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TermsandConditions:Ljava/lang/String; = "TermsandConditions"

.field private static handler:Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler; = null

.field private static final language:Ljava/lang/String; = "language"

.field private static spf:Ljavax/xml/parsers/SAXParserFactory; = null

.field public static tac:Lcom/sprint/smps/pojo/TermsAndConditions; = null

.field private static final title:Ljava/lang/String; = "title"


# instance fields
.field private elementValue:Ljava/lang/String;

.field private newLine:Ljava/lang/String;

.field private para:Lcom/sprint/smps/pojo/Paragraph;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->handler:Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    .line 29
    sput-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 30
    const-class v0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->TAG:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->newLine:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static parseXML(Ljava/io/InputStream;)V
    .registers 4
    .parameter "xmlInputSource"

    .prologue
    .line 47
    sget-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->handler:Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    if-nez v1, :cond_b

    .line 48
    new-instance v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    invoke-direct {v1}, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;-><init>()V

    sput-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->handler:Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    .line 51
    :cond_b
    sget-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_15

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    sput-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 56
    :cond_15
    :try_start_15
    sget-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 57
    sget-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 60
    .local v0, sp:Ljavax/xml/parsers/SAXParser;
    sget-object v1, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->handler:Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;

    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_26} :catch_2b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_26} :catch_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_27

    .line 69
    .end local v0           #sp:Ljavax/xml/parsers/SAXParser;
    :goto_26
    return-void

    .line 66
    :catch_27
    move-exception v1

    goto :goto_26

    .line 64
    :catch_29
    move-exception v1

    goto :goto_26

    .line 62
    :catch_2b
    move-exception v1

    goto :goto_26
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 111
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    .line 121
    :goto_f
    return-void

    .line 114
    :cond_10
    const-string v0, ""

    .line 118
    .local v0, newLine:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    goto :goto_f
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "TermsandConditions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 92
    const-string v0, "Paragraph"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 93
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/smps/pojo/Paragraph;->paragraph:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/smps/pojo/TermsAndConditions;->paragraphs:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 95
    iput-object v2, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    .line 98
    :cond_22
    iput-object v2, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->elementValue:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/sprint/smps/pojo/TermsAndConditions;

    invoke-direct {v0}, Lcom/sprint/smps/pojo/TermsAndConditions;-><init>()V

    sput-object v0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    .line 74
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
    .line 78
    const-string v0, "TermsandConditions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    sget-object v0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->tac:Lcom/sprint/smps/pojo/TermsAndConditions;

    const-string v1, "language"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/smps/pojo/TermsAndConditions;->language:Ljava/lang/String;

    .line 86
    :cond_12
    :goto_12
    return-void

    .line 81
    :cond_13
    const-string v0, "Paragraph"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 82
    new-instance v0, Lcom/sprint/smps/pojo/Paragraph;

    invoke-direct {v0}, Lcom/sprint/smps/pojo/Paragraph;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    .line 83
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->para:Lcom/sprint/smps/pojo/Paragraph;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->newLine:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "title"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/smps/pojo/Paragraph;->title:Ljava/lang/String;

    .line 84
    const-string v0, "\n"

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/TermsAndConditionsParserHandler;->newLine:Ljava/lang/String;

    goto :goto_12
.end method
