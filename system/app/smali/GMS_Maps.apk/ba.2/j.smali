.class public Lba/j;
.super Lba/a;


# instance fields
.field private c:[Lcom/google/googlenav/e;


# direct methods
.method public constructor <init>(LaY/i;)V
    .registers 2

    invoke-direct {p0, p1}, Lba/a;-><init>(LaY/i;)V

    return-void
.end method

.method private a(Z)Lcom/google/googlenav/e;
    .registers 4

    iget-object v0, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_9
    aget-object v0, v1, v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(Lcom/google/googlenav/D;)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lba/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/googlenav/e;->e()I

    move-result v0

    :cond_b
    return v0
.end method

.method public a()Z
    .registers 9

    const/16 v7, 0xf

    const/16 v6, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lba/a;->a()Z

    move-result v2

    iget-object v3, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    iget-object v4, p0, Lba/j;->b:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bw;->ae()[[Lcom/google/googlenav/e;

    move-result-object v4

    iget-object v5, p0, Lba/j;->a:LaY/i;

    invoke-virtual {v5}, LaY/i;->ay()LaJ/Y;

    move-result-object v5

    invoke-virtual {v5}, LaJ/Y;->a()I

    move-result v5

    if-ge v5, v6, :cond_2a

    aget-object v4, v4, v0

    iput-object v4, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    :goto_22
    if-nez v2, :cond_28

    iget-object v2, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    if-eq v3, v2, :cond_29

    :cond_28
    move v0, v1

    :cond_29
    return v0

    :cond_2a
    if-lt v5, v6, :cond_33

    if-ge v5, v7, :cond_33

    aget-object v4, v4, v1

    iput-object v4, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22

    :cond_33
    if-lt v5, v7, :cond_3f

    const/16 v6, 0x13

    if-ge v5, v6, :cond_3f

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iput-object v4, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22

    :cond_3f
    const/4 v5, 0x3

    aget-object v4, v4, v5

    iput-object v4, p0, Lba/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22
.end method

.method public b(Lcom/google/googlenav/D;)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lba/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :cond_b
    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 3

    iget-object v0, p0, Lba/j;->a:LaY/i;

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lba/j;->a(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lba/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
