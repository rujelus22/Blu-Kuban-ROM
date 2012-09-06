.class public LaO/k;
.super LaO/i;
.source "SourceFile"


# instance fields
.field private c:Lcom/google/googlenav/e;


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, LaO/i;-><init>(LaM/i;)V

    .line 22
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 26
    iget-object v0, p0, LaO/k;->c:Lcom/google/googlenav/e;

    if-nez v0, :cond_4d

    .line 27
    iget-object v0, p0, LaO/k;->a:LaM/i;

    check-cast v0, LaM/bC;

    invoke-virtual {v0}, LaM/bC;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_50

    .line 29
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v1

    .line 30
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v2

    .line 31
    iget-object v3, p0, LaO/k;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bn;->y()LS/g;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bn;->k:C

    invoke-interface {v3, v4}, LS/g;->e(C)LS/f;

    move-result-object v3

    invoke-static {v3}, LS/j;->d(LS/f;)LS/f;

    move-result-object v3

    .line 33
    invoke-interface {v3}, LS/f;->c()LS/e;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    invoke-interface {v4, v0, v1, v2}, LS/e;->a(LS/f;II)V

    .line 34
    invoke-interface {v3}, LS/f;->a()I

    move-result v0

    invoke-interface {v3}, LS/f;->b()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/e;->a(LS/f;II)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, LaO/k;->c:Lcom/google/googlenav/e;

    .line 41
    :cond_4d
    :goto_4d
    iget-object v0, p0, LaO/k;->c:Lcom/google/googlenav/e;

    return-object v0

    .line 37
    :cond_50
    invoke-super {p0, p1}, LaO/i;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, LaO/k;->c:Lcom/google/googlenav/e;

    goto :goto_4d
.end method
