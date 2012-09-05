.class public Lu/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/b;->a:I

    iput p2, p0, Lu/b;->b:I

    return-void
.end method

.method public static a(Lam/b;)Lu/b;
    .registers 4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lu/b;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/b;-><init>(II)V

    goto :goto_8
.end method


# virtual methods
.method public a()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->t:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget v2, p0, Lu/b;->a:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    iget v2, p0, Lu/b;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method

.method public a(I)Lu/b;
    .registers 4

    new-instance v0, Lu/b;

    iget v1, p0, Lu/b;->a:I

    invoke-direct {v0, v1, p1}, Lu/b;-><init>(II)V

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lu/b;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lu/b;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lu/b;

    if-eqz v2, :cond_19

    check-cast p1, Lu/b;

    iget v2, p1, Lu/b;->a:I

    iget v3, p0, Lu/b;->a:I

    if-ne v2, v3, :cond_17

    iget v2, p1, Lu/b;->b:I

    iget v3, p0, Lu/b;->b:I

    if-eq v2, v3, :cond_4

    :cond_17
    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lu/b;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lu/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
