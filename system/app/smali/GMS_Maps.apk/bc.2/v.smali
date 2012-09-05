.class public Lbc/v;
.super LK/cC;

# interfaces
.implements LK/ch;


# instance fields
.field private final a:Lbc/d;

.field private final b:Lbc/w;

.field private c:Z


# direct methods
.method public constructor <init>(Lbc/d;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, LK/cC;-><init>()V

    iput-object p1, p0, Lbc/v;->a:Lbc/d;

    new-instance v0, Lbc/w;

    invoke-direct {v0, v1, v1}, Lbc/w;-><init>(II)V

    iput-object v0, p0, Lbc/v;->b:Lbc/w;

    iput-boolean v1, p0, Lbc/v;->c:Z

    return-void
.end method

.method private a(II)Lbc/t;
    .registers 5

    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v0, p1, p2}, Lbc/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v0, p2}, Lbc/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_23

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v0, p1}, Lbc/d;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1c
    new-instance v1, Lbc/t;

    invoke-direct {v1, p1, v0}, Lbc/t;-><init>(II)V

    move-object v0, v1

    goto :goto_9

    :cond_23
    add-int/lit8 v0, p2, -0x1

    goto :goto_1c
.end method


# virtual methods
.method public a()Lbc/t;
    .registers 4

    iget-boolean v0, p0, Lbc/v;->c:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc/v;->c:Z

    :goto_7
    new-instance v0, Lbc/t;

    iget-object v1, p0, Lbc/v;->b:Lbc/w;

    iget v1, v1, Lbc/w;->a:I

    iget-object v2, p0, Lbc/v;->b:Lbc/w;

    iget v2, v2, Lbc/w;->b:I

    invoke-direct {v0, v1, v2}, Lbc/t;-><init>(II)V

    return-object v0

    :cond_15
    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    iget-object v1, p0, Lbc/v;->b:Lbc/w;

    iget v1, v1, Lbc/w;->a:I

    iget-object v2, p0, Lbc/v;->b:Lbc/w;

    iget v2, v2, Lbc/w;->b:I

    invoke-virtual {v0, v1, v2}, Lbc/d;->d(II)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v1, v0, Lbc/w;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbc/w;->b:I

    goto :goto_7

    :cond_2e
    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    iget-object v1, p0, Lbc/v;->b:Lbc/w;

    iget v1, v1, Lbc/w;->a:I

    invoke-virtual {v0, v1}, Lbc/d;->e(I)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot increment from the last segment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v1, v0, Lbc/w;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lbc/w;->a:I

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    const/4 v1, 0x0

    iput v1, v0, Lbc/w;->b:I

    goto :goto_7
.end method

.method public a(Lbc/t;)Lbc/v;
    .registers 4

    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v0, p1}, Lbc/d;->b(Lbc/t;)Z

    move-result v0

    const-string v1, "Index out of range."

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v1, p1, Lbc/t;->a:I

    iput v1, v0, Lbc/w;->a:I

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v1, p1, Lbc/t;->b:I

    iput v1, v0, Lbc/w;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc/v;->c:Z

    return-object p0
.end method

.method public b()Lbc/t;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbc/v;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_d
    iget-boolean v1, p0, Lbc/v;->c:Z

    if-nez v1, :cond_18

    move v1, v0

    :goto_12
    new-instance v2, Lbc/t;

    invoke-direct {v2, v1, v0}, Lbc/t;-><init>(II)V

    return-object v2

    :cond_18
    iget-object v1, p0, Lbc/v;->a:Lbc/d;

    iget-object v2, p0, Lbc/v;->b:Lbc/w;

    iget v2, v2, Lbc/w;->a:I

    iget-object v3, p0, Lbc/v;->b:Lbc/w;

    iget v3, v3, Lbc/w;->b:I

    invoke-virtual {v1, v2, v3}, Lbc/d;->d(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lbc/v;->b:Lbc/w;

    iget v1, v1, Lbc/w;->a:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v1, v0, Lbc/w;->a:I

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v0, v0, Lbc/w;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public b(Lbc/t;)Lbc/v;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v0, p1}, Lbc/d;->b(Lbc/t;)Z

    move-result v0

    const-string v1, "Index out of range."

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lbc/v;->a:Lbc/d;

    iget v1, p1, Lbc/t;->a:I

    iget v2, p1, Lbc/t;->b:I

    invoke-virtual {v0, v1, v2}, Lbc/d;->b(II)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iput v3, v0, Lbc/w;->a:I

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iput v3, v0, Lbc/w;->b:I

    iput-boolean v3, p0, Lbc/v;->c:Z

    :goto_22
    return-object p0

    :cond_23
    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-direct {p0, v0, v1}, Lbc/v;->a(II)Lbc/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbc/v;->a(Lbc/t;)Lbc/v;

    move-result-object p0

    goto :goto_22
.end method

.method public c(Lbc/t;)Lbc/t;
    .registers 4

    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-direct {p0, v0, v1}, Lbc/v;->a(II)Lbc/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lbc/v;->b()Lbc/t;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 4

    iget-object v0, p0, Lbc/v;->b:Lbc/w;

    iget v0, v0, Lbc/w;->b:I

    iget-object v1, p0, Lbc/v;->a:Lbc/d;

    iget-object v2, p0, Lbc/v;->b:Lbc/w;

    iget v2, v2, Lbc/w;->a:I

    invoke-virtual {v1, v2}, Lbc/d;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasNext()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lbc/v;->c:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lbc/v;->a:Lbc/d;

    invoke-virtual {v2}, Lbc/d;->a()I

    move-result v2

    if-lez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget-object v2, p0, Lbc/v;->a:Lbc/d;

    iget-object v3, p0, Lbc/v;->b:Lbc/w;

    iget v3, v3, Lbc/w;->a:I

    iget-object v4, p0, Lbc/v;->b:Lbc/w;

    iget v4, v4, Lbc/w;->b:I

    invoke-virtual {v2, v3, v4}, Lbc/d;->c(II)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lbc/v;->a()Lbc/t;

    move-result-object v0

    return-object v0
.end method
