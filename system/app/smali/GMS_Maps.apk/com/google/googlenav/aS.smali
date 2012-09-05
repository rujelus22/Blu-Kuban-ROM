.class public Lcom/google/googlenav/aS;
.super Lat/a;


# instance fields
.field private final a:LaJ/B;

.field private final b:I

.field private final c:I

.field private final d:I

.field private volatile e:Z

.field private f:Lcom/google/googlenav/aT;

.field private g:I

.field private h:[Lcom/google/googlenav/aU;


# direct methods
.method public constructor <init>(LaJ/B;I)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aS;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    iput-object p1, p0, Lcom/google/googlenav/aS;->a:LaJ/B;

    iput v1, p0, Lcom/google/googlenav/aS;->b:I

    iput v1, p0, Lcom/google/googlenav/aS;->c:I

    iput p2, p0, Lcom/google/googlenav/aS;->d:I

    return-void
.end method

.method public constructor <init>(LaJ/B;III)V
    .registers 6

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aS;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    iput-object p1, p0, Lcom/google/googlenav/aS;->a:LaJ/B;

    iput p2, p0, Lcom/google/googlenav/aS;->b:I

    iput p3, p0, Lcom/google/googlenav/aS;->c:I

    iput p4, p0, Lcom/google/googlenav/aS;->d:I

    return-void
.end method

.method private a(Lam/b;)V
    .registers 14

    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Lcom/google/googlenav/aU;

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    move v1, v2

    :goto_d
    if-ge v1, v3, :cond_42

    invoke-virtual {p1, v9, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-virtual {v4, v10}, Lam/b;->d(I)I

    move-result v4

    invoke-static {v9, v2, v0}, Lcom/google/googlenav/d;->a(IILam/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v0}, Lcom/google/googlenav/d;->a(IILam/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v11}, Lam/b;->k(I)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v0, v11}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_2d
    new-instance v7, Lcom/google/googlenav/aU;

    new-array v8, v9, [Ljava/lang/String;

    aput-object v5, v8, v2

    aput-object v6, v8, v10

    invoke-direct {v7, v4, v8, v0}, Lcom/google/googlenav/aU;-><init>(I[Ljava/lang/String;Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    aput-object v7, v0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_40
    const/4 v0, 0x0

    goto :goto_2d

    :cond_42
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method public a(I)Lcom/google/googlenav/aU;
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/aT;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8

    const/4 v5, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/ew;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lcom/google/googlenav/aS;->a:LaJ/B;

    invoke-static {v1}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lcom/google/googlenav/aS;->a:LaJ/B;

    iget v2, p0, Lcom/google/googlenav/aS;->b:I

    iget v3, p0, Lcom/google/googlenav/aS;->c:I

    iget v4, p0, Lcom/google/googlenav/aS;->d:I

    invoke-static {v1, v2, v3, v4}, LaJ/C;->a(LaJ/B;III)Lam/b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Lam/b;->b(IZ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    const/4 v2, 0x1

    sget-object v0, LbD/ew;->d:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aS;->g:I

    iget v1, p0, Lcom/google/googlenav/aS;->g:I

    packed-switch v1, :pswitch_data_1a

    :goto_12
    iput-boolean v2, p0, Lcom/google/googlenav/aS;->e:Z

    return v2

    :pswitch_15
    invoke-direct {p0, v0}, Lcom/google/googlenav/aS;->a(Lam/b;)V

    goto :goto_12

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aT;->a(Lcom/google/googlenav/aS;)V

    :cond_9
    return-void
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
