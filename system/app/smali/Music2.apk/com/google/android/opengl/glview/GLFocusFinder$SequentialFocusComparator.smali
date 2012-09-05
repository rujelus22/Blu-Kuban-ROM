.class final Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;
.super Ljava/lang/Object;
.source "GLFocusFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLFocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SequentialFocusComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/opengl/glview/GLView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFirstRect:Landroid/graphics/RectF;

.field private mRoot:Lcom/google/android/opengl/glview/GLView;

.field private final mSecondRect:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    .line 442
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLFocusFinder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;-><init>()V

    return-void
.end method

.method private getRect(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "view"
    .parameter "rect"

    .prologue
    .line 486
    invoke-virtual {p1, p2}, Lcom/google/android/opengl/glview/GLView;->getDrawingRect(Landroid/graphics/RectF;)V

    .line 487
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mRoot:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->offsetDescendantRectToMyCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 488
    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)I
    .registers 8
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 454
    if-ne p1, p2, :cond_6

    .line 481
    :cond_5
    :goto_5
    return v0

    .line 458
    :cond_6
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v3}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->getRect(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 459
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v3}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->getRect(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 461
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1e

    move v0, v1

    .line 462
    goto :goto_5

    .line 463
    :cond_1e
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2c

    move v0, v2

    .line 464
    goto :goto_5

    .line 465
    :cond_2c
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    move v0, v1

    .line 466
    goto :goto_5

    .line 467
    :cond_3a
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_48

    move v0, v2

    .line 468
    goto :goto_5

    .line 469
    :cond_48
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_56

    move v0, v1

    .line 470
    goto :goto_5

    .line 471
    :cond_56
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_64

    move v0, v2

    .line 472
    goto :goto_5

    .line 473
    :cond_64
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_72

    move v0, v1

    .line 474
    goto :goto_5

    .line 475
    :cond_72
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mFirstRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mSecondRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    move v0, v2

    .line 476
    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 440
    check-cast p1, Lcom/google/android/opengl/glview/GLView;

    .end local p1
    check-cast p2, Lcom/google/android/opengl/glview/GLView;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->compare(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mRoot:Lcom/google/android/opengl/glview/GLView;

    .line 447
    return-void
.end method

.method public setRoot(Lcom/google/android/opengl/glview/GLView;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->mRoot:Lcom/google/android/opengl/glview/GLView;

    .line 451
    return-void
.end method
