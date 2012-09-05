.class public abstract Lx/o;
.super Lat/a;


# instance fields
.field private final a:[Lx/r;

.field private b:I

.field private c:Lx/k;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lat/a;-><init>()V

    new-array v0, p1, [Lx/r;

    iput-object v0, p0, Lx/o;->a:[Lx/r;

    const/4 v0, 0x0

    iput v0, p0, Lx/o;->b:I

    return-void
.end method

.method static synthetic a(Lx/o;)Lx/k;
    .registers 2

    iget-object v0, p0, Lx/o;->c:Lx/k;

    return-object v0
.end method

.method static synthetic a(Lx/o;Lx/k;)Lx/k;
    .registers 2

    iput-object p1, p0, Lx/o;->c:Lx/k;

    return-object p1
.end method


# virtual methods
.method protected final a(I)Lx/r;
    .registers 3

    iget-object v0, p0, Lx/o;->a:[Lx/r;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected a(Lx/r;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract b(I)Lt/ae;
.end method

.method protected final b(Lx/r;)V
    .registers 5

    iget-object v0, p0, Lx/o;->a:[Lx/r;

    iget v1, p0, Lx/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx/o;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected c(I)[B
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()I
    .registers 2

    iget v0, p0, Lx/o;->b:I

    return v0
.end method

.method protected final e()Z
    .registers 3

    iget v0, p0, Lx/o;->b:I

    iget-object v1, p0, Lx/o;->a:[Lx/r;

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public f_()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lx/o;->a:[Lx/r;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_15

    aget-object v4, v2, v1

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lx/r;->f()Z

    move-result v4

    if-nez v4, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method
