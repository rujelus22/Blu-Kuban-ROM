.class public Laq/d;
.super Ljava/lang/Object;


# instance fields
.field private a:[Laq/c;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Laq/c;

    iput-object v0, p0, Laq/d;->a:[Laq/c;

    iput v1, p0, Laq/d;->b:I

    iput v1, p0, Laq/d;->c:I

    return-void
.end method

.method private a(Laq/c;Laq/c;I)V
    .registers 8

    invoke-virtual {p2}, Laq/c;->k()I

    move-result v0

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p2}, Laq/c;->l()I

    move-result v0

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v2

    sub-int v2, v0, v2

    iget v0, p0, Laq/d;->d:I

    if-nez v0, :cond_3c

    iget v0, p0, Laq/d;->e:I

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_1d
    iget v3, p0, Laq/d;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, p3

    add-int/2addr v1, v3

    iput v1, p0, Laq/d;->d:I

    iget v1, p0, Laq/d;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, p3

    add-int/2addr v1, v2

    iput v1, p0, Laq/d;->e:I

    if-nez v0, :cond_3b

    iget v0, p0, Laq/d;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Laq/d;->d:I

    iget v0, p0, Laq/d;->e:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Laq/d;->e:I

    :cond_3b
    return-void

    :cond_3c
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    const/16 v2, 0x8

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Laq/d;->a:[Laq/c;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    iput v1, p0, Laq/d;->c:I

    iput v1, p0, Laq/d;->b:I

    return-void
.end method

.method public a(Laq/c;)V
    .registers 7

    iget v0, p0, Laq/d;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    iget v0, p0, Laq/d;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laq/d;->b:I

    iget v0, p0, Laq/d;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Laq/d;->c:I

    :cond_14
    iget v0, p0, Laq/d;->b:I

    if-lez v0, :cond_3c

    iget v0, p0, Laq/d;->c:I

    iget v1, p0, Laq/d;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Laq/c;->n()J

    move-result-wide v1

    iget-object v3, p0, Laq/d;->a:[Laq/c;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Laq/c;->n()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_39

    sub-long v0, v1, v3

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3c

    :cond_39
    invoke-virtual {p0}, Laq/d;->a()V

    :cond_3c
    iget v0, p0, Laq/d;->c:I

    iget v1, p0, Laq/d;->b:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Laq/d;->a:[Laq/c;

    aput-object p1, v1, v0

    iget v0, p0, Laq/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laq/d;->b:I

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Laq/d;->d:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Laq/d;->e:I

    return v0
.end method

.method public d()V
    .registers 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput v2, p0, Laq/d;->d:I

    iput v2, p0, Laq/d;->e:I

    const-wide/16 v0, 0x0

    iget v4, p0, Laq/d;->b:I

    if-lez v4, :cond_1d

    iget v0, p0, Laq/d;->c:I

    iget v1, p0, Laq/d;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Laq/d;->a:[Laq/c;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Laq/c;->n()J

    move-result-wide v0

    :cond_1d
    move v6, v2

    move-object v4, v3

    :goto_1f
    iget v5, p0, Laq/d;->b:I

    if-ge v6, v5, :cond_51

    iget-object v5, p0, Laq/d;->a:[Laq/c;

    iget v7, p0, Laq/d;->c:I

    add-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x8

    aget-object v5, v5, v7

    invoke-virtual {v5}, Laq/c;->n()J

    move-result-wide v7

    sub-long v9, v0, v7

    const-wide/16 v11, 0xc8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3c

    :cond_38
    :goto_38
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1f

    :cond_3c
    if-nez v3, :cond_41

    move-object v3, v4

    move-object v4, v5

    goto :goto_38

    :cond_41
    invoke-virtual {v3}, Laq/c;->n()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-eqz v7, :cond_38

    invoke-direct {p0, v3, v5, v7}, Laq/d;->a(Laq/c;Laq/c;I)V

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    move-object v4, v5

    goto :goto_38

    :cond_51
    if-nez v2, :cond_66

    if-eqz v4, :cond_66

    if-eqz v3, :cond_66

    invoke-virtual {v4}, Laq/c;->n()J

    move-result-wide v0

    invoke-virtual {v3}, Laq/c;->n()J

    move-result-wide v5

    sub-long/2addr v0, v5

    long-to-int v0, v0

    if-lez v0, :cond_66

    invoke-direct {p0, v3, v4, v0}, Laq/d;->a(Laq/c;Laq/c;I)V

    :cond_66
    iget v0, p0, Laq/d;->d:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Laq/d;->d:I

    iget v0, p0, Laq/d;->e:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Laq/d;->e:I

    return-void
.end method
