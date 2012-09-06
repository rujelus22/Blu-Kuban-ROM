.class public Lcom/google/android/ytremote/backend/a/f;
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
    .line 109
    const-class v0, Lcom/google/android/ytremote/backend/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/a/f;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/a/f;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 114
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/ytremote/backend/a/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/model/PairingCode;)Lcom/google/android/ytremote/model/CloudScreen;
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p1, :cond_4

    .line 146
    :goto_3
    return-object v0

    .line 122
    :cond_4
    invoke-static {p1}, Lcom/google/android/ytremote/backend/a/c;->a(Lcom/google/android/ytremote/model/PairingCode;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 126
    :try_start_8
    iget-object v1, p0, Lcom/google/android/ytremote/backend/a/f;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_66
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_8d

    move-result-object v1

    .line 128
    :try_start_e
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 129
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_4d

    .line 130
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 131
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 133
    :cond_27
    sget-object v4, Lcom/google/android/ytremote/backend/a/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GET "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed. Response code is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_e .. :try_end_49} :catchall_88
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_49} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_49} :catch_a3

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_3

    .line 136
    :cond_4d
    :try_start_4d
    new-instance v3, Lcom/google/android/ytremote/backend/a/g;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/ytremote/util/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/ytremote/backend/a/g;-><init>(Lcom/google/android/ytremote/backend/a/f;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/ytremote/backend/a/g;->a()Lcom/google/android/ytremote/model/CloudScreen;
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_88
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_61} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_a3

    move-result-object v0

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_3

    .line 137
    :catch_66
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 138
    :goto_6a
    :try_start_6a
    sget-object v3, Lcom/google/android/ytremote/backend/a/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error loading from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_88

    .line 143
    :catchall_88
    move-exception v0

    .line 144
    :goto_89
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 145
    throw v0

    .line 141
    :catch_8d
    move-exception v1

    move-object v2, v0

    .line 142
    :goto_8f
    :try_start_8f
    sget-object v3, Lcom/google/android/ytremote/backend/a/f;->a:Ljava/lang/String;

    const-string v4, "Error loading screen info."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_a0

    .line 144
    invoke-static {v2}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_3

    .line 143
    :catchall_9b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_89

    :catchall_a0
    move-exception v0

    move-object v1, v2

    goto :goto_89

    .line 141
    :catch_a3
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_8f

    .line 137
    :catch_a8
    move-exception v0

    goto :goto_6a
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/ytremote/model/PairingCode;

    invoke-virtual {p0, p1}, Lcom/google/android/ytremote/backend/a/f;->a(Lcom/google/android/ytremote/model/PairingCode;)Lcom/google/android/ytremote/model/CloudScreen;

    move-result-object v0

    return-object v0
.end method
