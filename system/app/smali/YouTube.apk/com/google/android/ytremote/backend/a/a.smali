.class public Lcom/google/android/ytremote/backend/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/logic/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const-class v0, Lcom/google/android/ytremote/backend/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/a/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 94
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/android/ytremote/backend/a/a;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/Map;
    .registers 8
    .parameter

    .prologue
    .line 99
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 100
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 126
    :goto_c
    return-object v0

    .line 103
    :cond_d
    invoke-static {p1}, Lcom/google/android/ytremote/backend/a/c;->b(Ljava/util/Collection;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 104
    const/4 v1, 0x0

    .line 107
    :try_start_12
    iget-object v0, p0, Lcom/google/android/ytremote/backend/a/a;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 110
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_6e

    .line 111
    sget-object v3, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "POST "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Response code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 114
    sget-object v3, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error from server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_69
    .catchall {:try_start_12 .. :try_end_69} :catchall_b5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_69} :catch_87
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_69} :catch_a9

    move-result-object v0

    .line 124
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_c

    .line 117
    :cond_6e
    :try_start_6e
    new-instance v0, Lcom/google/android/ytremote/backend/a/b;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/ytremote/util/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/android/ytremote/backend/a/b;-><init>(Lcom/google/android/ytremote/backend/a/a;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/a/b;->a()Ljava/util/Map;
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_b5
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_82} :catch_87
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_82} :catch_a9

    move-result-object v0

    .line 124
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_c

    .line 119
    :catch_87
    move-exception v0

    .line 120
    :try_start_88
    sget-object v3, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error posting to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_b5

    .line 124
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 126
    :goto_a3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_c

    .line 121
    :catch_a9
    move-exception v0

    .line 122
    :try_start_aa
    sget-object v2, Lcom/google/android/ytremote/backend/a/a;->a:Ljava/lang/String;

    const-string v3, "Error loading screen status."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_b5

    .line 124
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_a3

    .line 123
    :catchall_b5
    move-exception v0

    .line 124
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 125
    throw v0
.end method
