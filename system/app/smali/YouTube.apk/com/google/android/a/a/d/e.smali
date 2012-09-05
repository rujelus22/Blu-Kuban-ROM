.class public Lcom/google/android/a/a/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-class v0, Lcom/google/android/a/a/d/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/d/e;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/android/a/b/b/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/a/a/d/e;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 115
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/a/a/d/e;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/a/e/a;)Lcom/google/android/a/e/c;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    if-nez p1, :cond_4

    .line 141
    :goto_3
    return-object v0

    .line 123
    :cond_4
    const-string v1, "http://www.youtube.com/api/lounge/pairing/get_screen?pairing_code=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 128
    :try_start_15
    iget-object v3, p0, Lcom/google/android/a/a/d/e;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 131
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5c

    .line 132
    sget-object v1, Lcom/google/android/a/a/d/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Response code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_45} :catch_72

    goto :goto_3

    .line 136
    :catch_46
    move-exception v1

    .line 137
    sget-object v3, Lcom/google/android/a/a/d/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 135
    :cond_5c
    :try_start_5c
    new-instance v3, Lcom/google/android/a/a/d/f;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/a/f/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/google/android/a/a/d/f;-><init>(Lcom/google/android/a/a/d/e;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/a/a/d/f;->a()Lcom/google/android/a/e/c;
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_70} :catch_46
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_70} :catch_72

    move-result-object v0

    goto :goto_3

    .line 138
    :catch_72
    move-exception v1

    .line 139
    sget-object v2, Lcom/google/android/a/a/d/e;->a:Ljava/lang/String;

    const-string v3, "Error loading screen info."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
