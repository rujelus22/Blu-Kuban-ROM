.class public Lq/O;
.super Lq/k;


# instance fields
.field b:Ljava/util/ArrayList;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0, p1}, Lq/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/O;->b:Ljava/util/ArrayList;

    const-string v0, "gps"

    iput-object v0, p0, Lq/O;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/O;->e:Z

    :try_start_11
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lq/O;->a(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;)V
    .registers 4

    invoke-direct {p0, p1}, Lq/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/O;->b:Ljava/util/ArrayList;

    const-string v0, "gps"

    iput-object v0, p0, Lq/O;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq/O;->e:Z

    invoke-direct {p0, p2}, Lq/O;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Lorg/w3c/dom/Node;)LC/j;
    .registers 4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "driveabout_base_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, p1}, Lq/O;->b(Lorg/w3c/dom/Node;)V

    invoke-direct {p0, p1}, Lq/O;->c(Lorg/w3c/dom/Node;)V

    :cond_30
    new-instance v0, Lq/o;

    invoke-direct {v0, p1}, Lq/o;-><init>(Lorg/w3c/dom/Node;)V

    :goto_35
    return-object v0

    :cond_36
    const-string v1, "locationenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    new-instance v0, Lq/r;

    invoke-direct {v0, p1}, Lq/r;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_44
    const-string v1, "locationdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    new-instance v0, Lq/q;

    invoke-direct {v0, p1}, Lq/q;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_52
    const-string v1, "locationstatuschanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    new-instance v0, Lq/s;

    invoke-direct {v0, p1}, Lq/s;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_60
    const-string v1, "gpsstatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    new-instance v0, Lq/n;

    invoke-direct {v0, p1}, Lq/n;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_6e
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    new-instance v0, Lq/w;

    invoke-direct {v0, p1}, Lq/w;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_7c
    const-string v1, "ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-static {p1}, Lq/B;->a(Lorg/w3c/dom/Node;)Lq/B;

    move-result-object v0

    goto :goto_35

    :cond_89
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v0, Lq/D;

    invoke-direct {v0, p1}, Lq/D;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_97
    const-string v1, "touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    new-instance v0, Lq/E;

    invoke-direct {v0, p1}, Lq/E;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_a5
    const-string v1, "networksdisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    new-instance v0, Lq/u;

    invoke-direct {v0, p1}, Lq/u;-><init>(Lorg/w3c/dom/Node;)V

    goto :goto_35

    :cond_b3
    const-string v1, "networksenabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    new-instance v0, Lq/v;

    invoke-direct {v0, p1}, Lq/v;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    :cond_c2
    const-string v1, "sleep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    new-instance v0, Lq/x;

    invoke-direct {v0, p1}, Lq/x;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    :cond_d1
    const-string v1, "assert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    const-string v1, "assertNot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    :cond_e1
    new-instance v0, Lq/l;

    invoke-direct {v0, p1}, Lq/l;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    :cond_e8
    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    new-instance v0, Lq/z;

    invoke-direct {v0, p1}, Lq/z;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    :cond_f7
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    new-instance v0, Lq/m;

    invoke-direct {v0, p1}, Lq/m;-><init>(Lorg/w3c/dom/Node;)V

    goto/16 :goto_35

    :cond_106
    const/4 v0, 0x0

    goto/16 :goto_35
.end method

.method public static a(Landroid/content/Context;)Lq/k;
    .registers 4

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lq/O;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_10
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_28

    :goto_15
    if-nez v0, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    :cond_22
    new-instance v1, Lq/O;

    invoke-direct {v1, p0, v0}, Lq/O;-><init>(Landroid/content/Context;Ljava/io/InputStream;)V

    return-object v1

    :catch_28
    move-exception v0

    move-object v0, v1

    goto :goto_15

    :cond_2b
    move-object v0, v1

    goto :goto_15
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    const-string v2, "event-log"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_2e

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v4, "disabled"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_2c
    iput-boolean v2, p0, Lq/O;->e:Z

    :cond_2e
    const-string v2, "event"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v2, v0

    :goto_35
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_4f

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lq/O;->a(Lorg/w3c/dom/Node;)LC/j;

    move-result-object v5

    if-eqz v5, :cond_4a

    iget-object v6, p0, Lq/O;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4d
    move v2, v0

    goto :goto_2c

    :cond_4f
    const-string v2, "destination"

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_117

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const-string v2, "uri"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_a4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/O;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    iget-object v1, p0, Lq/O;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bh;->a()Z

    move-result v0

    if-nez v0, :cond_108

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq/O;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_9a} :catch_9a
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_9a} :catch_124
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9a} :catch_12e

    :catch_9a
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a4
    :try_start_a4
    const-string v2, "address"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_13a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_b1
    const-string v2, "lat"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    const-string v2, "lng"

    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v5, :cond_138

    if-eqz v6, :cond_138

    new-instance v2, Lt/o;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Lt/o;-><init>(II)V

    :goto_d6
    const-string v5, "title"

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_e2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :cond_e2
    new-instance v5, Lu/P;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v1, v6}, Lu/P;-><init>(Ljava/lang/String;Lt/o;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "travelmode"

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_fd

    const-string v2, "w"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    const/4 v0, 0x2

    :cond_fd
    :goto_fd
    const/4 v1, 0x0

    invoke-static {v5, v0, v1}, Lcom/google/android/maps/driveabout/app/bh;->a(Lu/P;I[Lu/b;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/O;->a:Ljava/lang/String;

    :cond_108
    :goto_108
    return-void

    :cond_109
    const-string v2, "b"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    const/4 v0, 0x3

    goto :goto_fd

    :cond_117
    invoke-direct {p0}, Lq/O;->i()Lq/z;

    move-result-object v0

    if-eqz v0, :cond_108

    invoke-virtual {v0}, Lq/z;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/O;->a:Ljava/lang/String;
    :try_end_123
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a4 .. :try_end_123} :catch_9a
    .catch Lorg/xml/sax/SAXException; {:try_start_a4 .. :try_end_123} :catch_124
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_123} :catch_12e

    goto :goto_108

    :catch_124
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_12e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_138
    move-object v2, v1

    goto :goto_d6

    :cond_13a
    move-object v3, v1

    goto/16 :goto_b1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ln/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sample.track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lorg/w3c/dom/Node;)V
    .registers 6

    const-string v0, "gps"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v0, "network"

    :cond_18
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lorg/w3c/dom/Node;)V
    .registers 9

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "provider"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lq/O;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    iput-object v0, p0, Lq/O;->d:Ljava/lang/String;

    const/4 v4, 0x2

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v4, 0x1

    :cond_26
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v1, v0, v2

    iget-object v6, p0, Lq/O;->b:Ljava/util/ArrayList;

    new-instance v0, Lq/s;

    const-string v3, "gps"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lq/s;-><init>(JLjava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method private i()Lq/z;
    .registers 4

    invoke-virtual {p0}, Lq/O;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/j;

    instance-of v2, v0, Lq/z;

    if-eqz v2, :cond_8

    check-cast v0, Lq/z;

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lq/O;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(LC/j;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lq/O;->e:Z

    return v0
.end method
