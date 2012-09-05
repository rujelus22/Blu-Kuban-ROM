.class public Lcom/google/api/client/http/xml/XmlHttpParser;
.super Ljava/lang/Object;
.source "XmlHttpParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/xml/XmlHttpParser$Builder;
    }
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "application/xml"

    iput-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->contentType:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 112
    .local v0, content:Ljava/io/InputStream;
    :try_start_4
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, result:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 114
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 115
    iget-object v5, p0, Lcom/google/api/client/http/xml/XmlHttpParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_16} :catch_1a

    .line 122
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v4

    .line 117
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :catch_1a
    move-exception v1

    .line 118
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 119
    .local v2, exception:Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 120
    throw v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    .line 122
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_24
    move-exception v5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v5
.end method
