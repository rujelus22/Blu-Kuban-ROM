.class LJp;
.super Ljava/lang/Object;
.source "Api7DefaultHttpIssuer.java"

# interfaces
.implements LJL;


# instance fields
.field private final a:LJl;

.field final synthetic a:LJo;


# direct methods
.method constructor <init>(LJo;)V
    .registers 4
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, LJp;->a:LJo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p0, LJp;->a:LJo;

    invoke-static {v0}, LJo;->a(LJo;)LJP;

    move-result-object v0

    invoke-interface {v0}, LJP;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, LJp;->a:LJo;

    invoke-static {v0}, LJo;->a(LJo;)LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, LJl;->a(Ljava/lang/String;Landroid/content/Context;)LJl;

    move-result-object v0

    iput-object v0, p0, LJp;->a:LJl;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, LJp;->a:LJl;

    invoke-virtual {v0, p1}, LJl;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/apache/http/params/HttpParams;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, LJp;->a:LJl;

    invoke-virtual {v0}, LJl;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LJp;->a:LJl;

    invoke-virtual {v0}, LJl;->a()V

    .line 59
    return-void
.end method
