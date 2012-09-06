.class Lcom/google/common/flags/XmlSupport;
.super Ljava/lang/Object;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flags/XmlSupport$1;,
        Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;,
        Lcom/google/common/flags/XmlSupport$FlagElementName;,
        Lcom/google/common/flags/XmlSupport$ParseState;
    }
.end annotation


# static fields
.field static final TYPENAME_RE:Ljava/util/regex/Pattern;

.field private static xmlParser:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 297
    const-string v0, "com.google.common.flags.Flag<(.*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/flags/XmlSupport;->TYPENAME_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/common/flags/XmlSupport;->xmlUnescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static discoverFlags(Ljava/lang/String;)Ljava/util/Set;
    .registers 14
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 312
    .local v5, flags:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    :try_start_5
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_8} :catch_92

    move-result-object v1

    .line 316
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_f
    if-ge v6, v7, :cond_93

    aget-object v3, v0, v6

    .line 317
    .local v3, f:Ljava/lang/reflect/Field;
    const-class v11, Lcom/google/common/flags/FlagSpec;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 318
    const-class v11, Lcom/google/common/flags/FlagSpec;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/google/common/flags/FlagSpec;

    .line 319
    .local v9, spec:Lcom/google/common/flags/FlagSpec;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, type:Ljava/lang/String;
    sget-object v11, Lcom/google/common/flags/XmlSupport;->TYPENAME_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 327
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 328
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 330
    :cond_3c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, flagName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/common/flags/FlagDescription;->createFlagFromField(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/common/flags/FlagSpec;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/common/flags/FlagDescription$Builder;->shortFlagName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/common/flags/FlagSpec;->help()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/common/flags/FlagDescription$Builder;->doc(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/common/flags/FlagSpec;->altName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/common/flags/FlagDescription$Builder;->altName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-interface {v9}, Lcom/google/common/flags/FlagSpec;->docLevel()Lcom/google/common/flags/DocLevel;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/common/flags/FlagDescription$Builder;->docLevel(Lcom/google/common/flags/DocLevel;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/common/flags/FlagDescription$Builder;->type(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/common/flags/FlagDescription$Builder;->build()Lcom/google/common/flags/FlagDescription;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4           #flagName:Ljava/lang/String;
    .end local v8           #matcher:Ljava/util/regex/Matcher;
    .end local v9           #spec:Lcom/google/common/flags/FlagSpec;
    .end local v10           #type:Ljava/lang/String;
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 313
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_92
    move-exception v2

    .line 340
    :cond_93
    return-object v5
.end method

.method static fromXml(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 8
    .parameter "xmlStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/common/flags/FlagDescription;>;"
    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 64
    :cond_8
    new-instance v1, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;

    invoke-direct {v1, p1}, Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;-><init>(Ljava/util/Map;)V

    .line 65
    .local v1, flagHandler:Lcom/google/common/flags/XmlSupport$FlagDescriptionHandler;
    const-class v3, Lcom/google/common/flags/XmlSupport;

    monitor-enter v3

    .line 66
    :try_start_10
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_43

    if-nez v2, :cond_1a

    .line 68
    :try_start_14
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    sput-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_43
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_1a} :catch_3c

    .line 74
    :cond_1a
    :try_start_1a
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 75
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_43

    .line 77
    :try_start_24
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_2e} :catch_46
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_5b

    .line 83
    :try_start_2e
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 84
    sget-object v2, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 86
    monitor-exit v3

    .line 87
    return-void

    .line 69
    :catch_3c
    move-exception v0

    .line 70
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 86
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_43

    throw v2

    .line 78
    :catch_46
    move-exception v0

    .line 79
    .restart local v0       #e:Lorg/xml/sax/SAXException;
    :try_start_47
    new-instance v2, Lcom/google/common/flags/MalformedFlagDescriptionException;

    invoke-direct {v2, v0}, Lcom/google/common/flags/MalformedFlagDescriptionException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4d

    .line 83
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catchall_4d
    move-exception v2

    :try_start_4e
    sget-object v4, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 84
    sget-object v4, Lcom/google/common/flags/XmlSupport;->xmlParser:Lorg/xml/sax/XMLReader;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    throw v2
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_43

    .line 80
    :catch_5b
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    :try_start_5c
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_4d
.end method

.method static serializeOneFlag(Lcom/google/common/flags/FlagDescription;)Ljava/lang/String;
    .registers 4
    .parameter "desc"

    .prologue
    .line 350
    if-nez p0, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 352
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v1, "<flag>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isShortFlagNameSpecified()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 357
    const-string v1, "shortname"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_32
    const-string v1, "doc"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getDoc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "doclevel"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getDocLevel()Lcom/google/common/flags/DocLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/flags/DocLevel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 364
    const-string v1, "altname"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_63
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/flags/XmlSupport;->toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "</flag>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static toXml(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, flags:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/common/flags/FlagDescription;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v0, b:Ljava/lang/StringBuilder;
    const-string v3, "<flags>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/flags/FlagDescription;

    .line 383
    .local v1, d:Lcom/google/common/flags/FlagDescription;
    invoke-static {v1}, Lcom/google/common/flags/XmlSupport;->serializeOneFlag(Lcom/google/common/flags/FlagDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 385
    .end local v1           #d:Lcom/google/common/flags/FlagDescription;
    :cond_22
    const-string v3, "</flags>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static toXmlElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"
    .parameter "content"

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/flags/XmlSupport;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 406
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 407
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 408
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 409
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 410
    return-object p0
.end method

.method private static xmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 420
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 421
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 422
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 423
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    return-object p0
.end method
