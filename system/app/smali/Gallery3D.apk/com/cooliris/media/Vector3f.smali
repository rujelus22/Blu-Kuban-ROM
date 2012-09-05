.class public final Lcom/cooliris/media/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 32
    return-void
.end method


# virtual methods
.method public add(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 76
    iget v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    .line 77
    iget v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    .line 78
    iget v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    .line 79
    return-void
.end method

.method public add(Lcom/cooliris/media/Vector3f;)V
    .registers 4
    .parameter "vector"

    .prologue
    .line 53
    iget v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    .line 54
    iget v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    .line 55
    iget v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    .line 56
    return-void
.end method

.method public equals(Lcom/cooliris/media/Vector3f;)Z
    .registers 4
    .parameter "vector"

    .prologue
    .line 65
    iget v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 66
    const/4 v0, 0x1

    .line 67
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public set(FFF)V
    .registers 4
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 47
    iput p1, p0, Lcom/cooliris/media/Vector3f;->x:F

    .line 48
    iput p2, p0, Lcom/cooliris/media/Vector3f;->y:F

    .line 49
    iput p3, p0, Lcom/cooliris/media/Vector3f;->z:F

    .line 50
    return-void
.end method

.method public set(Lcom/cooliris/media/Vector3f;)V
    .registers 3
    .parameter "vector"

    .prologue
    .line 41
    iget v0, p1, Lcom/cooliris/media/Vector3f;->x:F

    iput v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    .line 42
    iget v0, p1, Lcom/cooliris/media/Vector3f;->y:F

    iput v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    .line 43
    iget v0, p1, Lcom/cooliris/media/Vector3f;->z:F

    iput v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    .line 44
    return-void
.end method

.method public subtract(Lcom/cooliris/media/Vector3f;)V
    .registers 4
    .parameter "vector"

    .prologue
    .line 59
    iget v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->x:F

    .line 60
    iget v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->y:F

    .line 61
    iget v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    iget v1, p1, Lcom/cooliris/media/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/Vector3f;->z:F

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cooliris/media/Vector3f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cooliris/media/Vector3f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/cooliris/media/Vector3f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
