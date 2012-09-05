.class final Lcom/coremobility/integration/i/m;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/i/f;

.field private b:Lcom/coremobility/integration/i/n;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/integration/i/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/integration/i/m;-><init>(Lcom/coremobility/integration/i/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/integration/i/f;B)V
    .registers 5

    iput-object p1, p0, Lcom/coremobility/integration/i/m;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coremobility/integration/i/n;

    iget-object v1, p0, Lcom/coremobility/integration/i/m;->a:Lcom/coremobility/integration/i/f;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/i/n;-><init>(Lcom/coremobility/integration/i/f;)V

    iput-object v0, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    return-void
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/i/l;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    invoke-virtual {v0}, Lcom/coremobility/integration/i/n;->a()Lcom/coremobility/integration/i/l;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-nez v0, :cond_13

    :cond_b
    const-string v0, "Parse String is null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    return-void

    :cond_13
    :try_start_13
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/i/m;->b:Lcom/coremobility/integration/i/n;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_36

    goto :goto_12

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeXML Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12
.end method
