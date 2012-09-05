.class public final Lcom/google/android/youtube/core/converter/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/xml/sax/Attributes;

.field private static final c:Ljava/util/Map;


# instance fields
.field private final b:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/core/converter/m;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/converter/k;->a:Lorg/xml/sax/Attributes;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/k;->c:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 6
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "features can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :try_start_8
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/k;->b:Ljavax/xml/parsers/SAXParserFactory;

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    iget-object v3, p0, Lcom/google/android/youtube/core/converter/k;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_37
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_8 .. :try_end_37} :catch_38
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_8 .. :try_end_37} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_37} :catch_4a

    goto :goto_16

    .line 140
    :catch_38
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :catch_41
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_4a
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :cond_53
    return-void
.end method

.method public static a()Lcom/google/android/youtube/core/converter/k;
    .registers 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/youtube/core/converter/k;

    sget-object v1, Lcom/google/android/youtube/core/converter/k;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/k;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic b()Lorg/xml/sax/Attributes;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/youtube/core/converter/k;->a:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 162
    const-string v0, "input can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "rules can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/k;->b:Ljavax/xml/parsers/SAXParserFactory;

    monitor-enter v1
    :try_end_d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_d} :catch_34
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_d} :catch_3e

    .line 167
    :try_start_d
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/k;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 168
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_3b

    .line 169
    :try_start_18
    new-instance v1, Lcom/google/android/youtube/core/converter/n;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/core/converter/n;-><init>(Lcom/google/android/youtube/core/converter/c;)V

    .line 170
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 171
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 172
    iget-object v0, v1, Lcom/google/android/youtube/core/converter/n;->a:Ljava/lang/Object;

    if-nez v0, :cond_45

    .line 174
    new-instance v0, Lcom/google/android/youtube/core/converter/InvalidFormatException;

    const-string v1, "XML is well-formed but invalid"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_34
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_34} :catch_34
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_34} :catch_3e

    .line 177
    :catch_34
    move-exception v0

    .line 178
    new-instance v1, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1

    throw v0
    :try_end_3e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3c .. :try_end_3e} :catch_34
    .catch Lorg/xml/sax/SAXException; {:try_start_3c .. :try_end_3e} :catch_3e

    .line 179
    :catch_3e
    move-exception v0

    .line 180
    new-instance v1, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_45
    :try_start_45
    iget-object v0, v1, Lcom/google/android/youtube/core/converter/n;->a:Ljava/lang/Object;
    :try_end_47
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_45 .. :try_end_47} :catch_34
    .catch Lorg/xml/sax/SAXException; {:try_start_45 .. :try_end_47} :catch_3e

    return-object v0
.end method
