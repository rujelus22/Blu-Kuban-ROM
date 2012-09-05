.class Lcom/google/googlenav/settings/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/s;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/u;->a:Lcom/google/googlenav/settings/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/u;->a:Lcom/google/googlenav/settings/s;

    iget-object v0, v0, Lcom/google/googlenav/settings/s;->b:Lcom/google/googlenav/settings/q;

    invoke-static {v0}, Lcom/google/googlenav/settings/q;->a(Lcom/google/googlenav/settings/q;)Lcom/google/googlenav/settings/A;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/u;->a:Lcom/google/googlenav/settings/s;

    iget-boolean v1, v1, Lcom/google/googlenav/settings/s;->a:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/A;->b(Z)V

    return-void
.end method
