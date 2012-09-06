.class LaM/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/bk;


# direct methods
.method constructor <init>(LaM/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, LaM/bl;->a:LaM/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 628
    iget-object v0, p0, LaM/bl;->a:LaM/bk;

    iget-object v0, v0, LaM/bk;->a:Lcom/google/googlenav/aW;

    iget-object v1, p0, LaM/bl;->a:LaM/bk;

    iget-object v1, v1, LaM/bk;->c:LaM/bj;

    invoke-static {v1}, LaM/bj;->a(LaM/bj;)LO/b;

    move-result-object v1

    invoke-virtual {v1}, LO/b;->i()[Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;)V

    .line 629
    const/4 v0, 0x1

    .line 630
    iget-object v1, p0, LaM/bl;->a:LaM/bk;

    iget-object v1, v1, LaM/bk;->c:LaM/bj;

    iget-object v2, p0, LaM/bl;->a:LaM/bk;

    iget-object v2, v2, LaM/bk;->a:Lcom/google/googlenav/aW;

    iget-object v3, p0, LaM/bl;->a:LaM/bk;

    iget-boolean v3, v3, LaM/bk;->b:Z

    invoke-static {v1, v2, v3, v0}, LaM/bj;->a(LaM/bj;Lcom/google/googlenav/aW;ZZ)V

    .line 631
    iget-object v0, p0, LaM/bl;->a:LaM/bk;

    iget-object v0, v0, LaM/bk;->c:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->R()V

    .line 632
    iget-object v0, p0, LaM/bl;->a:LaM/bk;

    iget-object v0, v0, LaM/bk;->c:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->j()V

    .line 633
    return-void
.end method
