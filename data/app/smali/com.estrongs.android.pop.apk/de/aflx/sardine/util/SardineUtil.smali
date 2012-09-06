.class public Lde/aflx/sardine/util/SardineUtil;
.super Ljava/lang/Object;


# static fields
.field public static final CUSTOM_NAMESPACE_PREFIX:Ljava/lang/String; = "s"

.field public static final CUSTOM_NAMESPACE_URI:Ljava/lang/String; = "SAR:"

.field private static final DATETIME_FORMATS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final DEFAULT_NAMESPACE_PREFIX:Ljava/lang/String; = "d"

.field public static final DEFAULT_NAMESPACE_URI:Ljava/lang/String; = "DAV:"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$1;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$1;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$2;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$2;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$3;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$3;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$4;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$4;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$5;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$5;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$6;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$6;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lde/aflx/sardine/util/SardineUtil$7;

    invoke-direct {v2}, Lde/aflx/sardine/util/SardineUtil$7;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lde/aflx/sardine/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDocument()Lorg/w3c/dom/Document;
    .registers 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_7} :catch_d

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createElement(Lde/aflx/sardine/util/QName;)Lorg/w3c/dom/Element;
    .registers 5

    invoke-static {}, Lde/aflx/sardine/util/SardineUtil;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Lde/aflx/sardine/util/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lde/aflx/sardine/util/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/aflx/sardine/util/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createQNameWithCustomNamespace(Ljava/lang/String;)Lde/aflx/sardine/util/QName;
    .registers 4

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "SAR:"

    const-string v2, "s"

    invoke-direct {v0, v1, p0, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createQNameWithDefaultNamespace(Ljava/lang/String;)Lde/aflx/sardine/util/QName;
    .registers 4

    new-instance v0, Lde/aflx/sardine/util/QName;

    const-string v1, "DAV:"

    const-string v2, "d"

    invoke-direct {v0, v1, p0, v2}, Lde/aflx/sardine/util/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v1

    :cond_4
    sget-object v0, Lde/aflx/sardine/util/SardineUtil;->DATETIME_FORMATS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, v1

    :goto_11
    move-object v1, v0

    goto :goto_3

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    :try_start_19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_11

    :catch_24
    move-exception v0

    goto :goto_a
.end method

.method public static toQName(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/util/QName;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    move-object v0, v1

    goto :goto_6

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lde/aflx/sardine/util/SardineUtil;->createQNameWithCustomNamespace(Ljava/lang/String;)Lde/aflx/sardine/util/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public static toQName(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    move-object v0, v2

    goto :goto_6

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lde/aflx/sardine/util/SardineUtil;->createQNameWithCustomNamespace(Ljava/lang/String;)Lde/aflx/sardine/util/QName;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method
