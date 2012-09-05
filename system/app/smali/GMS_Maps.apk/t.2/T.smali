.class Lt/T;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lt/L;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lt/L;->a:I

    iput v0, p0, Lt/T;->a:I

    iget v0, p1, Lt/L;->b:I

    iput v0, p0, Lt/T;->b:I

    iget v0, p0, Lt/T;->a:I

    iput v0, p0, Lt/T;->c:I

    iget v0, p0, Lt/T;->b:I

    iput v0, p0, Lt/T;->d:I

    return-void
.end method

.method constructor <init>(Lt/T;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lt/T;->a:I

    iput v0, p0, Lt/T;->a:I

    iget v0, p1, Lt/T;->b:I

    iput v0, p0, Lt/T;->b:I

    iget v0, p1, Lt/T;->c:I

    iput v0, p0, Lt/T;->c:I

    iget v0, p1, Lt/T;->d:I

    iput v0, p0, Lt/T;->d:I

    return-void
.end method


# virtual methods
.method a(II)V
    .registers 4

    iget v0, p0, Lt/T;->a:I

    if-ge p1, v0, :cond_6

    iput p1, p0, Lt/T;->a:I

    :cond_6
    iget v0, p0, Lt/T;->b:I

    if-ge p2, v0, :cond_c

    iput p2, p0, Lt/T;->b:I

    :cond_c
    iget v0, p0, Lt/T;->c:I

    if-le p1, v0, :cond_12

    iput p1, p0, Lt/T;->c:I

    :cond_12
    iget v0, p0, Lt/T;->d:I

    if-le p2, v0, :cond_18

    iput p2, p0, Lt/T;->d:I

    :cond_18
    return-void
.end method

.method a(Lt/L;)V
    .registers 4

    iget v0, p1, Lt/L;->a:I

    iget v1, p1, Lt/L;->b:I

    invoke-virtual {p0, v0, v1}, Lt/T;->a(II)V

    return-void
.end method

.method a(Lt/T;)V
    .registers 4

    iget v0, p1, Lt/T;->a:I

    iget v1, p1, Lt/T;->b:I

    invoke-virtual {p0, v0, v1}, Lt/T;->a(II)V

    iget v0, p1, Lt/T;->c:I

    iget v1, p1, Lt/T;->d:I

    invoke-virtual {p0, v0, v1}, Lt/T;->a(II)V

    return-void
.end method

.method a(Lt/V;)Z
    .registers 6

    invoke-virtual {p1}, Lt/V;->e()Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v1

    iget v2, p0, Lt/T;->a:I

    iget v3, v0, Lt/L;->a:I

    if-gt v2, v3, :cond_22

    iget v2, p0, Lt/T;->b:I

    iget v0, v0, Lt/L;->b:I

    if-gt v2, v0, :cond_22

    iget v0, p0, Lt/T;->c:I

    iget v2, v1, Lt/L;->a:I

    if-lt v0, v2, :cond_22

    iget v0, p0, Lt/T;->d:I

    iget v1, v1, Lt/L;->b:I

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/T;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/T;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/T;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/T;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
