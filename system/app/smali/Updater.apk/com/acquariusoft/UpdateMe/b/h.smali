.class public final Lcom/acquariusoft/UpdateMe/b/h;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/b/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/g;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/g;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

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
.method public final a()Lcom/acquariusoft/UpdateMe/b/g;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Root element :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/acquariusoft/UpdateMe/b/h;->b(Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3}, Lcom/acquariusoft/UpdateMe/b/h;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    :goto_43
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_d

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v1, :cond_f1

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_55
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_55} :catch_fa
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_55} :catch_104
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_55} :catch_10e
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_e .. :try_end_55} :catch_118
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_55} :catch_122

    :try_start_55
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v0, "RomName"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iput-object v6, v0, Lcom/acquariusoft/UpdateMe/b/g;->a:Ljava/lang/String;

    :cond_6d
    const-string v0, "RomVersion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iput-object v6, v0, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    :cond_79
    const-string v0, "RomCheckUrl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iput-object v6, v0, Lcom/acquariusoft/UpdateMe/b/g;->c:Ljava/lang/String;

    :cond_85
    const-string v0, "RomElemUrl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/b/g;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_94
    const-string v0, "UserAgent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iput-object v6, v0, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    :cond_a0
    const-string v0, "RebootType"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    :cond_b0
    const-string v0, "FilterName"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    iput-object v6, v0, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    :cond_bc
    const-string v0, "DownloadDir"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    sput-object v6, Lcom/acquariusoft/UpdateMe/ao;->a:Ljava/lang/String;

    :cond_c6
    const-string v0, "DisableInstalledApps"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v7, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_f6

    move v0, v1

    :goto_d7
    iput-boolean v0, v7, Lcom/acquariusoft/UpdateMe/b/g;->h:Z

    :cond_d9
    const-string v0, "DisableScripts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    iget-object v5, p0, Lcom/acquariusoft/UpdateMe/b/h;->a:Lcom/acquariusoft/UpdateMe/b/g;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_f8

    move v0, v1

    :goto_ea
    iput-boolean v0, v5, Lcom/acquariusoft/UpdateMe/b/g;->i:Z

    :cond_ec
    const-string v0, ""

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->b(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_f1} :catch_12c
    .catch Lorg/xml/sax/SAXException; {:try_start_55 .. :try_end_f1} :catch_fa
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_f1} :catch_104
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_55 .. :try_end_f1} :catch_10e
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_55 .. :try_end_f1} :catch_118

    :cond_f1
    :goto_f1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_43

    :cond_f6
    move v0, v2

    goto :goto_d7

    :cond_f8
    move v0, v2

    goto :goto_ea

    :catch_fa
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_104
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_10e
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_118
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_122
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/h;->c(Ljava/lang/String;)V

    goto/16 :goto_d

    :catch_12c
    move-exception v0

    goto :goto_f1
.end method
