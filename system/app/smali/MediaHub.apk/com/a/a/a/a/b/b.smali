.class public final Lcom/a/a/a/a/b/b;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/a/a/a/a/b/b;->a:I

    return-void
.end method

.method protected final createHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;
    .registers 3

    new-instance v0, Lcom/a/a/a/a/b/c;

    iget v1, p0, Lcom/a/a/a/a/b/b;->a:I

    invoke-direct {v0, v1}, Lcom/a/a/a/a/b/c;-><init>(I)V

    return-object v0
.end method
