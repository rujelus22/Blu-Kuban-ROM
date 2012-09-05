.class public Lcom/google/android/apps/books/util/OceanXmlBuilder;
.super Ljava/lang/Object;
.source "OceanXmlBuilder.java"


# instance fields
.field private final mSerializer:Lorg/xmlpull/v1/XmlSerializer;

.field private mWriter:Ljava/io/StringWriter;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mWriter:Ljava/io/StringWriter;

    .line 42
    return-void
.end method

.method private init()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mWriter:Ljava/io/StringWriter;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "gbs"

    const-string v2, "http://schemas.google.com/books/2008"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    return-void
.end method

.method public static newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/apps/books/util/OceanXmlBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;-><init>()V

    .line 54
    .local v0, builder:Lcom/google/android/apps/books/util/OceanXmlBuilder;
    invoke-direct {v0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->init()V

    .line 55
    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, postData:Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, postEntity:Lorg/apache/http/entity/StringEntity;
    const-string v3, "application/atom+xml"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 93
    return-object v0
.end method

.method public endEntry()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    return-void
.end method

.method public startVolumeEntry(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilder;->mSerializer:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/books/feeds/volumes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    return-void
.end method
