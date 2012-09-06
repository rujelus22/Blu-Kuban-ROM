.class Lcom/google/android/opengl/glview/GLFocusFinder;
.super Ljava/lang/Object;
.source "GLFocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;
    }
.end annotation


# static fields
.field private static tlGLFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/opengl/glview/GLFocusFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBestCandidateRect:Landroid/graphics/RectF;

.field mFocusedRect:Landroid/graphics/RectF;

.field mOtherRect:Landroid/graphics/RectF;

.field mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/opengl/glview/GLFocusFinder$1;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/GLFocusFinder$1;-><init>()V

    sput-object v0, Lcom/google/android/opengl/glview/GLFocusFinder;->tlGLFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mOtherRect:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mBestCandidateRect:Landroid/graphics/RectF;

    .line 37
    new-instance v0, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;-><init>(Lcom/google/android/opengl/glview/GLFocusFinder$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/opengl/glview/GLFocusFinder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLFocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;I)Lcom/google/android/opengl/glview/GLView;
    .registers 14
    .parameter "root"
    .parameter "focused"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    .line 100
    if-nez p3, :cond_d

    .line 101
    new-instance p3, Landroid/graphics/RectF;

    .end local p3
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 102
    .restart local p3
    if-eqz p2, :cond_18

    .line 103
    invoke-virtual {p2, p3}, Lcom/google/android/opengl/glview/GLView;->getFocusedRect(Landroid/graphics/RectF;)V

    .line 110
    :cond_d
    :goto_d
    invoke-virtual {p1, p4, p3}, Lcom/google/android/opengl/glview/GLView;->getFocusables(ILandroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    .local v3, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 177
    :goto_17
    return-object v7

    .line 106
    .end local v3           #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    :cond_18
    invoke-virtual {p1, p3}, Lcom/google/android/opengl/glview/GLView;->getBounds(Landroid/graphics/RectF;)V

    .line 107
    invoke-direct {p0, p3, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->offsetReverse(Landroid/graphics/RectF;I)V

    goto :goto_d

    .line 116
    .restart local v3       #focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    :cond_1f
    const/4 v8, 0x2

    if-eq p4, v8, :cond_25

    const/4 v8, 0x1

    if-ne p4, v8, :cond_85

    .line 117
    :cond_25
    if-eqz p2, :cond_30

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 120
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_30
    :try_start_30
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    invoke-virtual {v8, p1}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->setRoot(Lcom/google/android/opengl/glview/GLView;)V

    .line 126
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    invoke-static {v3, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_58

    .line 128
    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->recycle()V

    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    .local v1, count:I
    packed-switch p4, :pswitch_data_c4

    goto :goto_17

    .line 143
    :pswitch_47
    if-eqz p2, :cond_7c

    .line 144
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 145
    .local v6, position:I
    if-lez v6, :cond_7c

    .line 146
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    goto :goto_17

    .line 128
    .end local v1           #count:I
    .end local v6           #position:I
    :catchall_58
    move-exception v7

    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mSequentialFocusComparator:Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLFocusFinder$SequentialFocusComparator;->recycle()V

    throw v7

    .line 134
    .restart local v1       #count:I
    :pswitch_5f
    if-eqz p2, :cond_74

    .line 135
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 136
    .restart local v6       #position:I
    if-ltz v6, :cond_74

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_74

    .line 137
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    goto :goto_17

    .line 140
    .end local v6           #position:I
    :cond_74
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    goto :goto_17

    .line 149
    :cond_7c
    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/opengl/glview/GLView;

    goto :goto_17

    .line 156
    .end local v1           #count:I
    :cond_85
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mBestCandidateRect:Landroid/graphics/RectF;

    invoke-virtual {v7, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 157
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mBestCandidateRect:Landroid/graphics/RectF;

    invoke-direct {p0, v7, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->offsetReverse(Landroid/graphics/RectF;I)V

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, closest:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 162
    .local v5, numFocusables:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_95
    if-ge v4, v5, :cond_c1

    .line 163
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/opengl/glview/GLView;

    .line 166
    .local v2, focusable:Lcom/google/android/opengl/glview/GLView;
    if-eq v2, p2, :cond_a1

    if-ne v2, p1, :cond_a4

    .line 162
    :cond_a1
    :goto_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 169
    :cond_a4
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mOtherRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v7}, Lcom/google/android/opengl/glview/GLView;->getFocusTargetBounds(Landroid/graphics/RectF;)V

    .line 170
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mOtherRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v7}, Lcom/google/android/opengl/glview/GLView;->offsetDescendantRectToMyCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 172
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mOtherRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mBestCandidateRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p4, p3, v7, v8}, Lcom/google/android/opengl/glview/GLFocusFinder;->isBetterCandidate(ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 173
    iget-object v7, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mBestCandidateRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mOtherRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 174
    move-object v0, v2

    goto :goto_a1

    .end local v2           #focusable:Lcom/google/android/opengl/glview/GLView;
    :cond_c1
    move-object v7, v0

    .line 177
    goto/16 :goto_17

    .line 132
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_47
        :pswitch_5f
    .end packed-switch
.end method

.method public static getInstance()Lcom/google/android/opengl/glview/GLFocusFinder;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/opengl/glview/GLFocusFinder;->tlGLFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/opengl/glview/GLFocusFinder;

    return-object v0
.end method

.method static majorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 370
    sparse-switch p0, :sswitch_data_24

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :sswitch_b
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 378
    :goto_10
    return v0

    .line 374
    :sswitch_11
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 376
    :sswitch_17
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 378
    :sswitch_1d
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 370
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 391
    const/high16 v0, 0x3f80

    invoke-static {p0, p1, p2}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 395
    sparse-switch p0, :sswitch_data_24

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :sswitch_b
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 403
    :goto_10
    return v0

    .line 399
    :sswitch_11
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 401
    :sswitch_17
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 403
    :sswitch_1d
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    goto :goto_10

    .line 395
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F
    .registers 7
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    const/high16 v3, 0x4000

    .line 418
    sparse-switch p0, :sswitch_data_3a

    .line 432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :sswitch_d
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 428
    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_22

    .line 418
    nop

    :sswitch_data_3a
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_23
        0x42 -> :sswitch_d
        0x82 -> :sswitch_23
    .end sparse-switch
.end method

.method private offsetReverse(Landroid/graphics/RectF;I)V
    .registers 6
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 186
    sparse-switch p2, :sswitch_data_2e

    .line 201
    :goto_6
    return-void

    .line 189
    :sswitch_7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    .line 193
    :sswitch_10
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    .line 196
    :sswitch_1a
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    .line 199
    :sswitch_23
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    .line 186
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_10
        0x11 -> :sswitch_7
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_10
        0x82 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 11
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->beamsOverlap(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    .line 254
    .local v0, rect1InSrcBeam:Z
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->beamsOverlap(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    .line 257
    .local v1, rect2InSrcBeam:Z
    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    move v2, v3

    .line 280
    :cond_f
    :goto_f
    return v2

    .line 267
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->isToDirectionOf(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 272
    const/16 v4, 0x11

    if-eq p1, v4, :cond_f

    const/16 v4, 0x42

    if-eq p1, v4, :cond_f

    .line 280
    invoke-static {p1, p2, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v4

    invoke-static {p1, p2, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_f

    move v2, v3

    goto :goto_f
.end method

.method beamsOverlap(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 8
    .parameter "direction"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 330
    sparse-switch p1, :sswitch_data_32

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :sswitch_d
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1e

    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1e

    .line 336
    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    .line 333
    goto :goto_1d

    .line 336
    :sswitch_20
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_30

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1d

    :cond_30
    move v0, v1

    goto :goto_1d

    .line 330
    :sswitch_data_32
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_20
        0x42 -> :sswitch_d
        0x82 -> :sswitch_20
    .end sparse-switch
.end method

.method public final findNextFocus(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;I)Lcom/google/android/opengl/glview/GLView;
    .registers 11
    .parameter "root"
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 52
    if-eqz p2, :cond_20

    .line 54
    invoke-virtual {p2, p1, p3}, Lcom/google/android/opengl/glview/GLView;->findUserSetNextFocus(Lcom/google/android/opengl/glview/GLView;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 55
    .local v4, userSetNextFocus:Lcom/google/android/opengl/glview/GLView;
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->focusable()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 84
    .end local v4           #userSetNextFocus:Lcom/google/android/opengl/glview/GLView;
    :goto_e
    return-object v4

    .line 61
    .restart local v4       #userSetNextFocus:Lcom/google/android/opengl/glview/GLView;
    :cond_f
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v5}, Lcom/google/android/opengl/glview/GLView;->getFocusedRect(Landroid/graphics/RectF;)V

    .line 62
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, v5}, Lcom/google/android/opengl/glview/GLView;->offsetDescendantRectToMyCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 84
    .end local v4           #userSetNextFocus:Lcom/google/android/opengl/glview/GLView;
    :goto_19
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->findNextFocus(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    goto :goto_e

    .line 65
    :cond_20
    sparse-switch p3, :sswitch_data_4c

    goto :goto_19

    .line 77
    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v6

    add-float v0, v5, v6

    .line 78
    .local v0, rootBottom:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v6

    add-float v2, v5, v6

    .line 79
    .local v2, rootRight:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_19

    .line 69
    .end local v0           #rootBottom:F
    .end local v2           #rootRight:F
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v3

    .line 70
    .local v3, rootTop:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v1

    .line 71
    .local v1, rootLeft:F
    iget-object v5, p0, Lcom/google/android/opengl/glview/GLFocusFinder;->mFocusedRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_19

    .line 65
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_3e
        0x11 -> :sswitch_24
        0x21 -> :sswitch_24
        0x42 -> :sswitch_3e
        0x82 -> :sswitch_3e
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;I)Lcom/google/android/opengl/glview/GLView;
    .registers 5
    .parameter "root"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->findNextFocus(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    return-object v0
.end method

.method getWeightedDistanceFor(FF)F
    .registers 5
    .parameter "majorAxisDistance"
    .parameter "minorAxisDistance"

    .prologue
    .line 290
    const/high16 v0, 0x4150

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 10
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/opengl/glview/GLFocusFinder;->isCandidate(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 238
    :cond_9
    :goto_9
    return v0

    .line 223
    :cond_a
    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/opengl/glview/GLFocusFinder;->isCandidate(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 228
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->beamBeats(ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 233
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->beamBeats(ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v0, v1

    .line 234
    goto :goto_9

    .line 238
    :cond_1e
    invoke-static {p1, p2, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v2

    invoke-static {p1, p2, p3}, Lcom/google/android/opengl/glview/GLFocusFinder;->minorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/opengl/glview/GLFocusFinder;->getWeightedDistanceFor(FF)F

    move-result v2

    invoke-static {p1, p2, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->majorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    invoke-static {p1, p2, p4}, Lcom/google/android/opengl/glview/GLFocusFinder;->minorAxisDistance(ILandroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/opengl/glview/GLFocusFinder;->getWeightedDistanceFor(FF)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_9

    move v0, v1

    goto :goto_9
.end method

.method isCandidate(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .registers 8
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    sparse-switch p3, :sswitch_data_76

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :sswitch_d
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1d

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_26

    :cond_1d
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_26

    .line 314
    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    .line 305
    goto :goto_25

    .line 308
    :sswitch_28
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_38

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_40

    :cond_38
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_25

    :cond_40
    move v0, v1

    goto :goto_25

    .line 311
    :sswitch_42
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_52

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5a

    :cond_52
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_25

    :cond_5a
    move v0, v1

    goto :goto_25

    .line 314
    :sswitch_5c
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6c

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_74

    :cond_6c
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_25

    :cond_74
    move v0, v1

    goto :goto_25

    .line 303
    :sswitch_data_76
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_42
        0x42 -> :sswitch_28
        0x82 -> :sswitch_5c
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 8
    .parameter "direction"
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 346
    sparse-switch p1, :sswitch_data_36

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :sswitch_d
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_16

    .line 354
    :cond_15
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 348
    goto :goto_15

    .line 350
    :sswitch_18
    iget v2, p2, Landroid/graphics/RectF;->right:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_15

    move v0, v1

    goto :goto_15

    .line 352
    :sswitch_22
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_15

    move v0, v1

    goto :goto_15

    .line 354
    :sswitch_2c
    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_15

    move v0, v1

    goto :goto_15

    .line 346
    :sswitch_data_36
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_22
        0x42 -> :sswitch_18
        0x82 -> :sswitch_2c
    .end sparse-switch
.end method
