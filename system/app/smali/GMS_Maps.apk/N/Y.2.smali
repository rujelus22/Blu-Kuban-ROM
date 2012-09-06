.class Ln/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p1, Ln/Q;->a:I

    iput v0, p0, Ln/Y;->a:I

    .line 40
    iget v0, p1, Ln/Q;->b:I

    iput v0, p0, Ln/Y;->b:I

    .line 41
    iget v0, p0, Ln/Y;->a:I

    iput v0, p0, Ln/Y;->c:I

    .line 42
    iget v0, p0, Ln/Y;->b:I

    iput v0, p0, Ln/Y;->d:I

    .line 43
    return-void
.end method

.method constructor <init>(Ln/Y;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Ln/Y;->a:I

    iput v0, p0, Ln/Y;->a:I

    .line 47
    iget v0, p1, Ln/Y;->b:I

    iput v0, p0, Ln/Y;->b:I

    .line 48
    iget v0, p1, Ln/Y;->c:I

    iput v0, p0, Ln/Y;->c:I

    .line 49
    iget v0, p1, Ln/Y;->d:I

    iput v0, p0, Ln/Y;->d:I

    .line 50
    return-void
.end method


# virtual methods
.method a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    iget v0, p0, Ln/Y;->a:I

    if-ge p1, v0, :cond_6

    .line 54
    iput p1, p0, Ln/Y;->a:I

    .line 56
    :cond_6
    iget v0, p0, Ln/Y;->b:I

    if-ge p2, v0, :cond_c

    .line 57
    iput p2, p0, Ln/Y;->b:I

    .line 59
    :cond_c
    iget v0, p0, Ln/Y;->c:I

    if-le p1, v0, :cond_12

    .line 60
    iput p1, p0, Ln/Y;->c:I

    .line 62
    :cond_12
    iget v0, p0, Ln/Y;->d:I

    if-le p2, v0, :cond_18

    .line 63
    iput p2, p0, Ln/Y;->d:I

    .line 65
    :cond_18
    return-void
.end method

.method a(Ln/Q;)V
    .registers 4
    .parameter

    .prologue
    .line 68
    iget v0, p1, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->b:I

    invoke-virtual {p0, v0, v1}, Ln/Y;->a(II)V

    .line 69
    return-void
.end method

.method a(Ln/Y;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    iget v0, p1, Ln/Y;->a:I

    iget v1, p1, Ln/Y;->b:I

    invoke-virtual {p0, v0, v1}, Ln/Y;->a(II)V

    .line 73
    iget v0, p1, Ln/Y;->c:I

    iget v1, p1, Ln/Y;->d:I

    invoke-virtual {p0, v0, v1}, Ln/Y;->a(II)V

    .line 74
    return-void
.end method

.method a(Ln/aa;)Z
    .registers 6
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v1

    .line 82
    iget v2, p0, Ln/Y;->a:I

    iget v3, v0, Ln/Q;->a:I

    if-gt v2, v3, :cond_22

    iget v2, p0, Ln/Y;->b:I

    iget v0, v0, Ln/Q;->b:I

    if-gt v2, v0, :cond_22

    iget v0, p0, Ln/Y;->c:I

    iget v2, v1, Ln/Q;->a:I

    if-lt v0, v2, :cond_22

    iget v0, p0, Ln/Y;->d:I

    iget v1, v1, Ln/Q;->b:I

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

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Y;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/Y;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
