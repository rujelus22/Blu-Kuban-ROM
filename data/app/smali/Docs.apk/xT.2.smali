.class LxT;
.super Ljava/lang/Object;
.source "KixJSVM.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LxR;


# direct methods
.method constructor <init>(LxR;)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, LxT;->a:LxR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 289
    iget-object v0, p0, LxT;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    #getter for: LxQ;->b:Z
    invoke-static {v0}, LxQ;->access$300(LxQ;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 290
    const-string v0, "Model"

    const-string v1, "Failed loading the JS Binary"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, LxT;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    #getter for: LxQ;->a:LdE;
    invoke-static {v0}, LxQ;->access$800(LxQ;)LdE;

    move-result-object v0

    const-string v1, "kixEditor"

    const-string v2, "kixJsLoadFailure"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    iget-object v0, p0, LxT;->a:LxR;

    iget-object v0, v0, LxR;->a:LxQ;

    #getter for: LxQ;->a:LxX;
    invoke-static {v0}, LxQ;->access$1200(LxQ;)LxX;

    move-result-object v0

    invoke-interface {v0}, LxX;->a()V

    .line 297
    :goto_2d
    return-void

    .line 295
    :cond_2e
    const-string v0, "Model"

    const-string v1, "Ignoring JS fetching error as JSVM already deleted."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
