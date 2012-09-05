.class Lcom/google/googlenav/settings/x;
.super Ljava/lang/Object;

# interfaces
.implements Lax/al;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/z;-><init>(Lcom/google/googlenav/settings/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/settings/x;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/y;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/settings/y;-><init>(Lcom/google/googlenav/settings/x;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
