.class public LaO/l;
.super LaO/a;
.source "SourceFile"


# instance fields
.field private c:Lcom/google/googlenav/e;


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 28
    return-void
.end method

.method private b()Lcom/google/googlenav/e;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, LaO/l;->c:Lcom/google/googlenav/e;

    if-nez v0, :cond_1f

    .line 56
    iget-object v0, p0, LaO/l;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->D()LS/g;

    move-result-object v0

    .line 57
    sget-char v1, Lcom/google/googlenav/ui/bn;->bo:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/e;->a(LS/f;)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, LaO/l;->c:Lcom/google/googlenav/e;

    .line 59
    iget-object v0, p0, LaO/l;->c:Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/e;->a(Z)V

    .line 62
    :cond_1f
    iget-object v0, p0, LaO/l;->c:Lcom/google/googlenav/e;

    return-object v0
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, LaO/l;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Y;

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/googlenav/Y;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 35
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    if-nez v2, :cond_1f

    :cond_1d
    move-object v0, v1

    .line 50
    :goto_1e
    return-object v0

    .line 41
    :cond_1f
    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->a(B)V

    .line 46
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 47
    invoke-direct {p0}, LaO/l;->b()Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_1e

    :cond_2f
    move-object v0, v1

    .line 50
    goto :goto_1e
.end method
