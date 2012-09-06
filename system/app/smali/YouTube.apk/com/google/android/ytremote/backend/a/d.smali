.class public Lcom/google/android/ytremote/backend/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/logic/b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const-class v0, Lcom/google/android/ytremote/backend/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/a/d;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/a/d;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 99
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/ytremote/backend/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/Set;)Ljava/util/Map;
    .registers 8
    .parameter

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/android/ytremote/backend/a/c;->a(Ljava/util/Collection;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    .line 124
    const/4 v1, 0x0

    .line 127
    :try_start_5
    iget-object v0, p0, Lcom/google/android/ytremote/backend/a/d;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 129
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 130
    const/16 v3, 0xc8

    if-eq v0, v3, :cond_4d

    .line 131
    sget-object v3, Lcom/google/android/ytremote/backend/a/d;->a:Ljava/lang/String;

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

    .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 133
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_93
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_48} :catch_66
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_48} :catch_87

    move-result-object v0

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 146
    :goto_4c
    return-object v0

    .line 137
    :cond_4d
    :try_start_4d
    new-instance v0, Lcom/google/android/ytremote/backend/a/e;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/ytremote/util/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/android/ytremote/backend/a/e;-><init>(Lcom/google/android/ytremote/backend/a/d;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/a/e;->a()Ljava/util/Map;
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_93
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_61} :catch_66
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_87

    move-result-object v0

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_4c

    .line 139
    :catch_66
    move-exception v0

    .line 140
    :try_start_67
    sget-object v3, Lcom/google/android/ytremote/backend/a/d;->a:Ljava/lang/String;

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
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_93

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 146
    :goto_82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_4c

    .line 141
    :catch_87
    move-exception v0

    .line 142
    :try_start_88
    sget-object v2, Lcom/google/android/ytremote/backend/a/d;->a:Ljava/lang/String;

    const-string v3, "Error loading screen status."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_93

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_82

    .line 143
    :catchall_93
    move-exception v0

    .line 144
    invoke-static {v1}, Lcom/google/android/ytremote/a/c/a;->a(Lorg/apache/http/HttpResponse;)V

    .line 145
    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/util/Map;
    .registers 8
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 105
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 119
    :goto_c
    return-object v0

    .line 108
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_39

    .line 114
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/a/d;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 116
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_47

    move-object v0, v2

    .line 119
    goto :goto_c

    .line 110
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/CloudScreen;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/ytremote/model/CloudScreen;->getLoungeToken()Lcom/google/android/ytremote/model/LoungeToken;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 116
    :cond_47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/model/LoungeToken;

    .line 117
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/ytremote/model/CloudScreen;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method
