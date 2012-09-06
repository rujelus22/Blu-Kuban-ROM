.class public Lcom/a/c/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/w3c/dom/Element;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/a/c/f;->a:Lorg/w3c/dom/Element;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_15} :catch_1d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1d
    move-exception v0

    goto :goto_15
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/a/c/f;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v3, "utf-8"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/a/c/f;->a:Lorg/w3c/dom/Element;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/a/c/f;->a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    :goto_21
    return-object v0

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method private static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_1e

    :cond_8
    :goto_8
    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    return-object v0

    :pswitch_d
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :pswitch_18
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method private a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, p3, p4}, Lcom/a/c/f;->a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    const-string v0, ""

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move v1, v2

    :goto_18
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_3a

    :cond_1e
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v2

    :goto_29
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_51

    if-lez v1, :cond_34

    invoke-static {p2, p3, p4}, Lcom/a/c/f;->a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    :cond_34
    const-string v0, ""

    invoke-interface {p2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_3a
    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    const-string v5, ""

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_51
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    packed-switch v5, :pswitch_data_7c

    :goto_5c
    :pswitch_5c
    move v0, v1

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_29

    :pswitch_61
    check-cast v0, Lorg/w3c/dom/Element;

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v0, p2, v5, p4}, Lcom/a/c/f;->a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_5d

    :pswitch_6b
    invoke-static {v0}, Lcom/a/c/f;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v0, v1

    goto :goto_5d

    :pswitch_74
    invoke-static {v0}, Lcom/a/c/f;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_5c

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5c
        :pswitch_6b
        :pswitch_74
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_a

    const-string v0, "\n"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_8
    if-lt v0, p1, :cond_b

    :cond_a
    return-void

    :cond_b
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/c/f;->a:Lorg/w3c/dom/Element;

    invoke-direct {p0}, Lcom/a/c/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
