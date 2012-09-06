.class Lcom/google/googlenav/ui/view/dialog/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/am;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/an;->b:Lcom/google/googlenav/ui/view/dialog/am;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/an;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Las/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Las/f;->e()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {}, Lcom/google/googlenav/K;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Las/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/an;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/googlenav/ui/view/dialog/ao;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/dialog/ao;-><init>(Lcom/google/googlenav/ui/view/dialog/an;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 129
    :goto_1e
    return-void

    .line 121
    :catch_1f
    move-exception v0

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/ap;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/dialog/ap;-><init>(Lcom/google/googlenav/ui/view/dialog/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method
