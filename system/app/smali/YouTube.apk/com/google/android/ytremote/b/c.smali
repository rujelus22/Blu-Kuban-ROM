.class public Lcom/google/android/ytremote/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/apache/http/client/HttpClient;

.field private final c:Lcom/google/android/ytremote/backend/b/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const-class v0, Lcom/google/android/ytremote/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/b/c;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/b/c;->b:Lorg/apache/http/client/HttpClient;

    .line 95
    new-instance v0, Lcom/google/android/ytremote/backend/b/a;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/b/c;->c:Lcom/google/android/ytremote/backend/b/a;

    .line 96
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/android/ytremote/b/d;
    .registers 7
    .parameter

    .prologue
    .line 106
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 108
    const/4 v1, 0x0

    .line 110
    :try_start_a
    iget-object v2, p0, Lcom/google/android/ytremote/b/c;->b:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 114
    const/16 v2, 0x194

    if-ne v0, v2, :cond_22

    .line 115
    sget-object v0, Lcom/google/android/ytremote/b/d;->a:Lcom/google/android/ytremote/b/d;
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1e} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_1e} :catch_94

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 137
    :goto_21
    return-object v0

    .line 117
    :cond_22
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2c

    .line 118
    :try_start_26
    sget-object v0, Lcom/google/android/ytremote/b/d;->b:Lcom/google/android/ytremote/b/d;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_28} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_28} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_28} :catch_94

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_21

    .line 120
    :cond_2c
    :try_start_2c
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    iget-object v3, p0, Lcom/google/android/ytremote/b/c;->c:Lcom/google/android/ytremote/backend/b/a;

    invoke-static {v0, v2, v3}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/ytremote/b/c;->c:Lcom/google/android/ytremote/backend/b/a;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/b/a;->b()I

    move-result v2

    .line 122
    if-gez v2, :cond_49

    .line 123
    sget-object v0, Lcom/google/android/ytremote/b/d;->b:Lcom/google/android/ytremote/b/d;
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_45} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_45} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_2c .. :try_end_45} :catch_94

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_21

    .line 125
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/google/android/ytremote/b/c;->c:Lcom/google/android/ytremote/backend/b/a;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/b/a;->a()Landroid/net/Uri;

    move-result-object v3

    .line 126
    new-instance v0, Lcom/google/android/ytremote/b/d;

    invoke-direct {v0, v2, v3}, Lcom/google/android/ytremote/b/d;-><init>(ILandroid/net/Uri;)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_58
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_54} :catch_77
    .catch Lorg/xml/sax/SAXException; {:try_start_49 .. :try_end_54} :catch_94

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_21

    .line 128
    :catch_58
    move-exception v0

    .line 129
    :try_start_59
    sget-object v2, Lcom/google/android/ytremote/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not send the request to TV. %s"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_b1

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 137
    :goto_74
    sget-object v0, Lcom/google/android/ytremote/b/d;->b:Lcom/google/android/ytremote/b/d;

    goto :goto_21

    .line 130
    :catch_77
    move-exception v0

    .line 131
    :try_start_78
    sget-object v2, Lcom/google/android/ytremote/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal state exception: %s"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_b1

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_74

    .line 132
    :catch_94
    move-exception v0

    .line 133
    :try_start_95
    sget-object v2, Lcom/google/android/ytremote/b/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sax exception: %s"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_95 .. :try_end_ad} :catchall_b1

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_74

    .line 134
    :catchall_b1
    move-exception v0

    .line 135
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 136
    throw v0
.end method
