.class final Lax/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/aX;)V
    .registers 2

    iput-object p1, p0, Lax/t;->a:Lcom/google/googlenav/aX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aV;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Lax/r;->a(Z)V

    iget-object v0, p0, Lax/t;->a:Lcom/google/googlenav/aX;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lax/t;->a:Lcom/google/googlenav/aX;

    invoke-interface {v0, p1, p2}, Lcom/google/googlenav/aX;->a(Lcom/google/googlenav/aV;Z)V

    :cond_d
    return-void
.end method

.method public b(Lcom/google/googlenav/aV;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lax/r;->a(Z)V

    iget-object v0, p0, Lax/t;->a:Lcom/google/googlenav/aX;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lax/t;->a:Lcom/google/googlenav/aX;

    invoke-interface {v0, p1}, Lcom/google/googlenav/aX;->b(Lcom/google/googlenav/aV;)V

    :cond_d
    return-void
.end method
