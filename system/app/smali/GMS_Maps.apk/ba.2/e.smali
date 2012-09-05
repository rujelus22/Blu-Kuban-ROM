.class public Lba/e;
.super Lba/a;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 8

    iget-object v0, p0, Lba/e;->a:LaY/i;

    check-cast v0, LaY/K;

    invoke-virtual {v0}, LaY/K;->b()Lax/aS;

    move-result-object v1

    invoke-virtual {v1, p1}, Lax/aS;->a(I)Lax/aP;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lax/aP;->y()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v1}, Lax/aP;->C()C

    move-result v2

    invoke-virtual {v0}, LaY/K;->bD()Lay/p;

    move-result-object v0

    invoke-virtual {v0}, Lay/p;->a()Lay/a;

    move-result-object v0

    new-instance v3, LaX/j;

    invoke-virtual {v1}, Lax/aP;->q()Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bw;->bu:I

    invoke-direct {v3, v4, v5}, LaX/j;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v0, v3}, Lay/a;->a(Lcom/google/googlenav/ui/aj;)Lah/f;

    move-result-object v0

    invoke-virtual {p0, p1}, Lba/e;->a(I)Z

    move-result v3

    invoke-virtual {v1}, Lax/aP;->m()Z

    move-result v4

    if-eqz v4, :cond_44

    if-eqz v0, :cond_44

    iget-object v1, p0, Lba/e;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/bw;->a(CLah/f;Z)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_15

    :cond_44
    iget-object v0, p0, Lba/e;->b:Lcom/google/googlenav/ui/bw;

    iget-object v4, p0, Lba/e;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lax/aP;->m()Z

    move-result v1

    sget v5, Lcom/google/googlenav/ui/bw;->bu:I

    invoke-virtual {v4, v1, v5}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/ui/bw;->a(CLah/f;Z)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_15
.end method
