.class public Lcom/sec/android/app/twlauncher/ScrollMenu;
.super Landroid/widget/LinearLayout;
.source "ScrollMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;,
        Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

.field private mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

.field private mTitle:Lcom/sec/android/app/twlauncher/GLTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v1, 0x12c

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 79
    return-void
.end method


# virtual methods
.method public activate(Landroid/widget/ListAdapter;)V
    .registers 6
    .parameter "adapter"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v1, :cond_c

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/GLGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 87
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 89
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    const/high16 v1, 0x4270

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 90
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 91
    return-void
.end method

.method public deactivate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 95
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 97
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 99
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 104
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 8
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, redraw:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 110
    .local v0, factor:F
    cmpl-float v2, v0, v5

    if-lez v2, :cond_be

    .line 111
    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateClipRegion(Landroid/view/View;Z)V

    .line 112
    cmpg-float v2, v0, v3

    if-gez v2, :cond_24

    .line 113
    sub-float v2, v3, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 114
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 116
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7e

    .line 117
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->computeScroll()V

    .line 118
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLTextView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 123
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 124
    const v2, 0x3ecccccd

    invoke-virtual {p1, v5, v5, v5, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 125
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v5, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 126
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 128
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLTextView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 129
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 131
    :cond_7e
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_bb

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_bb

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->computeScroll()V

    .line 133
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLGridView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLGridView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLGridView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLGridView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 137
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 139
    :cond_bb
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 142
    :cond_be
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 143
    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_d0

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLGridView;->awakenScrollBars()Z

    .line 151
    :cond_d0
    :goto_d0
    return v1

    .line 146
    :cond_d1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_d0

    .line 147
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v2, :cond_d0

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/GLGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_d0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 157
    return-void
.end method

.method public getBackgroundHeight()F
    .registers 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getFactor()F
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 183
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLTextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mTitle:Lcom/sec/android/app/twlauncher/GLTextView;

    .line 184
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLGridView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    if-eqz v0, :cond_1f

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mGrid:Lcom/sec/android/app/twlauncher/GLGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    :cond_1f
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    invoke-interface {v0, p0, p3, p4, p5}, Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;->onItemClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)V

    .line 193
    :cond_9
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 197
    .local v0, rc:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

    if-eqz v1, :cond_b

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLongClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;

    invoke-interface {v1, p0, p3, p4, p5}, Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)Z

    move-result v0

    .line 199
    :cond_b
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mClickListener:Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;

    .line 209
    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 3
    .parameter "launcher"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ScrollMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 217
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V

    .line 218
    return-void
.end method
