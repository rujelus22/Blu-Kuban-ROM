.class LrC;
.super Ljava/lang/Object;
.source "UrlLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LrB;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(LrB;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, LrC;->a:LrB;

    iput-object p2, p0, LrC;->a:Ljava/lang/String;

    iput-object p3, p0, LrC;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, LrC;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)Lrz;

    move-result-object v0

    invoke-interface {v0}, Lrz;->a()LrA;

    move-result-object v0

    if-nez v0, :cond_d

    .line 418
    :goto_c
    return-void

    .line 412
    :cond_d
    iget-object v0, p0, LrC;->a:LrB;

    iget-object v1, p0, LrC;->a:Ljava/lang/String;

    invoke-static {v0, v1}, LrB;->a(LrB;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    iget-object v0, p0, LrC;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)Lrz;

    move-result-object v0

    iget-object v1, p0, LrC;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lrz;->a(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, LrC;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)V

    .line 417
    iget-object v0, p0, LrC;->a:LrB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LrB;->a(LrB;Z)Z

    goto :goto_c
.end method
