.class public Lba/k;
.super Lba/i;


# instance fields
.field private c:Lcom/google/googlenav/e;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/i;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 7

    const/4 v3, 0x3

    iget-object v0, p0, Lba/k;->c:Lcom/google/googlenav/e;

    if-nez v0, :cond_4d

    iget-object v0, p0, Lba/k;->a:LaY/i;

    check-cast v0, LaY/aV;

    invoke-virtual {v0}, LaY/aV;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Laf/b;->c(I)I

    move-result v1

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Laf/b;->c(I)I

    move-result v2

    iget-object v3, p0, Lba/k;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->H()Lah/g;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bw;->k:C

    invoke-interface {v3, v4}, Lah/g;->e(C)Lah/f;

    move-result-object v3

    invoke-static {v3}, Lah/j;->d(Lah/f;)Lah/f;

    move-result-object v3

    invoke-interface {v3}, Lah/f;->c()Lah/e;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v0

    invoke-interface {v4, v0, v1, v2}, Lah/e;->a(Lah/f;II)V

    invoke-interface {v3}, Lah/f;->a()I

    move-result v0

    invoke-interface {v3}, Lah/f;->b()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/e;->a(Lah/f;II)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lba/k;->c:Lcom/google/googlenav/e;

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lba/k;->c:Lcom/google/googlenav/e;

    return-object v0

    :cond_50
    invoke-super {p0, p1}, Lba/i;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    iput-object v0, p0, Lba/k;->c:Lcom/google/googlenav/e;

    goto :goto_4d
.end method
