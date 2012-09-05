.class public Lcom/android/exchange/utility/HttpRedirect;
.super Ljava/lang/Object;
.source "HttpRedirect.java"


# static fields
.field private static redirectedURI:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exchange/utility/HttpRedirect;->redirectedURI:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/net/URI;)Ljava/net/URI;
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    sput-object p0, Lcom/android/exchange/utility/HttpRedirect;->redirectedURI:Ljava/net/URI;

    return-object p0
.end method

.method public static getRedirectURI(Ljava/net/URI;)Ljava/net/URI;
    .registers 5
    .parameter "oldURI"

    .prologue
    .line 65
    const/4 v3, 0x0

    sput-object v3, Lcom/android/exchange/utility/HttpRedirect;->redirectedURI:Ljava/net/URI;

    .line 67
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 69
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 71
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lcom/android/exchange/utility/HttpRedirect$1CustomRedirectHanlder;

    invoke-direct {v2}, Lcom/android/exchange/utility/HttpRedirect$1CustomRedirectHanlder;-><init>()V

    .line 73
    .local v2, handler:Lcom/android/exchange/utility/HttpRedirect$1CustomRedirectHanlder;
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 77
    :try_start_15
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1b

    .line 85
    :goto_18
    sget-object v3, Lcom/android/exchange/utility/HttpRedirect;->redirectedURI:Ljava/net/URI;

    return-object v3

    .line 79
    :catch_1b
    move-exception v3

    goto :goto_18
.end method
