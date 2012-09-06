.class public Ln/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const v0, -0xaba9500

    if-ne p2, v0, :cond_a

    .line 29
    mul-int/lit8 p2, p2, -0x1

    .line 31
    :cond_a
    iput p1, p0, Ln/s;->a:I

    .line 32
    iput p2, p0, Ln/s;->b:I

    .line 33
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Ln/s;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Ln/s;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_5

    .line 68
    :cond_4
    :goto_4
    return v0

    .line 63
    :cond_5
    instance-of v2, p1, Ln/s;

    if-eqz v2, :cond_19

    .line 64
    check-cast p1, Ln/s;

    .line 65
    iget v2, p1, Ln/s;->a:I

    iget v3, p0, Ln/s;->a:I

    if-ne v2, v3, :cond_17

    iget v2, p1, Ln/s;->b:I

    iget v3, p0, Ln/s;->b:I

    if-eq v2, v3, :cond_4

    :cond_17
    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    .line 68
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Ln/s;->a:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Ln/s;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ln/s;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/s;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
