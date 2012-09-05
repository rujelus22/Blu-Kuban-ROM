.class Lcom/google/googlenav/ui/E;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/v;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/D;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZZ)V
    .registers 6

    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/D;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->n()V

    :cond_d
    return-void
.end method

.method public i()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/D;Z)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->X()V

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/ui/D;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->y()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/googlenav/ui/E;->a:Lcom/google/googlenav/ui/D;

    invoke-static {v0}, Lcom/google/googlenav/ui/D;->b(Lcom/google/googlenav/ui/D;)Lcom/google/googlenav/ui/bP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bP;->d()V

    :cond_23
    return-void
.end method
