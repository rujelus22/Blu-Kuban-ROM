.class public final LaJ/N;
.super LaJ/M;


# instance fields
.field private final a:I

.field private final b:[[LaJ/B;

.field private final c:LaJ/B;


# direct methods
.method public constructor <init>([LaJ/B;III[[LaJ/B;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, LaJ/M;-><init>([LaJ/B;II)V

    iput p4, p0, LaJ/N;->a:I

    iput-object p5, p0, LaJ/N;->b:[[LaJ/B;

    invoke-direct {p0}, LaJ/N;->o()LaJ/B;

    move-result-object v0

    iput-object v0, p0, LaJ/N;->c:LaJ/B;

    return-void
.end method

.method public static a([JLaJ/B;LaJ/Y;)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v3

    :cond_5
    invoke-virtual {p1, p2}, LaJ/B;->a(LaJ/Y;)I

    move-result v5

    invoke-virtual {p1, p2}, LaJ/B;->b(LaJ/Y;)I

    move-result v6

    move v0, v1

    move v2, v3

    move v4, v3

    :goto_10
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4a

    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v7

    aget-wide v8, p0, v2

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v8

    aget-wide v9, p0, v0

    invoke-static {v9, v10}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v9

    aget-wide v10, p0, v0

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v10

    if-gt v8, v6, :cond_31

    if-lt v6, v10, :cond_35

    :cond_31
    if-gt v10, v6, :cond_43

    if-ge v6, v8, :cond_43

    :cond_35
    sub-int/2addr v9, v7

    sub-int v11, v6, v8

    mul-int/2addr v9, v11

    sub-int v8, v10, v8

    div-int v8, v9, v8

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_43

    if-nez v4, :cond_48

    move v4, v1

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_48
    move v4, v3

    goto :goto_43

    :cond_4a
    move v3, v4

    goto :goto_4
.end method

.method public static b(Lam/b;)LaJ/N;
    .registers 10

    const/16 v8, 0xc

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v2, v0, :cond_18

    move v2, v4

    :cond_18
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lam/b;->c(I)[B

    move-result-object v0

    invoke-static {v0}, LaJ/N;->a([B)[LaJ/B;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [[LaJ/B;

    invoke-virtual {p0, v8}, Lam/b;->l(I)I

    move-result v6

    if-lez v6, :cond_3d

    new-array v5, v6, [[LaJ/B;

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v6, :cond_3e

    invoke-virtual {p0, v8, v0}, Lam/b;->b(II)[B

    move-result-object v7

    invoke-static {v7}, LaJ/M;->a([B)[LaJ/B;

    move-result-object v7

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_3d
    move-object v5, v0

    :cond_3e
    new-instance v0, LaJ/N;

    invoke-direct/range {v0 .. v5}, LaJ/N;-><init>([LaJ/B;III[[LaJ/B;)V

    return-object v0
.end method

.method private o()LaJ/B;
    .registers 10

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, LaJ/N;->j()[LaJ/B;

    move-result-object v5

    array-length v0, v5

    add-int/lit8 v6, v0, -0x1

    const/4 v0, 0x0

    move-wide v3, v1

    :goto_b
    if-ge v0, v6, :cond_20

    aget-object v7, v5, v0

    invoke-virtual {v7}, LaJ/B;->c()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    aget-object v7, v5, v0

    invoke-virtual {v7}, LaJ/B;->e()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    int-to-long v7, v6

    div-long/2addr v3, v7

    int-to-long v5, v6

    div-long v0, v1, v5

    new-instance v2, LaJ/B;

    long-to-int v3, v3

    long-to-int v0, v0

    invoke-direct {v2, v3, v0}, LaJ/B;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public b()LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/N;->c:LaJ/B;

    return-object v0
.end method

.method public e()Lam/b;
    .registers 5

    new-instance v1, Lam/b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/16 v0, 0x9

    invoke-virtual {p0}, LaJ/N;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    const/16 v0, 0x8

    invoke-virtual {p0}, LaJ/N;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    const/16 v0, 0xb

    iget v2, p0, LaJ/N;->a:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    const/16 v0, 0xa

    invoke-virtual {p0}, LaJ/N;->j()[LaJ/B;

    move-result-object v2

    invoke-static {v2}, LaJ/N;->a([LaJ/B;)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(I[B)V

    iget-object v0, p0, LaJ/N;->b:[[LaJ/B;

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    :goto_31
    iget-object v2, p0, LaJ/N;->b:[[LaJ/B;

    array-length v2, v2

    if-ge v0, v2, :cond_46

    const/16 v2, 0xc

    iget-object v3, p0, LaJ/N;->b:[[LaJ/B;

    aget-object v3, v3, v0

    invoke-static {v3}, LaJ/N;->a([LaJ/B;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->a(I[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_46
    return-object v1
.end method

.method public l()Z
    .registers 3

    iget v0, p0, LaJ/N;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public m()I
    .registers 2

    iget v0, p0, LaJ/N;->a:I

    return v0
.end method

.method public n()[[LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/N;->b:[[LaJ/B;

    return-object v0
.end method
