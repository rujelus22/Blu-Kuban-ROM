.class public final Lcom/acquariusoft/UpdateMe/b/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/acquariusoft/UpdateMe/b/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/acquariusoft/UpdateMe/b/a;

    invoke-direct {v0}, Lcom/acquariusoft/UpdateMe/b/a;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    return-void
.end method

.method private static a(Ljava/lang/String;)V
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a()Lcom/acquariusoft/UpdateMe/b/a;
    .registers 2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    sget-object v2, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    const-string v2, "User-Agent"

    sget-object v3, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v3, v3, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
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

    const-string v3, "Root element :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/b;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-static {v2}, Lcom/acquariusoft/UpdateMe/b/b;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v1, 0x0

    move v4, v1

    :goto_52
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v4, v1, :cond_59

    :goto_58
    return-void

    :cond_59
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11d

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v1, "Tab"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/i;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/i;-><init>()V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_86
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_122

    :cond_8c
    const-string v1, "Kernels"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_af

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/i;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/i;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_a9
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_263

    :cond_af
    const-string v1, "Plugins"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/i;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/i;-><init>()V

    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_cc
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_374

    :cond_d2
    const-string v1, "Themes"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/i;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/i;-><init>()V

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_ef
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_48f

    :cond_f5
    const-string v1, "Apps"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_118

    new-instance v7, Lcom/acquariusoft/UpdateMe/b/i;

    invoke-direct {v7}, Lcom/acquariusoft/UpdateMe/b/i;-><init>()V

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v7, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/b/b;->a:Lcom/acquariusoft/UpdateMe/b/a;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/b/a;->a:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v3, v1

    :goto_112
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v3, v1, :cond_5a0

    :cond_118
    const-string v1, ""

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b;->a(Ljava/lang/String;)V

    :cond_11d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_52

    :cond_122
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_172

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v10, "Name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_147

    iput-object v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->a:Ljava/lang/String;

    :cond_147
    const-string v10, "IconNum"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_155

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->b:I

    :cond_155
    const-string v1, "Element"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v9, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v9}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    iget-object v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_16c
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v1, v10, :cond_177

    :cond_172
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_86

    :cond_177
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_25f

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;
    :try_end_185
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_185} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_185} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_185} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_185} :catch_6cf

    move-result-object v11

    :try_start_186
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_198

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    :cond_198
    const-string v12, "Desc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a2

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    :cond_1a2
    const-string v12, "Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ac

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    :cond_1ac
    const-string v12, "ExternalLink"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ba

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    :cond_1ba
    const-string v12, "Version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c4

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    :cond_1c4
    const-string v12, "CheckMD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_1d2
    const-string v12, "RebootRecovery"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    :cond_1e0
    const-string v12, "Wipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ee

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    :cond_1ee
    const-string v12, "Dest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f8

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_1f8
    const-string v12, "DestChmod"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_202

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    :cond_202
    const-string v12, "LaunchApp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_210

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    :cond_210
    const-string v12, "MD5Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21d

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_21d
    const-string v12, "MD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22a

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_22a
    const-string v12, "Filter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_248

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_248

    sget-object v12, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v12, v12, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_248

    iget-object v12, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_248
    const-string v12, "ThumbnailUrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_252

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->n:Ljava/lang/String;

    :cond_252
    const-string v12, "ImageUrl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25f

    iget-object v11, v9, Lcom/acquariusoft/UpdateMe/b/j;->o:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_25f} :catch_6e4
    .catch Lorg/xml/sax/SAXException; {:try_start_186 .. :try_end_25f} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_25f} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_186 .. :try_end_25f} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_186 .. :try_end_25f} :catch_6cf

    :cond_25f
    :goto_25f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16c

    :cond_263
    :try_start_263
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_29a

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    const-string v1, "Kernel"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v9, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v9}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    iget-object v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_294
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v1, v10, :cond_29f

    :cond_29a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_a9

    :cond_29f
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_2a6
    .catch Lorg/xml/sax/SAXException; {:try_start_263 .. :try_end_2a6} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_263 .. :try_end_2a6} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_263 .. :try_end_2a6} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_263 .. :try_end_2a6} :catch_6cf

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_370

    :try_start_2aa
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c0

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    :cond_2c0
    const-string v12, "Desc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2ca

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    :cond_2ca
    const-string v12, "Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d4

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    :cond_2d4
    const-string v12, "ExternalLink"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2e2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    :cond_2e2
    const-string v12, "Version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2ec

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    :cond_2ec
    const-string v12, "CheckMD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2fa

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_2fa
    const-string v12, "RebootRecovery"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_308

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    :cond_308
    const-string v12, "Wipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_316

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    :cond_316
    const-string v12, "Dest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_320

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_320
    const-string v12, "DestChmod"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32a

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    :cond_32a
    const-string v12, "LaunchApp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_338

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    :cond_338
    const-string v12, "MD5Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_345

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_345
    const-string v12, "MD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_352

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_352
    const-string v12, "Filter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_370

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_370

    sget-object v11, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v11, v11, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_370

    iget-object v10, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_370
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_370} :catch_6e1
    .catch Lorg/xml/sax/SAXException; {:try_start_2aa .. :try_end_370} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_2aa .. :try_end_370} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2aa .. :try_end_370} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2aa .. :try_end_370} :catch_6cf

    :cond_370
    :goto_370
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_294

    :cond_374
    :try_start_374
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_3ab

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    const-string v1, "Plugin"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ab

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v9, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v9}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    iget-object v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_3a5
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v1, v10, :cond_3b0

    :cond_3ab
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_cc

    :cond_3b0
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_3b7
    .catch Lorg/xml/sax/SAXException; {:try_start_374 .. :try_end_3b7} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_374 .. :try_end_3b7} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_374 .. :try_end_3b7} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_374 .. :try_end_3b7} :catch_6cf

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_48b

    :try_start_3bb
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d1

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    :cond_3d1
    const-string v12, "Desc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3db

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    :cond_3db
    const-string v12, "Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e5

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    :cond_3e5
    const-string v12, "ExternalLink"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f3

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    :cond_3f3
    const-string v12, "Version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3fd

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    :cond_3fd
    const-string v12, "Dest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_407

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_407
    const-string v12, "DestChmod"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_411

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    :cond_411
    const-string v12, "CheckMD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_41f

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_41f
    const-string v12, "RebootRecovery"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42d

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    :cond_42d
    const-string v12, "Wipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_43b

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    :cond_43b
    const-string v12, "Dest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_445

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_445
    const-string v12, "LaunchApp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_453

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    :cond_453
    const-string v12, "MD5Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_460

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_460
    const-string v12, "MD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_46d

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_46d
    const-string v12, "Filter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_48b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_48b

    sget-object v11, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v11, v11, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_48b

    iget-object v10, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_48b
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_48b} :catch_6de
    .catch Lorg/xml/sax/SAXException; {:try_start_3bb .. :try_end_48b} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_3bb .. :try_end_48b} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3bb .. :try_end_48b} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3bb .. :try_end_48b} :catch_6cf

    :cond_48b
    :goto_48b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3a5

    :cond_48f
    :try_start_48f
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4c6

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    const-string v1, "Theme"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v9, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v9}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    iget-object v1, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_4c0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lt v1, v10, :cond_4cb

    :cond_4c6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_ef

    :cond_4cb
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_4d2
    .catch Lorg/xml/sax/SAXException; {:try_start_48f .. :try_end_4d2} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_48f .. :try_end_4d2} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_48f .. :try_end_4d2} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_48f .. :try_end_4d2} :catch_6cf

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_59c

    :try_start_4d6
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v12, "Name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4ec

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    :cond_4ec
    const-string v12, "Desc"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4f6

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    :cond_4f6
    const-string v12, "Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_500

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    :cond_500
    const-string v12, "ExternalLink"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_50e

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    :cond_50e
    const-string v12, "Version"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_518

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    :cond_518
    const-string v12, "CheckMD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_526

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_526
    const-string v12, "RebootRecovery"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_534

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    :cond_534
    const-string v12, "Wipe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_542

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    :cond_542
    const-string v12, "Dest"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_54c

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_54c
    const-string v12, "DestChmod"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_556

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    :cond_556
    const-string v12, "LaunchApp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_564

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    :cond_564
    const-string v12, "MD5Url"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_571

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_571
    const-string v12, "MD5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57e

    iput-object v10, v9, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    const/4 v12, 0x1

    iput v12, v9, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_57e
    const-string v12, "Filter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_59c

    sget-object v11, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v11, v11, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59c

    iget-object v10, v8, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_4d6 .. :try_end_59c} :catch_6db
    .catch Lorg/xml/sax/SAXException; {:try_start_4d6 .. :try_end_59c} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_4d6 .. :try_end_59c} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4d6 .. :try_end_59c} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4d6 .. :try_end_59c} :catch_6cf

    :cond_59c
    :goto_59c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c0

    :cond_5a0
    :try_start_5a0
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_5d7

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    const-string v1, "App"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d7

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v8, Lcom/acquariusoft/UpdateMe/b/j;

    invoke-direct {v8}, Lcom/acquariusoft/UpdateMe/b/j;-><init>()V

    iget-object v1, v7, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_5d1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v1, v9, :cond_5dc

    :cond_5d7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_112

    :cond_5dc
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_5e3
    .catch Lorg/xml/sax/SAXException; {:try_start_5a0 .. :try_end_5e3} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_5a0 .. :try_end_5e3} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5a0 .. :try_end_5e3} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5a0 .. :try_end_5e3} :catch_6cf

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6ad

    :try_start_5e7
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5fd

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->a:Ljava/lang/String;

    :cond_5fd
    const-string v11, "Desc"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_607

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->b:Ljava/lang/String;

    :cond_607
    const-string v11, "Url"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_611

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->c:Ljava/lang/String;

    :cond_611
    const-string v11, "ExternalLink"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_61f

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->d:I

    :cond_61f
    const-string v11, "Version"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_629

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->k:Ljava/lang/String;

    :cond_629
    const-string v11, "CheckMD5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_637

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_637
    const-string v11, "RebootRecovery"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_645

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->j:I

    :cond_645
    const-string v11, "Wipe"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_653

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->m:I

    :cond_653
    const-string v11, "Dest"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_65d

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->e:Ljava/lang/String;

    :cond_65d
    const-string v11, "DestChmod"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_667

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->f:Ljava/lang/String;

    :cond_667
    const-string v11, "LaunchApp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_675

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->l:I

    :cond_675
    const-string v11, "MD5Url"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_682

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->h:Ljava/lang/String;

    const/4 v11, 0x1

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_682
    const-string v11, "MD5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68f

    iput-object v9, v8, Lcom/acquariusoft/UpdateMe/b/j;->i:Ljava/lang/String;

    const/4 v11, 0x1

    iput v11, v8, Lcom/acquariusoft/UpdateMe/b/j;->g:I

    :cond_68f
    const-string v11, "Filter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6ad

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_6ad

    sget-object v10, Lcom/acquariusoft/UpdateMe/ao;->q:Lcom/acquariusoft/UpdateMe/b/g;

    iget-object v10, v10, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6ad

    iget-object v9, v7, Lcom/acquariusoft/UpdateMe/b/i;->c:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6ad
    .catch Ljava/lang/Exception; {:try_start_5e7 .. :try_end_6ad} :catch_6d9
    .catch Lorg/xml/sax/SAXException; {:try_start_5e7 .. :try_end_6ad} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_5e7 .. :try_end_6ad} :catch_6bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5e7 .. :try_end_6ad} :catch_6c5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5e7 .. :try_end_6ad} :catch_6cf

    :cond_6ad
    :goto_6ad
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5d1

    :catch_6b1
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b;->b(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_6bb
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b;->b(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_6c5
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b;->b(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_6cf
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/acquariusoft/UpdateMe/b/b;->b(Ljava/lang/String;)V

    goto/16 :goto_58

    :catch_6d9
    move-exception v9

    goto :goto_6ad

    :catch_6db
    move-exception v10

    goto/16 :goto_59c

    :catch_6de
    move-exception v10

    goto/16 :goto_48b

    :catch_6e1
    move-exception v10

    goto/16 :goto_370

    :catch_6e4
    move-exception v10

    goto/16 :goto_25f
.end method
