.class public Lcom/sec/android/app/twlauncher/GenericViewAnim;
.super Ljava/lang/Object;
.source "GenericViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;
    }
.end annotation


# instance fields
.field private mAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLAnim;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstDraw:Z

.field private mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

.field private mOwnerDrawn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    .line 25
    return-void
.end method


# virtual methods
.method public addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .registers 15
    .parameter "aView"
    .parameter "aGLDrawHndlr"
    .parameter "aTransView"
    .parameter "aLstnr"
    .parameter "aSrc"
    .parameter "aDst"
    .parameter "aDuration"

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/twlauncher/GLAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/GLAnim;-><init>(Landroid/view/animation/Interpolator;)V

    .local v0, anim:Lcom/sec/android/app/twlauncher/GLAnim;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 45
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/GLAnim;->setParams(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    .line 46
    invoke-virtual {v0, p4}, Lcom/sec/android/app/twlauncher/GLAnim;->setLstnr(Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 60
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLAnim;

    .line 62
    .local v0, anim:Lcom/sec/android/app/twlauncher/GLAnim;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->forceEnd()V

    goto :goto_0

    .line 64
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GLAnim;
    :cond_15
    return-void
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "aCanvas"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 93
    :goto_7
    return v4

    .line 70
    :cond_8
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v5, :cond_17

    .line 71
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v5, p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimStart(Lcom/sec/android/app/twlauncher/GenericViewAnim;)V

    .line 72
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mFirstDraw:Z

    .line 74
    :cond_17
    const/4 v1, 0x0

    .line 76
    .local v1, count:I
    const/4 v3, 0x0

    .line 77
    .local v3, progress:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_21
    if-ltz v2, :cond_52

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLAnim;

    .line 79
    .local v0, anim:Lcom/sec/android/app/twlauncher/GLAnim;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLAnim;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 80
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getState()I

    move-result v5

    if-ne v4, v5, :cond_4a

    .line 81
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v4, :cond_47

    .line 83
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v4, p0}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GenericViewAnim;)V

    .line 77
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    .line 86
    :cond_4a
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLAnim;->getProgress()F

    move-result v4

    add-float/2addr v3, v4

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 90
    .end local v0           #anim:Lcom/sec/android/app/twlauncher/GLAnim;
    :cond_52
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    if-eqz v4, :cond_5b

    .line 91
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mLstnr:Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;

    invoke-interface {v4, p0, v3}, Lcom/sec/android/app/twlauncher/GenericViewAnim$GenericViewAnimLstnr;->onAnimProgress(Lcom/sec/android/app/twlauncher/GenericViewAnim;F)V

    .line 93
    :cond_5b
    const/4 v4, 0x1

    goto :goto_7
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOwnerDrawn()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    return v0
.end method

.method public removeAnim(Lcom/sec/android/app/twlauncher/GLAnim;)Z
    .registers 3
    .parameter "aAnim"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->forceEnd()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setOwnerDrawn(Z)V
    .registers 2
    .parameter "aOwnerDrawn"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GenericViewAnim;->mOwnerDrawn:Z

    .line 34
    return-void
.end method
