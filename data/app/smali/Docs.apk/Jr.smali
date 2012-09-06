.class LJr;
.super Ljava/lang/Object;
.source "DefaultHttpIssuer.java"

# interfaces
.implements LJL;


# instance fields
.field final synthetic a:LJq;

.field private final a:Landroid/net/http/AndroidHttpClient;


# direct methods
.method constructor <init>(LJq;)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, LJr;->a:LJq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p0, LJr;->a:LJq;

    invoke-static {v0}, LJq;->a(LJq;)LJP;

    move-result-object v0

    invoke-interface {v0}, LJP;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LJr;->a:LJq;

    invoke-static {v0}, LJq;->a(LJq;)LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, LJr;->a:Landroid/net/http/AndroidHttpClient;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LJr;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, LJr;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LJr;->a:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 60
    return-void
.end method
