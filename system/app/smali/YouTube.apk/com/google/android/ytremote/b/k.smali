.class public Lcom/google/android/ytremote/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/logic/a;


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Lcom/google/android/ytremote/b/a;

.field private final f:Lcom/google/android/ytremote/b/c;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/Set;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/List;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 74
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "urn:dial-multiscreen-org:service:dial:1"

    aput-object v2, v1, v0

    if-eqz v1, :cond_d

    array-length v2, v1

    if-nez v2, :cond_28

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_15
    sput-object v0, Lcom/google/android/ytremote/b/k;->a:Ljava/util/List;

    .line 78
    const-class v0, Lcom/google/android/ytremote/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    .line 92
    const-string v0, "^(.+?): (.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/b/k;->c:Ljava/util/regex/Pattern;

    .line 68
    return-void

    .line 74
    :cond_28
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    :goto_2f
    if-lt v0, v3, :cond_36

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_36
    aget-object v4, v1, v0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/google/android/ytremote/b/c;

    invoke-direct {v0}, Lcom/google/android/ytremote/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->f:Lcom/google/android/ytremote/b/c;

    .line 107
    new-instance v0, Lcom/google/android/ytremote/b/j;

    invoke-direct {v0}, Lcom/google/android/ytremote/b/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->e:Lcom/google/android/ytremote/b/a;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->g:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->h:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->i:Ljava/util/Set;

    .line 112
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->j:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/k;->k:Ljava/util/List;

    .line 115
    return-void
.end method

