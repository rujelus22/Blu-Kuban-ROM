.class public final Lcom/acquariusoft/UpdateMe/b/d;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/b/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/c;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/c;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

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
.method public final a()Lcom/acquariusoft/UpdateMe/b/c;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x1

    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    sget-object v1, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1d

    const-string v1, "User-Agent"

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root element :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/d;->b(Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/d;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_52
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_59

    :goto_58
    return-void

    :cond_59
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v6, :cond_114

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_65
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_65} :catch_119
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_65} :catch_123
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_65} :catch_12d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_65} :catch_137

    :try_start_65
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->a:Ljava/lang/String;

    :cond_7d
    const-string v4, "Desc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->b:Ljava/lang/String;

    :cond_89
    const-string v4, "Url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->c:Ljava/lang/String;

    :cond_95
    const-string v4, "ExternalLink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/acquariusoft/UpdateMe/b/c;->d:I

    :cond_a5
    const-string v4, "HomepageUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->e:Ljava/lang/String;

    :cond_b1
    const-string v4, "DonateUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->f:Ljava/lang/String;

    :cond_bd
    const-string v4, "CheckMD5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cd

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/acquariusoft/UpdateMe/b/c;->g:I

    :cond_cd
    const-string v4, "Wipe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dd

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/acquariusoft/UpdateMe/b/c;->j:I

    :cond_dd
    const-string v4, "RebootRecovery"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/acquariusoft/UpdateMe/b/c;->k:I

    :cond_ed
    const-string v4, ""

    invoke-static {v4}, Lcom/acquariusoft/UpdateMe/b/d;->b(Ljava/lang/String;)V

    const-string v4, "MD5Url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_103

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v4, Lcom/acquariusoft/UpdateMe/b/c;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    const/4 v5, 0x1

    iput v5, v4, Lcom/acquariusoft/UpdateMe/b/c;->g:I

    :cond_103
    const-string v4, "MD5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    iput-object v0, v3, Lcom/acquariusoft/UpdateMe/b/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/d;->a:Lcom/acquariusoft/UpdateMe/b/c;

    const/4 v3, 0x1

    iput v3, v0, Lcom/acquariusoft/UpdateMe/b/c;->g:I
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_114} :catch_141
    .catch Lorg/xml/sax/SAXException; {:try_start_65 .. :try_end_114} :catch_119
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_114} :catch_123
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_65 .. :try_end_114} :catch_12d
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_65 .. :try_end_114} :catch_137

    :cond_114
    :goto_114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_52

    :catch_119
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_123
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_12d
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_137
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acquariusoft/UpdateMe/b/d;->c(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_141
    move-exception v0

    goto :goto_114
.end method
