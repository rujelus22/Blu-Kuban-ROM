.class public LaO/e;
.super LaO/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, LaO/a;-><init>(LaM/i;)V

    .line 21
    return-void
.end method


# virtual methods
.method public b(I)Lcom/google/googlenav/e;
    .registers 10
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LaO/e;->a:LaM/i;

    check-cast v0, LaM/X;

    .line 29
    invoke-virtual {v0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v6

    .line 30
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v1

    if-nez v1, :cond_16

    .line 31
    :cond_14
    const/4 v0, 0x0

    .line 49
    :goto_15
    return-object v0

    .line 34
    :cond_16
    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->z()C

    move-result v3

    .line 36
    invoke-virtual {v0}, LaM/X;->bA()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->a()Lah/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/friend/E;

    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    sget v4, Lcom/google/googlenav/ui/bn;->bq:I

    invoke-direct {v1, v2, v4}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v0, v1}, Lah/a;->a(Lcom/google/googlenav/ui/friend/E;)LS/f;

    move-result-object v4

    .line 42
    invoke-virtual {p0, p1}, LaO/e;->a(I)Z

    move-result v5

    .line 43
    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v0

    if-eqz v0, :cond_4c

    if-eqz v4, :cond_4c

    .line 45
    iget-object v0, p0, LaO/e;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/bn;->a(JCLS/f;Z)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_15

    .line 48
    :cond_4c
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, LaO/e;->b:Lcom/google/googlenav/ui/bn;

    int-to-long v1, v1

    iget-object v4, p0, LaO/e;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v6}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v6

    sget v7, Lcom/google/googlenav/ui/bn;->bq:I

    invoke-virtual {v4, v6, v7}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/bn;->a(JCLS/f;Z)Lcom/google/googlenav/e;

    move-result-object v0

    goto :goto_15
.end method
