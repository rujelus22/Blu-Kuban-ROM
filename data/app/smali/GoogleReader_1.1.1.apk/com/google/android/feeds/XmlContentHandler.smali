.class public abstract Lcom/google/android/feeds/XmlContentHandler;
.super Ljava/net/ContentHandler;
.source "XmlContentHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final parse(Ljava/net/URLConnection;Lorg/xml/sax/ContentHandler;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 52
    :try_start_4
    invoke-static {p1}, Lcom/google/android/feeds/ContentHandlerUtils;->getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1d

    move-result-object v1

    .line 54
    :try_start_8
    invoke-static {v1}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v1

    .line 55
    invoke-static {v0, v1, p2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_f} :catch_13

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    return-void

    .line 56
    :catch_13
    move-exception v1

    .line 58
    :try_start_14
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 59
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    throw v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1d

    .line 63
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
