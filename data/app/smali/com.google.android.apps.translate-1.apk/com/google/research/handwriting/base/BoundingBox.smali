.class public Lcom/google/research/handwriting/base/BoundingBox;
.super Ljava/lang/Object;
.source "BoundingBox.java"


# instance fields
.field public final tlbr:[F


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/base/Stroke;)V
    .registers 10
    .parameter "stroke"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v2, 0x4

    new-array v2, v2, [F

    fill-array-data v2, :array_62

    iput-object v2, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    .line 41
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 42
    .local v1, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v2, v1, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2f

    .line 43
    iget-object v2, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget v3, v1, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    aput v3, v2, v4

    .line 45
    :cond_2f
    iget v2, v1, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v5

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f

    .line 46
    iget-object v2, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget v3, v1, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    aput v3, v2, v5

    .line 48
    :cond_3f
    iget v2, v1, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4f

    .line 49
    iget-object v2, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget v3, v1, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    aput v3, v2, v6

    .line 51
    :cond_4f
    iget v2, v1, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v7

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 52
    iget-object v2, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget v3, v1, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    aput v3, v2, v7

    goto :goto_13

    .line 55
    .end local v1           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_60
    return-void

    .line 40
    nop

    :array_62
    .array-data 0x4
        0xfft 0xfft 0x7ft 0x7ft
        0xfft 0xfft 0x7ft 0x7ft
        0xfft 0xfft 0x7ft 0xfft
        0xfft 0xfft 0x7ft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 11
    .parameter "strokes"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_76

    iput-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    .line 21
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/Stroke;

    .line 22
    .local v2, s:Lcom/google/research/handwriting/base/Stroke;
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, v2}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/Stroke;)V

    .line 24
    .local v0, curBB:Lcom/google/research/handwriting/base/BoundingBox;
    iget-object v3, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v5

    iget-object v4, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_38

    .line 25
    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget-object v4, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v5

    aput v4, v3, v5

    .line 27
    :cond_38
    iget-object v3, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 28
    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget-object v4, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v6

    aput v4, v3, v6

    .line 30
    :cond_4c
    iget-object v3, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v7

    cmpl-float v3, v3, v4

    if-lez v3, :cond_60

    .line 31
    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget-object v4, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v7

    aput v4, v3, v7

    .line 33
    :cond_60
    iget-object v3, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    .line 34
    iget-object v3, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    iget-object v4, v0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    aget v4, v4, v8

    aput v4, v3, v8

    goto :goto_13

    .line 37
    .end local v0           #curBB:Lcom/google/research/handwriting/base/BoundingBox;
    .end local v2           #s:Lcom/google/research/handwriting/base/Stroke;
    :cond_75
    return-void

    .line 20
    :array_76
    .array-data 0x4
        0xfft 0xfft 0x7ft 0x7ft
        0xfft 0xfft 0x7ft 0x7ft
        0xfft 0xfft 0x7ft 0xfft
        0xfft 0xfft 0x7ft 0xfft
    .end array-data
.end method

.method public constructor <init>([F)V
    .registers 2
    .parameter "tlbr"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    .line 17
    return-void
.end method


# virtual methods
.method public bottom()F
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getHeight()F
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->bottom()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->top()F

    move-result v2

    sub-float v0, v1, v2

    .line 91
    .local v0, height:F
    const/high16 v1, 0x80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 92
    const/high16 v0, 0x3f80

    .line 94
    :cond_12
    return v0
.end method

.method public getWidth()F
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->right()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v2

    sub-float v0, v1, v2

    .line 99
    .local v0, width:F
    const/high16 v1, 0x80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 100
    const/high16 v0, 0x3f80

    .line 102
    :cond_12
    return v0
.end method

.method public left()F
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public right()F
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public setBottom(F)V
    .registers 4
    .parameter "bottom"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 75
    return-void
.end method

.method public setLeft(F)V
    .registers 4
    .parameter "left"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 67
    return-void
.end method

.method public setRight(F)V
    .registers 4
    .parameter "right"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 83
    return-void
.end method

.method public setTop(F)V
    .registers 4
    .parameter "top"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 59
    return-void
.end method

.method public top()F
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/research/handwriting/base/BoundingBox;->tlbr:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