.method private a(Lcom/google/android/ytremote/model/b;)Lcom/google/android/ytremote/model/b;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->e()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 179
    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->f:Lcom/google/android/ytremote/b/c;

    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/ytremote/b/c;->a(Landroid/net/Uri;)Lcom/google/android/ytremote/b/d;

    move-result-object v1

    .line 180
    sget-object v2, Lcom/google/android/ytremote/b/d;->b:Lcom/google/android/ytremote/b/d;

    if-eq v1, v2, :cond_19

    sget-object v2, Lcom/google/android/ytremote/b/d;->a:Lcom/google/android/ytremote/b/d;

    if-ne v1, v2, :cond_41

    .line 181
    :cond_19
    sget-object v2, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dropping TV: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    invoke-virtual {v1}, Lcom/google/android/ytremote/b/d;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 198
    :cond_40
    :goto_40
    return-object p1

    .line 185
    :cond_41
    invoke-virtual {v1}, Lcom/google/android/ytremote/b/d;->a()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/ytremote/b/d;->b()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/ytremote/model/c;

    invoke-direct {v2, p1}, Lcom/google/android/ytremote/model/c;-><init>(Lcom/google/android/ytremote/model/b;)V

    invoke-virtual {v2, v0}, Lcom/google/android/ytremote/model/c;->a(I)Lcom/google/android/ytremote/model/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/model/c;->b(Landroid/net/Uri;)Lcom/google/android/ytremote/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/ytremote/model/c;->a()Lcom/google/android/ytremote/model/b;

    move-result-object p1

    goto :goto_40

    .line 189
    :cond_5b
    :try_start_5b
    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->e:Lcom/google/android/ytremote/b/a;

    invoke-virtual {p1}, Lcom/google/android/ytremote/model/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/ytremote/b/a;->a(Ljava/lang/String;)Lcom/google/android/ytremote/b/b;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/android/ytremote/b/b;->b()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 191
    invoke-virtual {v1}, Lcom/google/android/ytremote/b/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    new-instance v2, Lcom/google/android/ytremote/model/c;

    invoke-direct {v2, p1}, Lcom/google/android/ytremote/model/c;-><init>(Lcom/google/android/ytremote/model/b;)V

    invoke-virtual {v2, v1}, Lcom/google/android/ytremote/model/c;->a(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/ytremote/model/c;->a()Lcom/google/android/ytremote/model/b;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7d} :catch_7f

    move-result-object p1

    goto :goto_40

    .line 193
    :catch_7f
    move-exception v1

    .line 195
    sget-object v2, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v3, "Couldn\'t retrieve device information"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_87
    move-object p1, v0

    .line 198
    goto :goto_40
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lcom/google/android/ytremote/model/b;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 385
    const-string v0, "Application-URL"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 386
    array-length v2, v0

    if-eq v2, v4, :cond_15

    .line 387
    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Expected one Application-URL header. Found 0 or more"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 434
    :goto_14
    return-object v0

    .line 390
    :cond_15
    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 392
    :try_start_1b
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 393
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x200

    new-array v4, v4, [B

    :goto_2c
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_42

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_37} :catch_38

    goto :goto_2c

    .line 432
    :catch_38
    move-exception v0

    .line 433
    sget-object v2, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v3, "Error parsing device description response: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 434
    goto :goto_14

    .line 393
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 395
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 396
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 397
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 398
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 401
    const-string v3, "device"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 402
    new-instance v3, Lcom/google/android/ytremote/model/c;

    invoke-direct {v3}, Lcom/google/android/ytremote/model/c;-><init>()V

    .line 403
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_79

    .line 404
    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "No devices found in device description XML."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 405
    goto :goto_14

    .line 407
    :cond_79
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 410
    const-string v4, "friendlyName"

    const-string v5, "urn:schemas-upnp-org:device-1-0"

    invoke-static {v0, v4, v5}, Lcom/google/android/ytremote/b/k;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {v3, v4}, Lcom/google/android/ytremote/model/c;->a(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;

    .line 412
    new-instance v4, Lcom/google/android/ytremote/model/SsdpId;

    .line 413
    const-string v5, "UDN"

    const-string v6, "urn:schemas-upnp-org:device-1-0"

    .line 412
    invoke-static {v0, v5, v6}, Lcom/google/android/ytremote/b/k;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/ytremote/model/SsdpId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/ytremote/model/c;->a(Lcom/google/android/ytremote/model/SsdpId;)Lcom/google/android/ytremote/model/c;

    .line 415
    const-string v4, "manufacturer"

    const-string v5, "urn:schemas-upnp-org:device-1-0"

    invoke-static {v0, v4, v5}, Lcom/google/android/ytremote/b/k;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-virtual {v3, v4}, Lcom/google/android/ytremote/model/c;->b(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;

    .line 417
    const-string v4, "modelName"

    const-string v5, "urn:schemas-upnp-org:device-1-0"

    invoke-static {v0, v4, v5}, Lcom/google/android/ytremote/b/k;->a(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v3, v0}, Lcom/google/android/ytremote/model/c;->c(Ljava/lang/String;)Lcom/google/android/ytremote/model/c;

    .line 421
    if-eqz v2, :cond_d2

    .line 422
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/google/android/ytremote/model/c;->a(Z)Lcom/google/android/ytremote/model/c;

    .line 423
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "YouTube"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 425
    invoke-virtual {v3, v0}, Lcom/google/android/ytremote/model/c;->a(Landroid/net/Uri;)Lcom/google/android/ytremote/model/c;

    .line 430
    :goto_cc
    invoke-virtual {v3}, Lcom/google/android/ytremote/model/c;->a()Lcom/google/android/ytremote/model/b;

    move-result-object v0

    goto/16 :goto_14

    .line 427
    :cond_d2
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/ytremote/model/c;->a(Z)Lcom/google/android/ytremote/model/c;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_d6} :catch_38

    goto :goto_cc
.end method

.method private static a(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 372
    const/4 v0, 0x0

    :goto_5
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_d

    .line 379
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 373
    :cond_d
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 374
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 375
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 376
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 372
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/net/DatagramPacket;
    .registers 2
    .parameter

    .prologue
    .line 145
    invoke-static {p0}, Lcom/google/android/ytremote/b/k;->c(Ljava/lang/String;)Ljava/net/DatagramPacket;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 242
    if-nez v2, :cond_13

    move-object v0, v1

    .line 252
    :cond_8
    :goto_8
    return-object v0

    .line 247
    :cond_9
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 248
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-nez v3, :cond_8

    .line 246
    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v1

    .line 252
    goto :goto_8
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/k;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/k;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_9
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->a(Lorg/apache/http/HttpResponse;)Lcom/google/android/ytremote/model/b;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p1, v0}, Lcom/google/android/ytremote/b/k;->a(Ljava/lang/String;Lcom/google/android/ytremote/model/b;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    sget-object v1, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Reading device details at %s failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/k;Ljava/net/DatagramSocket;Ljava/util/List;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 262
    const/16 v0, 0x7d0

    const/16 v1, 0x400

    new-array v4, v1, [B

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v1, v4

    invoke-direct {v6, v4, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    :try_start_12
    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_15
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_15} :catch_5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {p1, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1d
    .catch Ljava/net/SocketTimeoutException; {:try_start_1a .. :try_end_1d} :catch_b9
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_6d

    :goto_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-int v2, v7

    sub-int v2, v0, v2

    if-lez v2, :cond_62

    if-eqz v1, :cond_bb

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ST"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v1, "LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_77

    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v1, "Received SSDP response with no LOCATION header. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_c

    :catch_5a
    move-exception v0

    sget-object v1, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Error setting socket timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9d

    return-void

    :catch_6d
    move-exception v1

    sget-object v2, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v9, "Error receiving m search response packet"

    invoke-static {v2, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_1d

    :cond_77
    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/ytremote/model/b;

    invoke-direct {p0, v0, v1}, Lcom/google/android/ytremote/b/k;->a(Ljava/lang/String;Lcom/google/android/ytremote/model/b;)V

    move v0, v2

    goto :goto_c

    :cond_8c
    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/google/android/ytremote/b/l;

    invoke-direct {v6, p0, v0}, Lcom/google/android/ytremote/b/l;-><init>(Lcom/google/android/ytremote/b/k;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto/16 :goto_c

    :cond_9d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_a3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a3 .. :try_end_a6} :catch_b0

    goto :goto_66

    :catch_a7
    move-exception v0

    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Read device response task cancelled while waiting for reading device details task to complete"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :catch_b0
    move-exception v0

    sget-object v2, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v3, "Error waiting for reading device details task to complete"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :catch_b9
    move-exception v0

    goto :goto_62

    :cond_bb
    move v0, v2

    goto/16 :goto_c
.end method

.method static synthetic a(Lcom/google/android/ytremote/b/k;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/b/k;->l:Z

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/google/android/ytremote/model/b;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->g:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 165
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->g:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/google/android/ytremote/model/b;->d()Lcom/google/android/ytremote/model/SsdpId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-direct {p0, p2}, Lcom/google/android/ytremote/b/k;->a(Lcom/google/android/ytremote/model/b;)Lcom/google/android/ytremote/model/b;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_32

    .line 168
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->h:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 172
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->j:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_3e

    .line 175
    :cond_32
    monitor-exit p0

    return-void

    .line 169
    :cond_34
    :try_start_34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/logic/b;

    .line 170
    invoke-interface {v0, v1}, Lcom/google/android/ytremote/logic/b;->a(Lcom/google/android/ytremote/model/b;)V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_27

    .line 164
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/net/NetworkInterface;)Ljava/net/MulticastSocket;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 440
    :try_start_1
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V

    .line 441
    invoke-virtual {v0, p0}, Ljava/net/MulticastSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V

    .line 442
    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setReceiveBufferSize(I)V

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->setBroadcast(Z)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 449
    :goto_12
    return-object v0

    .line 445
    :catch_13
    move-exception v0

    .line 446
    sget-object v1, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Error creating socket on interface %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic b(Lcom/google/android/ytremote/b/k;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->j:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 127
    :cond_a
    :goto_a
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_11

    .line 135
    return-object v0

    .line 128
    :cond_11
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/google/android/ytremote/b/k;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 131
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private static c(Ljava/lang/String;)Ljava/net/DatagramPacket;
    .registers 6
    .parameter

    .prologue
    .line 148
    :try_start_0
    const-string v0, "239.255.255.250"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_5} :catch_48

    move-result-object v1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "M-SEARCH * HTTP/1.1\r\nHOST: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":1900"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string v2, "\r\nMAN: \"ssdp:discover\"\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MX: 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string v2, "\r\nST: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 160
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, v2

    const/16 v4, 0x76c

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :goto_47
    return-object v0

    .line 150
    :catch_48
    move-exception v0

    const/4 v0, 0x0

    goto :goto_47
.end method

.method static synthetic c()Ljava/util/List;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/android/ytremote/b/k;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->h:Ljava/util/Set;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .registers 9

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_19

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_26

    move-object v0, v1

    .line 236
    :goto_18
    return-object v0

    .line 209
    :catch_19
    move-exception v0

    .line 210
    sget-object v1, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v2, "Error retrieving local interfaces"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_18

    .line 215
    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 217
    :try_start_2c
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v2

    if-nez v2, :cond_11

    .line 218
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_3f
    .catch Ljava/net/SocketException; {:try_start_2c .. :try_end_3f} :catch_4c

    move-result v2

    if-eqz v2, :cond_11

    .line 229
    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->a(Ljava/net/NetworkInterface;)Ljava/net/InetAddress;

    move-result-object v2

    .line 230
    if-eqz v2, :cond_11

    .line 231
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 221
    :catch_4c
    move-exception v2

    .line 222
    sget-object v4, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    .line 223
    const-string v5, "Could not read interface type for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 222
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method static synthetic d(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/ytremote/b/k;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->i:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 568
    return-void
.end method

.method public final a(Lcom/google/android/ytremote/logic/b;)V
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 549
    sget-object v0, Lcom/google/android/ytremote/b/k;->b:Ljava/lang/String;

    const-string v1, "Can not call find after stopSearch. Bye!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_10
    :goto_10
    return-void

    .line 553
    :cond_11
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    iget-boolean v0, p0, Lcom/google/android/ytremote/b/k;->l:Z

    if-eqz v0, :cond_30

    .line 556
    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/b;

    .line 557
    invoke-interface {p1, v0}, Lcom/google/android/ytremote/logic/b;->a(Lcom/google/android/ytremote/model/b;)V

    goto :goto_20

    .line 562
    :cond_30
    invoke-direct {p0}, Lcom/google/android/ytremote/b/k;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/ytremote/b/k;->l:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/ytremote/b/o;

    invoke-direct {v1, p0}, Lcom/google/android/ytremote/b/o;-><init>(Lcom/google/android/ytremote/b/k;)V

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_10

    :cond_63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->b(Ljava/net/NetworkInterface;)Ljava/net/MulticastSocket;

    move-result-object v4

    if-eqz v4, :cond_46

    sget-object v0, Lcom/google/android/ytremote/b/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_75
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p0, Lcom/google/android/ytremote/b/k;->k:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/ytremote/b/n;

    invoke-direct {v5, p0, v4}, Lcom/google/android/ytremote/b/n;-><init>(Lcom/google/android/ytremote/b/k;Ljava/net/MulticastSocket;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_8c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v1, v2

    :goto_93
    const/4 v6, 0x3

    if-ge v1, v6, :cond_75

    iget-object v6, p0, Lcom/google/android/ytremote/b/k;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/google/android/ytremote/b/m;

    invoke-direct {v7, p0, v0, v4}, Lcom/google/android/ytremote/b/m;-><init>(Lcom/google/android/ytremote/b/k;Ljava/lang/String;Ljava/net/MulticastSocket;)V

    mul-int/lit16 v8, v1, 0x12c

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_a8
    iput-boolean v2, p0, Lcom/google/android/ytremote/b/k;->l:Z

    goto/16 :goto_10
.end method
