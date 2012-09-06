.class public final Lcom/acquariusoft/UpdateMe/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/a/a;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/a/a;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/a/d;->a:Lcom/acquariusoft/UpdateMe/b/a/a;

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 4

    const-string v0, "DomParsing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .registers 4

    const-string v0, "DomParsing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Lcom/acquariusoft/UpdateMe/b/a/a;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/a/d;->a:Lcom/acquariusoft/UpdateMe/b/a/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 16

    const/4 v3, 0x0

    const/4 v13, 0x1

    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v13, :cond_1e

    const-string v2, "User-Agent"

    sget-object v4, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v4, v4, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Root element :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/a/d;->b(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/a/d;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v5, v3

    :goto_52
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v5, v1, :cond_59

    :goto_58
    return-void

    :cond_59
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v13, :cond_8f

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/a/b;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/a/b;-><init>()V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/a/d;->a:Lcom/acquariusoft/UpdateMe/b/a/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a/a;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v3

    :goto_84
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v4, v1, :cond_93

    :cond_8a
    const-string v1, ""

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->b(Ljava/lang/String;)V

    :cond_8f
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_52

    :cond_93
    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v13, :cond_d4

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v10, "DeviceName"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    iput-object v1, v8, Lcom/acquariusoft/UpdateMe/b/a/b;->a:Ljava/lang/String;

    :cond_b7
    const-string v1, "Rom"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v9, Lcom/acquariusoft/UpdateMe/b/a/c;

    invoke-direct {v9}, Lcom/acquariusoft/UpdateMe/b/a/c;-><init>()V

    iget-object v1, v8, Lcom/acquariusoft/UpdateMe/b/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    :goto_ce
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v1, v10, :cond_d8

    :cond_d4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_84

    :cond_d8
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-ne v11, v13, :cond_102

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
    :try_end_e5
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_e5} :catch_105
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e5} :catch_10f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_e5} :catch_119
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_e5} :catch_123

    move-result-object v11

    :try_start_e6
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v12, "RomName"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f8

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/a/c;->a:Ljava/lang/String;

    :cond_f8
    const-string v12, "RomUrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_102

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/a/c;->b:Ljava/lang/String;
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_102} :catch_12d
    .catch Lorg/xml/sax/SAXException; {:try_start_e6 .. :try_end_102} :catch_105
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_102} :catch_10f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e6 .. :try_end_102} :catch_119
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_e6 .. :try_end_102} :catch_123

    :cond_102
    :goto_102
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :catch_105
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_10f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_119
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_123
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/a/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_12d
    move-exception v10

    goto :goto_102
.end method
