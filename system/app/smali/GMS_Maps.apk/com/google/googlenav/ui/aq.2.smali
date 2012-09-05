.class Lcom/google/googlenav/ui/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/ap;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/ap;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    iget-object v1, v1, Lcom/google/googlenav/ui/ap;->c:Ljava/lang/String;

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz p1, :cond_13

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lax/be;->b(Ljava/lang/String;I)V

    :cond_13
    const-string v0, "IS_COMING_FROM_SETTINGS_PAGE"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lax/be;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    iget-object v0, v0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->e(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    iget-object v1, v1, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/ak;

    invoke-static {v1}, Lcom/google/googlenav/ui/ak;->d(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ay;->a(Lcom/google/googlenav/ui/at;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    if-eqz p1, :cond_9

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bk;)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    iget-object v0, v0, Lcom/google/googlenav/ui/ap;->d:Lcom/google/googlenav/ui/ak;

    invoke-static {v0}, Lcom/google/googlenav/ui/ak;->b(Lcom/google/googlenav/ui/ak;)V

    const/16 v0, 0x5f

    iget-object v1, p0, Lcom/google/googlenav/ui/aq;->a:Lcom/google/googlenav/ui/ap;

    iget-object v1, v1, Lcom/google/googlenav/ui/ap;->c:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/aq;->b(Z)V

    return-void
.end method
