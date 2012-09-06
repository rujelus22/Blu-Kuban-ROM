.class public Lcom/google/research/handwriting/gui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;
    }
.end annotation


# static fields
.field private static final BACKSPACE_MIN_WIDTH:I = 0x32

.field private static final HORIZONTAL_GEST_MAX_HEIGHT_TO_WIDTH_RATIO:F = 0.3f

.field private static final SPACE_MIN_WIDTH:I = 0xc8


# instance fields
.field private backspaceGestureEnabled:Z

.field private spaceGestureEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->backspaceGestureEnabled:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->spaceGestureEnabled:Z

    return-void
.end method

.method private isBackspaceGesture(Lcom/google/research/handwriting/base/Stroke;Lcom/google/research/handwriting/base/StrokeList;)Z
    .registers 11
    .parameter "gesture"
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0, p1, v5}, Lcom/google/research/handwriting/gui/GestureRecognizer;->isHorizontalLine(Lcom/google/research/handwriting/base/Stroke;Z)Z

    move-result v6

    if-nez v6, :cond_9

    .line 176
    :cond_8
    :goto_8
    return v4

    .line 153
    :cond_9
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p1}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/Stroke;)V

    .line 154
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getWidth()F

    move-result v3

    .line 155
    .local v3, gestureWidth:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getHeight()F

    move-result v2

    .line 158
    .local v2, gestureHeight:F
    const v6, 0x3e99999a

    mul-float/2addr v6, v3

    cmpl-float v6, v2, v6

    if-gtz v6, :cond_8

    const/high16 v6, 0x4248

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_8

    .line 164
    invoke-virtual {p2}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2c

    move v4, v5

    .line 165
    goto :goto_8

    .line 168
    :cond_2c
    new-instance v1, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v1, p2}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 170
    .local v1, contextBB:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->right()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/BoundingBox;->right()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_8

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v6

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_8

    move v4, v5

    .line 176
    goto :goto_8
.end method

.method private isHorizontalLine(Lcom/google/research/handwriting/base/Stroke;Z)Z
    .registers 8
    .parameter "gesture"
    .parameter "rightToLeft"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/base/Stroke$Point;>;"
    const/4 v2, 0x0

    .line 98
    .local v2, previousX:F
    if-eqz p2, :cond_b

    .line 99
    const v2, 0x7f7fffff

    .line 102
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/handwriting/base/Stroke$Point;

    iget v0, v3, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    .line 105
    .local v0, currentX:F
    if-eqz p2, :cond_21

    cmpg-float v3, v2, v0

    if-gez v3, :cond_21

    move v3, v4

    .line 112
    .end local v0           #currentX:F
    :goto_20
    return v3

    .line 107
    .restart local v0       #currentX:F
    :cond_21
    if-nez p2, :cond_29

    cmpl-float v3, v2, v0

    if-lez v3, :cond_29

    move v3, v4

    .line 108
    goto :goto_20

    .line 110
    :cond_29
    move v2, v0

    goto :goto_b

    .line 112
    .end local v0           #currentX:F
    :cond_2b
    const/4 v3, 0x1

    goto :goto_20
.end method

.method private isSpaceGesture(Lcom/google/research/handwriting/base/Stroke;)Z
    .registers 7
    .parameter "gesture"

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, p1, v3}, Lcom/google/research/handwriting/gui/GestureRecognizer;->isHorizontalLine(Lcom/google/research/handwriting/base/Stroke;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 137
    :cond_7
    :goto_7
    return v3

    .line 126
    :cond_8
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p1}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/Stroke;)V

    .line 127
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getWidth()F

    move-result v2

    .line 128
    .local v2, gestureWidth:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getHeight()F

    move-result v1

    .line 131
    .local v1, gestureHeight:F
    const v4, 0x3e99999a

    mul-float/2addr v4, v2

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_7

    const/high16 v4, 0x4348

    cmpg-float v4, v2, v4

    if-ltz v4, :cond_7

    .line 137
    const/4 v3, 0x1

    goto :goto_7
.end method


# virtual methods
.method public recognizeLastStrokeGesture(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;
    .registers 4
    .parameter "strokes"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->NOT_A_GESTURE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    .line 84
    :goto_8
    return-object v1

    .line 71
    :cond_9
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/google/research/handwriting/base/StrokeList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/base/Stroke;

    .line 72
    .local v0, lastStroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {p1}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/google/research/handwriting/base/StrokeList;->remove(I)Ljava/lang/Object;

    .line 74
    iget-boolean v1, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->backspaceGestureEnabled:Z

    if-eqz v1, :cond_2b

    invoke-direct {p0, v0, p1}, Lcom/google/research/handwriting/gui/GestureRecognizer;->isBackspaceGesture(Lcom/google/research/handwriting/base/Stroke;Lcom/google/research/handwriting/base/StrokeList;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 75
    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_BACKSPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    goto :goto_8

    .line 78
    :cond_2b
    iget-boolean v1, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->spaceGestureEnabled:Z

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/gui/GestureRecognizer;->isSpaceGesture(Lcom/google/research/handwriting/base/Stroke;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 79
    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->GEST_SPACE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    goto :goto_8

    .line 83
    :cond_38
    invoke-virtual {p1, v0}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->NOT_A_GESTURE:Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    goto :goto_8
.end method

.method setBackspaceGestureEnabled(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->backspaceGestureEnabled:Z

    .line 50
    return-void
.end method

.method setSpaceGestureEnabled(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/GestureRecognizer;->spaceGestureEnabled:Z

    .line 54
    return-void
.end method
