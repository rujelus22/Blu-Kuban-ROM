.class public Lcom/google/googlenav/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private a:B

.field private b:LaY/bc;

.field private c:Lcom/google/googlenav/E;

.field private d:[Lcom/google/googlenav/bK;

.field private e:I

.field private f:LK/bn;


# direct methods
.method public constructor <init>(LaY/bc;Lcom/google/googlenav/E;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bJ;->b:LaY/bc;

    iput-object p2, p0, Lcom/google/googlenav/bJ;->c:Lcom/google/googlenav/E;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bJ;)LK/bn;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->f:LK/bn;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/bJ;LK/bn;)LK/bn;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bJ;->f:LK/bn;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/bJ;[Lcom/google/googlenav/bK;)[Lcom/google/googlenav/bK;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    return-object p1
.end method

.method static synthetic b(Lcom/google/googlenav/bJ;)LaY/bc;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->b:LaY/bc;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/bJ;)[Lcom/google/googlenav/bK;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->g()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->c()I

    move-result v0

    return v0
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lcom/google/googlenav/bJ;->a:B

    return-void
.end method

.method public a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bK;->b(I)V

    return-void
.end method

.method public a(II)V
    .registers 5

    iput p1, p0, Lcom/google/googlenav/bJ;->e:I

    iget-object v0, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    iget v1, p0, Lcom/google/googlenav/bJ;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/google/googlenav/bK;->c(I)V

    return-void
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/bK;->a(I)Lcom/google/googlenav/D;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/googlenav/E;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->c:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public c()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->c()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/bJ;->a:B

    return v0
.end method

.method public d(I)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->f()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->g()I

    move-result v0

    return v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 2

    iget-byte v0, p0, Lcom/google/googlenav/bJ;->a:B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->a()Lcom/google/googlenav/D;

    move-result-object v0

    goto :goto_5
.end method

.method public f()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->b()I

    move-result v0

    return v0
.end method

.method public g()Lcom/google/googlenav/bL;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->d()Lcom/google/googlenav/bL;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/bJ;->k()Lcom/google/googlenav/bK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bK;->g()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->f:LK/bn;

    return-object v0
.end method

.method public j()LaY/bc;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bJ;->b:LaY/bc;

    return-object v0
.end method

.method public k()Lcom/google/googlenav/bK;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    iget v1, p0, Lcom/google/googlenav/bJ;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bJ;->e:I

    return v0
.end method

.method public m()[Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    array-length v1, v1

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/bJ;->d:[Lcom/google/googlenav/bK;

    array-length v5, v4

    move v1, v0

    :goto_a
    if-ge v0, v5, :cond_1a

    aget-object v6, v4, v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6}, Lcom/google/googlenav/bK;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_a

    :cond_1a
    return-object v3
.end method

.method public n()Lcom/google/googlenav/bM;
    .registers 2

    new-instance v0, Lcom/google/googlenav/bM;

    invoke-direct {v0, p0}, Lcom/google/googlenav/bM;-><init>(Lcom/google/googlenav/bJ;)V

    return-object v0
.end method
