.class Lcom/google/googlenav/bK;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bJ;

.field private final b:[Lcom/google/googlenav/bL;

.field private final c:[Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bJ;[Lcom/google/googlenav/bL;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/bK;->a:Lcom/google/googlenav/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    iget-object v0, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bK;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/google/googlenav/bK;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/bK;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlenav/bL;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    return-void
.end method

.method private d(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/D;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/bJ;)LK/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    iget v2, p0, Lcom/google/googlenav/bK;->e:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/google/googlenav/bK;->d:I

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bL;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/D;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/bK;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/bJ;)LK/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    iget v2, p0, Lcom/google/googlenav/bK;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bL;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    return-object v0
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    iget v1, p0, Lcom/google/googlenav/bK;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bK;->d:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bK;->d:I

    return v0
.end method

.method public c(I)V
    .registers 3

    iput p1, p0, Lcom/google/googlenav/bK;->e:I

    invoke-direct {p0, p1}, Lcom/google/googlenav/bK;->d(I)I

    move-result v0

    if-gez v0, :cond_9

    const/4 v0, 0x0

    :cond_9
    iput v0, p0, Lcom/google/googlenav/bK;->d:I

    return-void
.end method

.method public d()Lcom/google/googlenav/bL;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    iget v1, p0, Lcom/google/googlenav/bK;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bK;->b:[Lcom/google/googlenav/bL;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/bL;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bK;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bK;->e:I

    return v0
.end method
