.class Lcom/google/googlenav/settings/s;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aW;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/settings/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/q;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/settings/q;

    iput-boolean p2, p0, Lcom/google/googlenav/settings/s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/t;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/t;-><init>(Lcom/google/googlenav/settings/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/u;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/u;-><init>(Lcom/google/googlenav/settings/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
