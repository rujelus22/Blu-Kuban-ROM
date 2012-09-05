.class public Lu/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;

.field private final b:Lam/b;

.field private c:[Lu/P;

.field private d:Lu/g;


# direct methods
.method private constructor <init>(Lam/b;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lu/a;-><init>(Lam/b;Lam/b;)V

    return-void
.end method

.method private constructor <init>(Lam/b;Lam/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/a;->b:Lam/b;

    iput-object p2, p0, Lu/a;->a:Lam/b;

    return-void
.end method

.method private constructor <init>(Lu/g;)V
    .registers 4

    invoke-virtual {p1}, Lu/g;->s()Lam/b;

    move-result-object v0

    invoke-virtual {p1}, Lu/g;->q()Lam/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lu/a;-><init>(Lam/b;Lam/b;)V

    iput-object p1, p0, Lu/a;->d:Lu/g;

    return-void
.end method

.method public static a(Lam/b;)Lu/a;
    .registers 2

    new-instance v0, Lu/a;

    invoke-direct {v0, p0}, Lu/a;-><init>(Lam/b;)V

    return-object v0
.end method

.method public static a(Lu/g;)Lu/a;
    .registers 2

    new-instance v0, Lu/a;

    invoke-direct {v0, p0}, Lu/a;-><init>(Lu/g;)V

    return-object v0
.end method


# virtual methods
.method public a()Lu/g;
    .registers 3

    iget-object v0, p0, Lu/a;->d:Lu/g;

    if-nez v0, :cond_22

    iget-object v0, p0, Lu/a;->b:Lam/b;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lu/i;

    iget-object v1, p0, Lu/a;->b:Lam/b;

    invoke-direct {v0, v1}, Lu/i;-><init>(Lam/b;)V

    invoke-virtual {v0}, Lu/i;->a()Lu/g;

    move-result-object v0

    iput-object v0, p0, Lu/a;->d:Lu/g;

    iget-object v0, p0, Lu/a;->a:Lam/b;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lu/a;->d:Lu/g;

    iget-object v1, p0, Lu/a;->a:Lam/b;

    invoke-virtual {v0, v1}, Lu/g;->a(Lam/b;)V

    :cond_22
    iget-object v0, p0, Lu/a;->d:Lu/g;

    goto :goto_9
.end method

.method public a([Lu/P;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lu/a;->d()[Lu/P;

    aget-object v1, p1, v0

    iget-object v2, p0, Lu/a;->c:[Lu/P;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lu/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget-object v2, p0, Lu/a;->c:[Lu/P;

    iget-object v3, p0, Lu/a;->c:[Lu/P;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lu/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public b()Lam/b;
    .registers 2

    iget-object v0, p0, Lu/a;->b:Lam/b;

    return-object v0
.end method

.method public c()Lam/b;
    .registers 2

    iget-object v0, p0, Lu/a;->a:Lam/b;

    return-object v0
.end method

.method public d()[Lu/P;
    .registers 8

    const/4 v6, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lu/a;->c:[Lu/P;

    if-nez v1, :cond_2c

    iget-object v1, p0, Lu/a;->b:Lam/b;

    if-nez v1, :cond_d

    new-array v0, v0, [Lu/P;

    :goto_c
    return-object v0

    :cond_d
    iget-object v1, p0, Lu/a;->b:Lam/b;

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v1

    new-array v2, v1, [Lu/P;

    iput-object v2, p0, Lu/a;->c:[Lu/P;

    :goto_17
    if-ge v0, v1, :cond_2c

    iget-object v2, p0, Lu/a;->b:Lam/b;

    invoke-virtual {v2, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lu/a;->c:[Lu/P;

    new-instance v4, Lu/P;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2c
    iget-object v0, p0, Lu/a;->c:[Lu/P;

    goto :goto_c
.end method
