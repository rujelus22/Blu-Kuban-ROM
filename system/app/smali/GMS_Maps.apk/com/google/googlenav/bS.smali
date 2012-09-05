.class public Lcom/google/googlenav/bS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lam/b;

.field private final b:Lam/b;

.field private final c:[Lcom/google/googlenav/bV;

.field private final d:Z

.field private final e:Lcom/google/googlenav/bN;


# direct methods
.method public constructor <init>(Lam/b;Lam/b;[Lcom/google/googlenav/bV;ZLcom/google/googlenav/bN;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    iput-object p2, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    iput-object p3, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    iput-boolean p4, p0, Lcom/google/googlenav/bS;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/bS;->e:Lcom/google/googlenav/bN;

    return-void
.end method

.method public constructor <init>(Lam/b;Lcom/google/googlenav/bN;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/bV;

    iput-object v0, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    move v0, v1

    :goto_1c
    iget-object v3, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    new-instance v4, Lcom/google/googlenav/bV;

    invoke-virtual {p1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/google/googlenav/bV;-><init>(Lam/b;Lcom/google/googlenav/bS;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/googlenav/bV;->a(Lcom/google/googlenav/bV;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v1, v2

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    goto :goto_11

    :cond_44
    iput-boolean v1, p0, Lcom/google/googlenav/bS;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    new-instance v1, Lcom/google/googlenav/bT;

    invoke-direct {v1, p0}, Lcom/google/googlenav/bT;-><init>(Lcom/google/googlenav/bS;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/google/googlenav/bS;->e:Lcom/google/googlenav/bN;

    return-void
.end method

.method private b(I)I
    .registers 9

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v3, v0

    const-wide v5, 0x3fcb367a0f9096bcL

    mul-double/2addr v3, v5

    int-to-double v0, v1

    const-wide v5, 0x3fe6e2eb1c432ca5L

    mul-double/2addr v0, v5

    add-double/2addr v0, v3

    int-to-double v2, v2

    const-wide v4, 0x3fb27bb2fec56d5dL

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4066500000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2e

    const/4 v0, -0x1

    :goto_2d
    return v0

    :cond_2e
    const/high16 v0, -0x100

    goto :goto_2d
.end method

.method static synthetic b(Lcom/google/googlenav/bS;)Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/bS;)Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/bS;)[Lcom/google/googlenav/bV;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/bS;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bS;->d:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bS;)I
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/googlenav/bS;->b(Z)J

    move-result-wide v0

    invoke-virtual {p1, v2}, Lcom/google/googlenav/bS;->b(Z)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/bN;->a(JJ)I

    move-result v0

    return v0
.end method

.method public a(Z)Lcom/google/googlenav/bP;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/google/googlenav/bS;->d:Z

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v3, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    if-eqz p1, :cond_1d

    invoke-static {v1}, Lcom/google/googlenav/bV;->a(Lcom/google/googlenav/bV;)Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_19
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    :cond_1d
    invoke-virtual {v1}, Lcom/google/googlenav/bV;->a()Lcom/google/googlenav/bP;

    move-result-object v1

    if-eqz v1, :cond_19

    move-object v0, v1

    goto :goto_7
.end method

.method public a(I)Lcom/google/googlenav/bV;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/bV;
    .registers 7

    iget-object v2, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_18

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bV;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_13
    return-object v0

    :cond_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/bS;->d:Z

    return v0
.end method

.method b(Z)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bS;->a(Z)Lcom/google/googlenav/bP;

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

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bS;->a(Z)Lcom/google/googlenav/bP;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Lcom/google/googlenav/bP;->b(Lcom/google/googlenav/bP;)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/googlenav/bS;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bS;->a(Lcom/google/googlenav/bS;)I

    move-result v0

    return v0
.end method

.method public d(Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bS;->a(Z)Lcom/google/googlenav/bP;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public d()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()I
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/bS;->f()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/bS;->b(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public f()I
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v0

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->b:Lam/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    array-length v0, v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bS;->a:Lam/b;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/googlenav/bS;->c:[Lcom/google/googlenav/bV;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/googlenav/bV;->j()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
