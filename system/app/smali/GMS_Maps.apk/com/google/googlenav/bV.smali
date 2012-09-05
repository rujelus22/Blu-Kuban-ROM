.class public Lcom/google/googlenav/bV;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/google/googlenav/bP;

.field private final c:Z

.field private d:Lcom/google/googlenav/bS;

.field private e:Ljava/lang/String;

.field private f:[Lcom/google/googlenav/bN;

.field private g:Z


# direct methods
.method public constructor <init>(Lam/b;Lcom/google/googlenav/bS;)V
    .registers 14

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v8}, Lam/b;->l(I)I

    move-result v4

    new-array v0, v4, [Lcom/google/googlenav/bP;

    iput-object v0, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    move v3, v2

    move v0, v2

    :goto_12
    if-ge v3, v4, :cond_2f

    iget-object v5, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    new-instance v6, Lcom/google/googlenav/bP;

    invoke-virtual {p1, v8, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/googlenav/bP;-><init>(Lam/b;)V

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/googlenav/bP;->a(Lcom/google/googlenav/bP;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v0, v1

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_2f
    iput-boolean v0, p0, Lcom/google/googlenav/bV;->c:Z

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bV;->a:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p1, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_41
    iput-object v0, p0, Lcom/google/googlenav/bV;->e:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lam/b;->l(I)I

    move-result v1

    new-array v0, v1, [Lcom/google/googlenav/bN;

    iput-object v0, p0, Lcom/google/googlenav/bV;->f:[Lcom/google/googlenav/bN;

    move v0, v2

    :goto_4c
    if-ge v0, v1, :cond_62

    iget-object v2, p0, Lcom/google/googlenav/bV;->f:[Lcom/google/googlenav/bN;

    new-instance v3, Lcom/google/googlenav/bN;

    invoke-virtual {p1, v10, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    sget-object v5, LbD/gH;->b:Lam/e;

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/bN;-><init>(Lam/b;Lam/e;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_60
    const/4 v0, 0x0

    goto :goto_41

    :cond_62
    iput-object p2, p0, Lcom/google/googlenav/bV;->d:Lcom/google/googlenav/bS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/googlenav/bP;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bV;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    iput-boolean p3, p0, Lcom/google/googlenav/bV;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bV;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bV;->c:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/bP;
    .registers 6

    iget-object v2, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bP;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(I)Lcom/google/googlenav/bP;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/bV;->a()Lcom/google/googlenav/bP;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {v0}, Lcom/google/googlenav/bP;->f()J

    move-result-wide v0

    goto :goto_8
.end method

.method public c()Lcom/google/googlenav/bP;
    .registers 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/googlenav/bV;->c:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v3, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v4, :cond_5

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/google/googlenav/bP;->a()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v1}, Lcom/google/googlenav/bP;->b()Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v0, v1

    goto :goto_5

    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_b
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bV;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bV;->b:[Lcom/google/googlenav/bP;

    array-length v0, v0

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bV;->c:Z

    return v0
.end method

.method public g()Lcom/google/googlenav/bS;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bV;->d:Lcom/google/googlenav/bS;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bV;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bV;->g:Z

    return-void
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bV;->g:Z

    return v0
.end method
