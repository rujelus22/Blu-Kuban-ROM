.class Lbx;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lbw;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    new-array v0, v0, [Lbw;

    iput-object v0, p0, Lbx;->a:[Lbw;

    return-void
.end method

.method private b(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x32

    if-le p1, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 50, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method


# virtual methods
.method public a(I)Lbw;
    .registers 4

    invoke-direct {p0, p1}, Lbx;->b(I)V

    iget-object v0, p0, Lbx;->a:[Lbw;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(I)V
    .registers 5

    invoke-direct {p0, p1}, Lbx;->b(I)V

    iget-object v0, p0, Lbx;->a:[Lbw;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method public a(Lbw;)V
    .registers 4

    invoke-virtual {p1}, Lbw;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lbx;->b(I)V

    iget-object v0, p0, Lbx;->a:[Lbw;

    invoke-virtual {p1}, Lbw;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public a()Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lbx;->a:[Lbw;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lbx;->a:[Lbw;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a(I)Z
    .registers 4

    invoke-direct {p0, p1}, Lbx;->b(I)V

    iget-object v0, p0, Lbx;->a:[Lbw;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a()[Lbw;
    .registers 2

    iget-object v0, p0, Lbx;->a:[Lbw;

    invoke-virtual {v0}, [Lbw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbw;

    return-object v0
.end method
