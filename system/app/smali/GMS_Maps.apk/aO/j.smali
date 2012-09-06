.class public LaO/j;
.super LaO/a;
.source "SourceFile"


# instance fields
.field private c:[Lcom/google/googlenav/e;


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

.method private a(Z)Lcom/google/googlenav/e;
    .registers 4
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    if-eqz v0, :cond_e

    .line 78
    iget-object v1, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_9
    aget-object v0, v1, v0

    .line 80
    :goto_b
    return-object v0

    .line 78
    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    .line 80
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public a(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, LaO/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/googlenav/e;->e()I

    move-result v0

    :cond_b
    return v0
.end method

.method public a()Z
    .registers 9

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xc

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-super {p0}, LaO/a;->a()Z

    move-result v2

    .line 58
    iget-object v3, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    .line 59
    iget-object v4, p0, LaO/j;->b:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/bn;->V()[[Lcom/google/googlenav/e;

    move-result-object v4

    .line 61
    iget-object v5, p0, LaO/j;->a:LaM/i;

    invoke-virtual {v5}, LaM/i;->aw()Lat/Y;

    move-result-object v5

    invoke-virtual {v5}, Lat/Y;->a()I

    move-result v5

    .line 62
    if-ge v5, v6, :cond_2a

    .line 63
    aget-object v4, v4, v0

    iput-object v4, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    .line 72
    :goto_22
    if-nez v2, :cond_28

    iget-object v2, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    if-eq v3, v2, :cond_29

    :cond_28
    move v0, v1

    :cond_29
    return v0

    .line 64
    :cond_2a
    if-lt v5, v6, :cond_33

    if-ge v5, v7, :cond_33

    .line 65
    aget-object v4, v4, v1

    iput-object v4, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22

    .line 66
    :cond_33
    if-lt v5, v7, :cond_3f

    const/16 v6, 0x13

    if-ge v5, v6, :cond_3f

    .line 67
    const/4 v5, 0x2

    aget-object v4, v4, v5

    iput-object v4, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22

    .line 69
    :cond_3f
    const/4 v5, 0x3

    aget-object v4, v4, v5

    iput-object v4, p0, LaO/j;->c:[Lcom/google/googlenav/e;

    goto :goto_22
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, LaO/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/googlenav/e;->f()I

    move-result v0

    :cond_b
    return v0
.end method

.method public b(I)Lcom/google/googlenav/e;
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LaO/j;->a:LaM/i;

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, LaO/j;->a(I)Z

    move-result v0

    invoke-direct {p0, v0}, LaO/j;->a(Z)Lcom/google/googlenav/e;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
