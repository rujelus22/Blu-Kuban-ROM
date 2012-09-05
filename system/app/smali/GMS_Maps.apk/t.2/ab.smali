.class public final Lt/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lt/P;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lt/P;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ab;->a:Lt/P;

    iput p2, p0, Lt/ab;->b:I

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v0

    iput v0, p0, Lt/ab;->c:I

    return-void
.end method

.method public constructor <init>(Lt/P;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/ab;->a:Lt/P;

    iput p2, p0, Lt/ab;->b:I

    iput p3, p0, Lt/ab;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lt/ab;->c:I

    iget v1, p0, Lt/ab;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)Lt/L;
    .registers 4

    iget-object v0, p0, Lt/ab;->a:Lt/P;

    iget v1, p0, Lt/ab;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public a(ILt/L;)V
    .registers 5

    iget-object v0, p0, Lt/ab;->a:Lt/P;

    iget v1, p0, Lt/ab;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lt/P;->a(ILt/L;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lt/ab;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lt/ab;->c:I

    return v0
.end method

.method public d()Lt/P;
    .registers 2

    iget-object v0, p0, Lt/ab;->a:Lt/P;

    return-object v0
.end method

.method public e()Lt/P;
    .registers 7

    invoke-virtual {p0}, Lt/ab;->a()I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_1e

    iget-object v4, p0, Lt/ab;->a:Lt/P;

    iget v5, p0, Lt/ab;->b:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5, v3}, Lt/P;->a(ILt/L;)V

    invoke-virtual {v3, v2, v0}, Lt/L;->a([II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    invoke-static {v2}, Lt/P;->a([I)Lt/P;

    move-result-object v0

    return-object v0
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
    instance-of v2, p1, Lt/ab;

    if-eqz v2, :cond_23

    check-cast p1, Lt/ab;

    iget v2, p1, Lt/ab;->b:I

    iget v3, p0, Lt/ab;->b:I

    if-ne v2, v3, :cond_21

    iget v2, p1, Lt/ab;->c:I

    iget v3, p0, Lt/ab;->c:I

    if-ne v2, v3, :cond_21

    iget-object v2, p1, Lt/ab;->a:Lt/P;

    iget-object v3, p0, Lt/ab;->a:Lt/P;

    invoke-virtual {v2, v3}, Lt/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public f()Lt/V;
    .registers 8

    iget-object v0, p0, Lt/ab;->a:Lt/P;

    iget v1, p0, Lt/ab;->b:I

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v5

    iget v2, v5, Lt/L;->a:I

    iget v1, v5, Lt/L;->b:I

    iget v0, p0, Lt/ab;->b:I

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_13
    iget v6, p0, Lt/ab;->c:I

    if-ge v0, v6, :cond_37

    iget-object v6, p0, Lt/ab;->a:Lt/P;

    invoke-virtual {v6, v0, v5}, Lt/P;->a(ILt/L;)V

    iget v6, v5, Lt/L;->a:I

    if-ge v6, v4, :cond_22

    iget v4, v5, Lt/L;->a:I

    :cond_22
    iget v6, v5, Lt/L;->a:I

    if-le v6, v3, :cond_28

    iget v3, v5, Lt/L;->a:I

    :cond_28
    iget v6, v5, Lt/L;->b:I

    if-ge v6, v2, :cond_2e

    iget v2, v5, Lt/L;->b:I

    :cond_2e
    iget v6, v5, Lt/L;->b:I

    if-le v6, v1, :cond_34

    iget v1, v5, Lt/L;->b:I

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_37
    invoke-virtual {v5, v4, v2}, Lt/L;->d(II)V

    new-instance v0, Lt/L;

    invoke-direct {v0, v3, v1}, Lt/L;-><init>(II)V

    new-instance v1, Lt/V;

    invoke-direct {v1, v5, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lt/ab;->b:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lt/ab;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt/ab;->a:Lt/P;

    invoke-virtual {v1}, Lt/P;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/ab;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/ab;->a:Lt/P;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
