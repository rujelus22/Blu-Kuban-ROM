.class public abstract Lcom/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final A:[Ljava/lang/Class;

.field private static E:Ljava/util/concurrent/ExecutorService;

.field private static F:Lorg/apache/http/conn/scheme/SocketFactory;

.field private static G:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static H:I

.field private static a:I

.field private static f:Ljava/lang/String;

.field private static g:I

.field private static h:Z

.field private static z:Lcom/a/b/e;


# instance fields
.field private B:Z

.field private C:Z

.field private D:Z

.field protected b:Ljava/lang/Object;

.field protected c:Lcom/a/b/c;

.field protected d:Z

.field protected e:Z

.field private i:Ljava/lang/Class;

.field private j:Ljava/lang/ref/Reference;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/ref/WeakReference;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;

.field private p:Ljava/util/Map;

.field private q:Ljava/util/Map;

.field private r:Lcom/a/b/e;

.field private s:Ljava/io/File;

.field private t:Lcom/a/a/a;

.field private u:Z

.field private v:J

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/ref/WeakReference;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/16 v0, 0x7530

    sput v0, Lcom/a/b/a;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcom/a/b/a;->f:Ljava/lang/String;

    const/4 v0, 0x4

    sput v0, Lcom/a/b/a;->g:I

    sput-boolean v3, Lcom/a/b/a;->h:Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/a/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/b/a;->A:[Ljava/lang/Class;

    const/16 v0, 0xc8

    sput v0, Lcom/a/b/a;->H:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/a;->y:Z

    return-void
.end method

.method private static a(Landroid/net/Uri;)Ljava/util/Map;
    .registers 10

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_13
    if-lt v0, v4, :cond_16

    return-object v2

    :cond_16
    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2c

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2c
    array-length v6, v5

    if-ne v6, v8, :cond_29

    aget-object v5, v5, v1

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 5

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/a/c/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/a/b/a;->E:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_c

    sget v0, Lcom/a/b/a;->g:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/a/b/a;->E:Ljava/util/concurrent/ExecutorService;

    :cond_c
    sget-object v0, Lcom/a/b/a;->E:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/a/b/c;)V
    .registers 11

    const-string v0, "post"

    invoke-static {v0, p1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "%entity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/http/HttpEntity;

    if-eqz v2, :cond_2e

    check-cast v0, Lorg/apache/http/HttpEntity;

    :goto_16
    if-eqz p2, :cond_27

    const-string v2, "Content-Type"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2, p4}, Lcom/a/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/a/b/c;)V

    return-void

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_16

    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3b

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/a/b/c;)V
    .registers 19

    sget-object v1, Lcom/a/b/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "User-Agent"

    sget-object v2, Lcom/a/b/a;->f:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz p3, :cond_1b

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_128

    :cond_1b
    sget-boolean v1, Lcom/a/b/a;->h:Z

    if-eqz v1, :cond_21

    if-eqz p3, :cond_2b

    :cond_21
    const-string v1, "Accept-Encoding"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_2b
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-direct {p0}, Lcom/a/b/a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v2, "Cookie"

    invoke-interface {p1, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    iget-object v1, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    :cond_43
    sget-object v1, Lcom/a/b/a;->G:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v1, :cond_9a

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/a/b/a;->a:I

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/a/b/a;->a:I

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v3, Lcom/a/b/a;->g:I

    invoke-direct {v1, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x2000

    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    sget-object v1, Lcom/a/b/a;->F:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v1, :cond_13b

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    :goto_86
    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v1, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/a/b/a;->G:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_9a
    sget-object v4, Lcom/a/b/a;->G:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    new-instance v1, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string v2, "http.cookie-store"

    invoke-interface {v5, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    const/4 v2, 0x0

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    const/16 v1, 0xc8

    if-lt v7, v1, :cond_c9

    const/16 v1, 0x12c

    if-lt v7, v1, :cond_14a

    :cond_c9
    :try_start_c9
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/a/c/a;->a(Ljava/io/InputStream;)[B

    move-result-object v9

    new-instance v1, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v1, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_dc} :catch_13f

    :try_start_dc
    const-string v3, "error"

    invoke-static {v3, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e1} :catch_1b9

    move-object v3, v2

    move-object/from16 v2, p2

    :goto_e4
    const-string v9, "response"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v3, :cond_f9

    array-length v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f9
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/a/b/c;->b(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/a/b/c;->a(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/a/b/c;->c(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/a/b/c;->a(Ljava/util/Date;)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/a/b/c;->a([B)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/a/b/c;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/b/c;->a(Lorg/apache/http/protocol/HttpContext;)Lcom/a/b/c;

    move-result-object v1

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/c;->a([Lorg/apache/http/Header;)Lcom/a/b/c;

    return-void

    :cond_128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_13b
    sget-object v1, Lcom/a/b/a;->F:Lorg/apache/http/conn/scheme/SocketFactory;

    goto/16 :goto_86

    :catch_13f
    move-exception v1

    move-object v13, v1

    move-object v1, v3

    move-object v3, v13

    :goto_143
    invoke-static {v3}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    move-object v3, v2

    move-object/from16 v2, p2

    goto :goto_e4

    :cond_14a
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    const-string v1, "http.target_host"

    invoke-interface {v5, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    const-string v2, "http.request"

    invoke-interface {v5, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    const/high16 v10, 0x1

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v10, Lcom/a/c/d;

    invoke-direct {v10, v2}, Lcom/a/c/d;-><init>(I)V

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1b5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v11, "gzip"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v10}, Lcom/a/c/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :goto_1ab
    invoke-virtual {v10}, Lcom/a/c/d;->toByteArray()[B

    move-result-object v2

    move-object v13, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_e4

    :cond_1b5
    invoke-interface {v9, v10}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1ab

    :catch_1b9
    move-exception v3

    goto :goto_143
.end method

.method private static a(Ljava/util/Map;)Z
    .registers 4

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, v2, Ljava/io/File;

    if-nez v0, :cond_29

    instance-of v0, v2, [B

    if-eqz v0, :cond_8

    :cond_29
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/a/b/c;)V
    .registers 13

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "multipart"

    invoke-static {v0, p1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v1, Lcom/a/b/a;->a:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_49

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c1

    :cond_49
    invoke-direct {p0}, Lcom/a/b/a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_65
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d2

    const-string v1, "--*****--\r\n"

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc8

    if-lt v1, v4, :cond_13f

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_13f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_91
    const-string v4, "response"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_a4

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    invoke-virtual {p4, v1}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/a/b/c;->b(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/a/b/c;->c(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/a/b/c;->a(Ljava/util/Date;)Lcom/a/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/c;->a([B)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/b/c;->a(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/a/b/c;

    return-void

    :cond_c1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_d2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_65

    instance-of v6, v1, Ljava/io/File;

    if-eqz v6, :cond_f4

    new-instance v6, Ljava/io/FileInputStream;

    check-cast v1, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v2, v6}, Lcom/a/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_65

    :cond_f4
    instance-of v6, v1, [B

    if-eqz v6, :cond_104

    new-instance v6, Ljava/io/ByteArrayInputStream;

    check-cast v1, [B

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v2, v6}, Lcom/a/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_65

    :cond_104
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "--*****\r\n"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    const-string v1, "\r\n"

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_65

    :cond_13f
    move-object v0, v3

    goto/16 :goto_91
.end method

.method protected static e()I
    .registers 1

    sget v0, Lcom/a/b/a;->H:I

    return v0
.end method

.method private f()V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v3}, Lcom/a/b/a;->a(Z)V

    iput-boolean v2, p0, Lcom/a/b/a;->B:Z

    iget-object v0, p0, Lcom/a/b/a;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/a/b/a;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_1e
    move v0, v3

    :goto_1f
    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/a/b/a;->l:Ljava/lang/String;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/a/b/a;->k:Ljava/lang/Object;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/a/b/a;->k:Ljava/lang/Object;

    :goto_2b
    new-array v4, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v3

    iget-object v1, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Lcom/a/b/c;

    aput-object v1, v4, v9

    iget-object v1, p0, Lcom/a/b/a;->l:Ljava/lang/String;

    sget-object v5, Lcom/a/b/a;->A:[Ljava/lang/Class;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    aput-object v8, v6, v3

    iget-object v8, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    aput-object v8, v6, v2

    iget-object v8, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    aput-object v8, v6, v9

    invoke-static/range {v0 .. v6}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/a/b/a;->d:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->h()[B

    move-result-object v0

    if-eqz v0, :cond_7a

    :try_start_5e
    iget-object v1, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v1}, Lcom/a/b/c;->i()I

    move-result v1

    if-ne v1, v2, :cond_7a

    invoke-virtual {p0}, Lcom/a/b/a;->c()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v2}, Lcom/a/b/c;->e()Z

    move-result v2

    if-nez v2, :cond_ae

    iget-object v2, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/b/a;->b:Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_76} :catch_a9

    if-eqz v1, :cond_7a

    if-nez v0, :cond_a5

    :cond_7a
    :goto_7a
    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0, v7}, Lcom/a/b/c;->a([B)Lcom/a/b/c;

    :cond_7f
    iget-boolean v0, p0, Lcom/a/b/a;->C:Z

    if-eqz v0, :cond_88

    monitor-enter p0

    :try_start_84
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_bb

    :goto_87
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_b8

    :cond_88
    invoke-static {}, Lcom/a/c/a;->a()V

    return-void

    :cond_8c
    move v0, v2

    goto :goto_1f

    :cond_8e
    iget-object v0, p0, Lcom/a/b/a;->j:Ljava/lang/ref/Reference;

    if-nez v0, :cond_94

    move-object v0, v7

    goto :goto_2b

    :cond_94
    iget-object v0, p0, Lcom/a/b/a;->j:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    :cond_9b
    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {p0, v0, v1, v3}, Lcom/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/a/b/c;)V

    goto :goto_4e

    :cond_a5
    :try_start_a5
    invoke-static {v1, v0}, Lcom/a/c/a;->a(Ljava/io/File;[B)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_7a

    :catch_a9
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_ae
    :try_start_ae
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b7} :catch_a9

    goto :goto_7a

    :catchall_b8
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_bb
    move-exception v0

    goto :goto_87
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    goto :goto_8
.end method

.method private h()V
    .registers 7

    iget-object v1, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/b/a;->o:Ljava/util/Map;

    if-nez v0, :cond_5d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_5d

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_56
    invoke-static {v1}, Lcom/a/b/a;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :cond_5d
    iget-object v2, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    :cond_63
    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/a/b/a;->p:Ljava/util/Map;

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const-string v3, "get"

    invoke-static {v3, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\|"

    const-string v4, "%7C"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/a/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/a/b/c;)V

    :goto_86
    return-void

    :cond_87
    invoke-static {v0}, Lcom/a/b/a;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_95

    iget-object v2, p0, Lcom/a/b/a;->p:Ljava/util/Map;

    iget-object v3, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/a/b/a;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/a/b/c;)V

    goto :goto_86

    :cond_95
    iget-object v2, p0, Lcom/a/b/a;->p:Ljava/util/Map;

    iget-object v3, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/a/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/a/b/c;)V

    goto :goto_86
.end method

.method private i()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/a/b/a;->e:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0}, Lcom/a/b/a;->f()V

    iput-object v2, p0, Lcom/a/b/a;->j:Ljava/lang/ref/Reference;

    iput-object v2, p0, Lcom/a/b/a;->k:Ljava/lang/Object;

    iput-object v2, p0, Lcom/a/b/a;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private j()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/a/b/a;->q:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/b/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/a/b/a;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/b/a;->q:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/a/b/a;->v:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-static {p1, p2}, Lcom/a/c/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-wide v2, p0, Lcom/a/b/a;->v:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/a/b/a;->v:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    :cond_25
    move-object v0, v1

    goto :goto_9
.end method

.method public final a()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/a;->d:Z

    return-object p0
.end method

.method public final a(Lcom/a/a/a;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    return-object p0
.end method

.method public final a(Lcom/a/b/e;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/a/b/a;->r:Lcom/a/b/e;

    return-object p0
.end method

.method protected a(Ljava/io/File;Lcom/a/b/c;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/a/b/a;->a([BLcom/a/b/c;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/b/a;->m:Ljava/lang/ref/WeakReference;

    :cond_9
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method protected a([BLcom/a/b/c;)Ljava/lang/Object;
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :try_start_12
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_26

    :try_start_19
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_e2

    :goto_24
    move-object v1, v0

    goto :goto_7

    :catch_26
    move-exception v0

    move-object v2, v1

    :goto_28
    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/a/c/a;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_24

    :cond_30
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    :try_start_3a
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_4e

    :goto_4c
    move-object v1, v0

    goto :goto_7

    :catch_4e
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_4c

    :cond_54
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    :try_start_5e
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_65} :catch_67

    move-object v1, v0

    goto :goto_7

    :catch_67
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6c
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Lcom/a/c/f;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    :try_start_76
    new-instance v0, Lcom/a/c/f;

    invoke-direct {v0, p1}, Lcom/a/c/f;-><init>([B)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_7d

    move-object v1, v0

    goto :goto_7

    :catch_7d
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_82
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    move-object v1, p1

    goto/16 :goto_7

    :cond_8f
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_7

    :cond_a1
    iget-object v0, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    const-class v2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_af
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b9} :catch_bc

    move-object v1, v0

    goto/16 :goto_7

    :catch_bc
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c2
    iget-object v0, p0, Lcom/a/b/a;->r:Lcom/a/b/e;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/a/b/a;->r:Lcom/a/b/e;

    iget-object v1, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    iget-object v1, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-interface {v0}, Lcom/a/b/e;->a()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    :cond_d2
    sget-object v0, Lcom/a/b/a;->z:Lcom/a/b/e;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/a/b/a;->z:Lcom/a/b/e;

    iget-object v1, p0, Lcom/a/b/a;->i:Ljava/lang/Class;

    iget-object v1, p0, Lcom/a/b/a;->w:Ljava/lang/String;

    invoke-interface {v0}, Lcom/a/b/e;->a()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    :catch_e2
    move-exception v0

    goto/16 :goto_28
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/b/a;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/a/b/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    if-nez v0, :cond_18

    new-instance v0, Lcom/a/b/c;

    invoke-direct {v0}, Lcom/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    iget-object v1, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/b/c;->c(Ljava/lang/String;)Lcom/a/b/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a/b/a;->u:Z

    invoke-virtual {v0, v1}, Lcom/a/b/c;->a(Z)Lcom/a/b/c;

    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/b/a;->a(Z)V

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "auth needed"

    iget-object v1, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    invoke-virtual {v0, p0}, Lcom/a/a/a;->a(Lcom/a/b/a;)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/a/b/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    iput-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/a/b/c;->a(I)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;

    invoke-direct {p0}, Lcom/a/b/a;->f()V

    goto :goto_34

    :cond_4d
    iget-boolean v0, p0, Lcom/a/b/a;->d:Z

    if-eqz v0, :cond_57

    invoke-static {p1}, Lcom/a/c/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a;->s:Ljava/io/File;

    :cond_57
    invoke-static {p0}, Lcom/a/b/a;->a(Ljava/lang/Runnable;)V

    goto :goto_34
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/a/b/c;)V
    .registers 4

    return-void
.end method

.method protected final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/a/b/a;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/a/c/c;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_f
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/a;->e:Z

    return-object p0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/a/b/a;->d:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/a/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected final c()Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/a/b/a;->s:Ljava/io/File;

    invoke-direct {p0}, Lcom/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/c/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 8

    const/4 v1, 0x0

    const/16 v6, -0x65

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_10f

    :try_start_b
    iget-boolean v0, p0, Lcom/a/b/a;->u:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/a/b/a;->d:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/a/b/a;->s:Ljava/io/File;

    invoke-direct {p0}, Lcom/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/a/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v2, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {p0, v0, v2}, Lcom/a/b/a;->a(Ljava/io/File;Lcom/a/b/c;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/a/b/c;->a(I)Lcom/a/b/c;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/a/b/c;->a(Ljava/util/Date;)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;

    :cond_44
    iget-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/a/b/c;->a(I)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;

    :cond_5b
    iget-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6e} :catch_de

    :cond_6e
    :goto_6e
    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_7d

    iget-boolean v0, p0, Lcom/a/b/a;->y:Z

    if-eqz v0, :cond_10a

    invoke-static {p0}, Lcom/a/c/a;->a(Ljava/lang/Runnable;)V

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    :try_start_7e
    invoke-direct {p0}, Lcom/a/b/a;->h()V

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-boolean v0, p0, Lcom/a/b/a;->D:Z

    if-nez v0, :cond_ac

    const-string v0, "reauth needed"

    iget-object v2, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v2}, Lcom/a/b/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/c/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/a;->D:Z

    iget-object v0, p0, Lcom/a/b/a;->t:Lcom/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-direct {p0}, Lcom/a/b/a;->h()V

    :cond_ac
    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->h()[B
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b1} :catch_f3
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_b1} :catch_de

    move-result-object v0

    move-object v1, v0

    :goto_b3
    :try_start_b3
    iget-object v0, p0, Lcom/a/b/a;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {p0, v1, v0}, Lcom/a/b/a;->a([BLcom/a/b/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_bd} :catch_105
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_bd} :catch_de

    :goto_bd
    :try_start_bd
    iget-object v0, p0, Lcom/a/b/a;->b:Ljava/lang/Object;

    if-nez v0, :cond_d0

    if-eqz v1, :cond_d0

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v0

    const-string v1, "transform error"

    invoke-virtual {v0, v1}, Lcom/a/b/c;->b(Ljava/lang/String;)Lcom/a/b/c;

    :cond_d0
    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->f()I

    move-result v0

    sput v0, Lcom/a/b/a;->H:I

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_dd} :catch_de

    goto :goto_6e

    :catch_de
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0, v6}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c;->b()Lcom/a/b/c;

    goto :goto_6e

    :cond_ec
    :try_start_ec
    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    invoke-virtual {v0}, Lcom/a/b/c;->a()Lcom/a/b/c;
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f1} :catch_f3
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f1} :catch_de

    goto/16 :goto_6e

    :catch_f3
    move-exception v0

    :try_start_f4
    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/a/b/a;->c:Lcom/a/b/c;

    const/16 v2, -0x65

    invoke-virtual {v0, v2}, Lcom/a/b/c;->b(I)Lcom/a/b/c;

    move-result-object v0

    const-string v2, "network error"

    invoke-virtual {v0, v2}, Lcom/a/b/c;->b(Ljava/lang/String;)Lcom/a/b/c;

    goto :goto_b3

    :catch_105
    move-exception v0

    invoke-static {v0}, Lcom/a/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_109} :catch_de

    goto :goto_bd

    :cond_10a
    invoke-direct {p0}, Lcom/a/b/a;->i()V

    goto/16 :goto_7d

    :cond_10f
    invoke-direct {p0}, Lcom/a/b/a;->i()V

    goto/16 :goto_7d
.end method
