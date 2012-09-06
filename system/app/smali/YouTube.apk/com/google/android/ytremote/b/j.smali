.class public Lcom/google/android/ytremote/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/b/a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/google/android/ytremote/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/b/j;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/google/android/ytremote/a/d/a;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/b/j;->a:Lorg/apache/http/client/HttpClient;

    .line 38
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    :goto_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_26

    move-result-object v2

    if-nez v2, :cond_22

    .line 91
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_22
    :try_start_22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_17

    .line 88
    :catch_26
    move-exception v1

    .line 89
    sget-object v1, Lcom/google/android/ytremote/b/j;->b:Ljava/lang/String;

    const-string v2, "Unexpected response body format"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/ytremote/b/b;
    .registers 6
    .parameter

    .prologue
    .line 46
    const-string v0, "https://www.youtube.com/api/lounge/data/device_properties"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 51
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/ytremote/b/j;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 53
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_52

    .line 54
    new-instance v0, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;

    const-string v1, "Wrong status code"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1d .. :try_end_37} :catch_37
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_37} :catch_78
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_37} :catch_b1

    .line 69
    :catch_37
    move-exception v0

    .line 70
    sget-object v1, Lcom/google/android/ytremote/b/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Something went wrong when sending the request."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    :cond_52
    :try_start_52
    invoke-static {v0}, Lcom/google/android/ytremote/b/j;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v2, "hasSupport"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    .line 59
    new-instance v1, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected body response, missing hasSupport field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {v1, v0}, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_78
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_52 .. :try_end_78} :catch_37
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_78} :catch_78
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_78} :catch_b1

    .line 72
    :catch_78
    move-exception v0

    .line 73
    sget-object v1, Lcom/google/android/ytremote/b/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Something went wrong when sending the request."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;

    invoke-direct {v1, v0}, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 63
    :cond_93
    :try_start_93
    const-string v0, "hasSupport"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 64
    new-instance v0, Lcom/google/android/ytremote/b/b;

    const/4 v2, 0x1

    const-string v3, "friendlyName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/ytremote/b/b;-><init>(ZLjava/lang/String;)V

    .line 66
    :goto_a7
    return-object v0

    :cond_a8
    new-instance v0, Lcom/google/android/ytremote/b/b;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/ytremote/b/b;-><init>(ZLjava/lang/String;)V
    :try_end_b0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_93 .. :try_end_b0} :catch_37
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_b0} :catch_78
    .catch Lorg/json/JSONException; {:try_start_93 .. :try_end_b0} :catch_b1

    goto :goto_a7

    .line 75
    :catch_b1
    move-exception v0

    .line 76
    new-instance v1, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected body response "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/ytremote/logic/exception/BackendUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
