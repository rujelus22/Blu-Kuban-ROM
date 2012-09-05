.class public final Lcom/cooliris/picasa/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/GDataClient$Operation;
    }
.end annotation


# static fields
.field public static final HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v3, 0x4e20

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 76
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 79
    const-string v2, "Cooliris-GData/1.0; gzip"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 80
    sput-object v0, Lcom/cooliris/picasa/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 83
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 84
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 85
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 88
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/cooliris/picasa/GDataClient;->HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v1, Lcom/cooliris/picasa/GDataClient;->HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v2, Lcom/cooliris/picasa/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/cooliris/picasa/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 91
    return-void
.end method

.method private callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/cooliris/picasa/GDataClient$Operation;)V
    .registers 18
    .parameter "request"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v12, "GData-Version"

    const-string v13, "2"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v12, "Accept-Encoding"

    const-string v13, "gzip"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/cooliris/picasa/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 153
    .local v1, authToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_34

    .line 154
    const-string v12, "Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GoogleLogin auth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_34
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 159
    .local v5, etag:Ljava/lang/String;
    if-eqz v5, :cond_41

    .line 160
    const-string v12, "If-None-Match"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_41
    const/4 v8, 0x0

    .line 166
    .local v8, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_42
    iget-object v12, p0, Lcom/cooliris/picasa/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_b9

    move-result-object v8

    .line 173
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 174
    .local v9, status:I
    const/4 v10, 0x0

    .line 175
    .local v10, stream:Ljava/io/InputStream;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 176
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_77

    .line 178
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 179
    if-eqz v10, :cond_77

    .line 180
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v7

    .line 181
    .local v7, header:Lorg/apache/http/Header;
    if-eqz v7, :cond_77

    .line 182
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "gzip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_77

    .line 183
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10           #stream:Ljava/io/InputStream;
    .local v11, stream:Ljava/io/InputStream;
    move-object v10, v11

    .line 190
    .end local v7           #header:Lorg/apache/http/Header;
    .end local v11           #stream:Ljava/io/InputStream;
    .restart local v10       #stream:Ljava/io/InputStream;
    :cond_77
    const-string v12, "ETag"

    invoke-interface {v8, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 191
    .local v6, etagHeader:Lorg/apache/http/Header;
    move-object/from16 v0, p2

    iput v9, v0, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    .line 192
    if-eqz v6, :cond_bb

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    :goto_87
    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/cooliris/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    .line 196
    if-eqz v4, :cond_b8

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, bDelete:Z
    const-string v12, "X-HTTP-Method-Override"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 200
    .restart local v7       #header:Lorg/apache/http/Header;
    if-eqz v7, :cond_af

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_af

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DELETE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_af

    .line 201
    const/4 v2, 0x1

    .line 203
    :cond_af
    const/16 v12, 0x194

    if-eq v9, v12, :cond_b5

    if-eqz v2, :cond_b8

    .line 204
    :cond_b5
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 207
    .end local v2           #bDelete:Z
    .end local v7           #header:Lorg/apache/http/Header;
    :cond_b8
    return-void

    .line 167
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #etagHeader:Lorg/apache/http/Header;
    .end local v9           #status:I
    .end local v10           #stream:Ljava/io/InputStream;
    :catch_b9
    move-exception v3

    .line 169
    .local v3, e:Ljava/io/IOException;
    throw v3

    .line 192
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #etagHeader:Lorg/apache/http/Header;
    .restart local v9       #status:I
    .restart local v10       #stream:Ljava/io/InputStream;
    :cond_bb
    const/4 v12, 0x0

    goto :goto_87
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/cooliris/picasa/GDataClient$Operation;)V
    .registers 7
    .parameter "feedUrl"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v0, p2, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 139
    .local v0, etag:Ljava/lang/String;
    const-string v2, "X-HTTP-Method-Override"

    const-string v3, "DELETE"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "If-Match"

    if-eqz v0, :cond_19

    .end local v0           #etag:Ljava/lang/String;
    :goto_12
    invoke-virtual {v1, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v1, p2}, Lcom/cooliris/picasa/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/cooliris/picasa/GDataClient$Operation;)V

    .line 142
    return-void

    .line 140
    .restart local v0       #etag:Ljava/lang/String;
    :cond_19
    const-string v0, "*"

    goto :goto_12
.end method

.method public get(Ljava/lang/String;Lcom/cooliris/picasa/GDataClient$Operation;)V
    .registers 4
    .parameter "feedUrl"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/cooliris/picasa/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/cooliris/picasa/GDataClient$Operation;)V

    .line 105
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 2
    .parameter "authToken"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cooliris/picasa/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 101
    return-void
.end method
