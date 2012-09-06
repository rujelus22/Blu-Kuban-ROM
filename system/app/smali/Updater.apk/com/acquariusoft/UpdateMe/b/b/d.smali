.class public final Lcom/acquariusoft/UpdateMe/b/b/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/b/d;->a:Ljava/util/List;

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
.method public final a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/b/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v10, 0x1

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

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

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/b/d;->b(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/b/d;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v4, v3

    :goto_3b
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v4, v1, :cond_42

    :goto_41
    return-void

    :cond_42
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v10, :cond_76

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v7, Lcom/acquariusoft/UpdateMe/b/b/b;

    invoke-direct {v7}, Lcom/acquariusoft/UpdateMe/b/b/b;-><init>()V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b/d;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    :goto_6b
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v2, v1, :cond_7a

    :cond_71
    const-string v1, ""

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->b(Ljava/lang/String;)V

    :cond_76
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3b

    :cond_7a
    invoke-interface {v6, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v10, :cond_de

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v9, "username"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->a:Ljava/lang/String;

    :cond_9c
    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->b:Ljava/lang/String;

    :cond_a6
    const-string v9, "description"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->c:Ljava/lang/String;

    :cond_b0
    const-string v9, "brand"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ba

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->d:Ljava/lang/String;

    :cond_ba
    const-string v9, "model"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c4

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->e:Ljava/lang/String;

    :cond_c4
    const-string v9, "isRoot"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    const-string v9, "true"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->f:Z

    :cond_d4
    const-string v9, "scriptCode"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_de

    iput-object v1, v7, Lcom/acquariusoft/UpdateMe/b/b/b;->g:Ljava/lang/String;
    :try_end_de
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_de} :catch_e2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_de} :catch_ec
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_de} :catch_f6
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_de} :catch_100

    :cond_de
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6b

    :catch_e2
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_41

    :catch_ec
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_41

    :catch_f6
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_41

    :catch_100
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_41
.end method
