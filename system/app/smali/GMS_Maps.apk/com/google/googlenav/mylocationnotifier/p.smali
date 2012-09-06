.class Lcom/google/googlenav/mylocationnotifier/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/actionbar/b;


# instance fields
.field final synthetic a:Lcom/google/googlenav/mylocationnotifier/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/mylocationnotifier/l;)V
    .registers 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/googlenav/bc;
    .registers 3
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public a(LaI/w;)Z
    .registers 3
    .parameter

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    .line 223
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    .line 206
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->e()V

    .line 208
    const/4 v0, 0x0

    .line 209
    new-instance v1, Lcom/google/googlenav/mylocationnotifier/i;

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/googlenav/mylocationnotifier/i;-><init>(Lcom/google/googlenav/mylocationnotifier/k;ZLjava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lcom/google/googlenav/mylocationnotifier/a;)V

    .line 212
    iget-object v0, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v0, v0, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    iget-object v1, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v1, v1, Lcom/google/googlenav/mylocationnotifier/l;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->q()Lan/h;

    move-result-object v1

    invoke-interface {v1}, Lan/h;->m()Lan/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/mylocationnotifier/p;->a:Lcom/google/googlenav/mylocationnotifier/l;

    iget-object v2, v2, Lcom/google/googlenav/mylocationnotifier/l;->b:Lcom/google/googlenav/mylocationnotifier/k;

    const-string v3, "s"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/googlenav/mylocationnotifier/k;->a(Lan/s;Ljava/lang/String;Lcom/google/googlenav/friend/bh;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method
