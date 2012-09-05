.class Lcom/google/googlenav/ui/view/dialog/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/K;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/K;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lcom/google/googlenav/ui/view/dialog/K;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/L;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/M;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/login/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/L;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/M;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/dialog/M;-><init>(Lcom/google/googlenav/ui/view/dialog/L;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/L;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/N;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/N;-><init>(Lcom/google/googlenav/ui/view/dialog/L;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method
