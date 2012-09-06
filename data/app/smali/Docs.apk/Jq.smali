.class public LJq;
.super LJI;
.source "DefaultHttpIssuer.java"


# annotations
.annotation runtime LanN;
.end annotation


# instance fields
.field private final a:LJP;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LJP;LanD;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LJP;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, LJI;-><init>()V

    .line 37
    iput-object p1, p0, LJq;->a:LJP;

    .line 38
    iput-object p2, p0, LJq;->a:LanD;

    .line 39
    return-void
.end method

.method static synthetic a(LJq;)LJP;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LJq;->a:LJP;

    return-object v0
.end method

.method static synthetic a(LJq;)LanD;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, LJq;->a:LanD;

    return-object v0
.end method


# virtual methods
.method protected a()LJL;
    .registers 2

    .prologue
    .line 43
    new-instance v0, LJr;

    invoke-direct {v0, p0}, LJr;-><init>(LJq;)V

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/apache/http/HttpRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 67
    return-void
.end method
