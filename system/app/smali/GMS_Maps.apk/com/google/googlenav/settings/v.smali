.class Lcom/google/googlenav/settings/v;
.super Ljava/lang/Object;

# interfaces
.implements Lax/l;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/v;->a:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->b(Lcom/google/googlenav/settings/q;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/w;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/w;-><init>(Lcom/google/googlenav/settings/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
