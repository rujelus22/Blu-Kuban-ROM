.class Lcom/google/googlenav/friend/history/C;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/history/G;

.field final synthetic b:Lcom/google/googlenav/friend/history/b;

.field final synthetic f:Lcom/google/googlenav/friend/history/b;

.field final synthetic g:Lcom/google/googlenav/friend/history/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/w;LY/c;Lcom/google/googlenav/friend/history/G;Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/googlenav/friend/history/C;->g:Lcom/google/googlenav/friend/history/w;

    iput-object p3, p0, Lcom/google/googlenav/friend/history/C;->a:Lcom/google/googlenav/friend/history/G;

    iput-object p4, p0, Lcom/google/googlenav/friend/history/C;->b:Lcom/google/googlenav/friend/history/b;

    iput-object p5, p0, Lcom/google/googlenav/friend/history/C;->f:Lcom/google/googlenav/friend/history/b;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/googlenav/friend/history/C;->g:Lcom/google/googlenav/friend/history/w;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->b(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v0

    if-nez v0, :cond_26

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/friend/history/C;->g:Lcom/google/googlenav/friend/history/w;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->c(Lcom/google/googlenav/friend/history/w;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    new-instance v1, Lcom/google/googlenav/friend/history/D;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/history/D;-><init>(Lcom/google/googlenav/friend/history/C;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    :goto_25
    return-void

    .line 269
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/friend/history/C;->g:Lcom/google/googlenav/friend/history/w;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/w;->b(Lcom/google/googlenav/friend/history/w;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/reporting/s;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/google/googlenav/friend/au;->l()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 275
    :cond_38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 276
    new-instance v1, Lcom/google/googlenav/friend/history/E;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/history/E;-><init>(Lcom/google/googlenav/friend/history/C;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25

    .line 286
    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/friend/history/C;->g:Lcom/google/googlenav/friend/history/w;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/C;->b:Lcom/google/googlenav/friend/history/b;

    iget-object v2, p0, Lcom/google/googlenav/friend/history/C;->f:Lcom/google/googlenav/friend/history/b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/history/w;->a(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;Z)Ljava/util/List;

    move-result-object v0

    .line 289
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    new-instance v2, Lcom/google/googlenav/friend/history/F;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/friend/history/F;-><init>(Lcom/google/googlenav/friend/history/C;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_25
.end method
