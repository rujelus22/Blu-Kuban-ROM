.class LaM/bW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, LaM/bW;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 209
    new-instance v0, Lcom/google/googlenav/aa;

    iget-object v1, p0, LaM/bW;->a:LaM/bU;

    invoke-static {v1}, LaM/bU;->a(LaM/bU;)Lad/y;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/aa;-><init>(Lad/y;)V

    .line 210
    iget-object v1, p0, LaM/bW;->a:LaM/bU;

    invoke-static {v1}, LaM/bU;->b(LaM/bU;)Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aa;->a(Lad/y;)V

    .line 211
    iget-object v1, p0, LaM/bW;->a:LaM/bU;

    invoke-static {v1, v0}, LaM/bU;->a(LaM/bU;Lcom/google/googlenav/aa;)V

    .line 213
    const-wide/16 v1, 0xbb8

    :try_start_1b
    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/aa;->a(J)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_4b

    move-result v1

    if-nez v1, :cond_22

    .line 240
    :cond_21
    :goto_21
    return-void

    .line 220
    :cond_22
    invoke-virtual {v0}, Lcom/google/googlenav/aa;->l()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->k()Ljava/util/ArrayList;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/google/googlenav/aa;->A_()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, LaM/bW;->a:LaM/bU;

    invoke-static {v0}, LaM/bU;->c(LaM/bU;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 225
    iget-object v0, p0, LaM/bW;->a:LaM/bU;

    invoke-static {v0}, LaM/bU;->e(LaM/bU;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, LaM/bX;

    invoke-direct {v2, p0, v1}, LaM/bX;-><init>(LaM/bW;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 216
    :catch_4b
    move-exception v0

    goto :goto_21
.end method
