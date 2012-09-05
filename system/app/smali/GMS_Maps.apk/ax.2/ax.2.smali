.class Lax/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final a:Lcom/google/googlenav/ui/wizard/aX;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lax/av;


# direct methods
.method constructor <init>(Lax/av;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lax/ax;->c:Lax/av;

    iput-object p2, p0, Lax/ax;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lax/ax;->a:Lcom/google/googlenav/ui/wizard/aX;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lax/ax;->c:Lax/av;

    iget-object v0, v0, Lax/av;->b:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v1, Lax/ay;

    invoke-direct {v1, p0}, Lax/ay;-><init>(Lax/ax;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(Lcom/google/googlenav/ui/wizard/bN;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "gr"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/ax;->c:Lax/av;

    iget-object v1, v1, Lax/av;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public c(Z)V
    .registers 5

    const/16 v0, 0x5b

    const-string v1, "gpo"

    const-string v2, "gc"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    iget-object v1, p0, Lax/ax;->c:Lax/av;

    iget-object v1, v1, Lax/av;->d:Lax/bq;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method
