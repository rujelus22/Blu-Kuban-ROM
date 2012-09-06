.class LrE;
.super Ljava/lang/Object;
.source "UrlLoadingWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LrB;


# direct methods
.method constructor <init>(LrB;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, LrE;->a:LrB;

    iput-object p2, p0, LrE;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, LrE;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)Lrz;

    move-result-object v0

    invoke-interface {v0}, Lrz;->a()LrA;

    move-result-object v0

    if-nez v0, :cond_d

    .line 484
    :goto_c
    return-void

    .line 481
    :cond_d
    iget-object v0, p0, LrE;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)Lrz;

    move-result-object v0

    iget-object v1, p0, LrE;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lrz;->b(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, LrE;->a:LrB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LrB;->a(LrB;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    iget-object v0, p0, LrE;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)V

    goto :goto_c
.end method
