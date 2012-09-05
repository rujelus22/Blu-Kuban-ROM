.class public Lcom/sprint/smps/service/handlers/FaqParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FaqParserHandler.java"


# static fields
.field private static final Answer:Ljava/lang/String; = "Answer"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FrequentlyAskedQuestion:Ljava/lang/String; = "FrequentlyAskedQuestion"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static final Question:Ljava/lang/String; = "Question"

.field private static final TAG:Ljava/lang/String; = null

.field private static final category:Ljava/lang/String; = "category"

.field private static handler:Lcom/sprint/smps/service/handlers/FaqParserHandler;

.field public static qaList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static spf:Ljavax/xml/parsers/SAXParserFactory;


# instance fields
.field private catQa:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sprint/smps/pojo/QuestionAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private elementValue:Ljava/lang/String;

.field private prevCategory:Ljava/lang/String;

.field private qa:Lcom/sprint/smps/pojo/QuestionAnswer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->handler:Lcom/sprint/smps/service/handlers/FaqParserHandler;

    .line 30
    sput-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 31
    const-class v0, Lcom/sprint/smps/service/handlers/FaqParserHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->TAG:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qaList:Ljava/util/LinkedHashMap;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 36
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    .line 37
    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static parseXML(Ljava/io/InputStream;)V
    .registers 4
    .parameter "xmlInputSource"

    .prologue
    .line 49
    sget-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->handler:Lcom/sprint/smps/service/handlers/FaqParserHandler;

    if-nez v1, :cond_b

    .line 50
    new-instance v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;

    invoke-direct {v1}, Lcom/sprint/smps/service/handlers/FaqParserHandler;-><init>()V

    sput-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->handler:Lcom/sprint/smps/service/handlers/FaqParserHandler;

    .line 53
    :cond_b
    sget-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_15

    .line 54
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    sput-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    .line 58
    :cond_15
    :try_start_15
    sget-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 59
    sget-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->spf:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 62
    .local v0, sp:Ljavax/xml/parsers/SAXParser;
    sget-object v1, Lcom/sprint/smps/service/handlers/FaqParserHandler;->handler:Lcom/sprint/smps/service/handlers/FaqParserHandler;

    invoke-virtual {v0, p0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_26} :catch_2b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_26} :catch_29
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_27

    .line 72
    .end local v0           #sp:Ljavax/xml/parsers/SAXParser;
    :goto_26
    return-void

    .line 68
    :catch_27
    move-exception v1

    goto :goto_26

    .line 66
    :catch_29
    move-exception v1

    goto :goto_26

    .line 64
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
    .line 130
    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 131
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    .line 141
    :goto_f
    return-void

    .line 134
    :cond_10
    const-string v0, ""

    .line 135
    .local v0, newLine:Ljava/lang/String;
    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 136
    const-string v0, "\n"

    .line 138
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    goto :goto_f
.end method

.method public endDocument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    if-eqz v0, :cond_12

    .line 121
    sget-object v0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qaList:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_12
    iput-object v3, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    .line 124
    iput-object v3, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    .line 125
    iput-object v3, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 126
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
    .line 100
    const-string v0, "FrequentlyAskedQuestion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 101
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 112
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    .line 113
    return-void

    .line 103
    :cond_13
    const-string v0, "Question"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 104
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->question:Ljava/lang/String;

    goto :goto_f

    .line 107
    :cond_22
    const-string v0, "Answer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->elementValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->answer:Ljava/lang/String;

    goto :goto_f
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qaList:Ljava/util/LinkedHashMap;

    .line 77
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
    .line 81
    const-string v0, "FrequentlyAskedQuestion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 82
    new-instance v0, Lcom/sprint/smps/pojo/QuestionAnswer;

    invoke-direct {v0}, Lcom/sprint/smps/pojo/QuestionAnswer;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 96
    :cond_f
    :goto_f
    return-void

    .line 84
    :cond_10
    const-string v0, "Question"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    const-string v1, "category"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->category:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v0, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->category:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v0, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 89
    :cond_38
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 90
    sget-object v0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qaList:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_45
    iget-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->qa:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v0, v0, Lcom/sprint/smps/pojo/QuestionAnswer;->category:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->prevCategory:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/service/handlers/FaqParserHandler;->catQa:Ljava/util/Vector;

    goto :goto_f
.end method
