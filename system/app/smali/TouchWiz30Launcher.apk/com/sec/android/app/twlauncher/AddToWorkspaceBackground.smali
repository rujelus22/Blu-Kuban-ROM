.class Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;
.super Landroid/widget/FrameLayout;
.source "AddToWorkspaceBackground.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
    }
.end annotation


# instance fields
.field private mHeightProviders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mPageIndicatorTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private getHeightSum()F
    .registers 5

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, sum:F
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;

    .line 61
    .local v1, p:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
    invoke-interface {v1}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;->getBackgroundHeight()F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_7

    .line 63
    .end local v1           #p:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
    :cond_19
    return v2
.end method

.method private init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    check-cast p1, Lcom/sec/android/app/twlauncher/Launcher;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mPageIndicatorTop:I

    .line 42
    return-void
.end method


# virtual methods
.method public addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mHeightProviders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 51
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 17
    .parameter "canvas"

    .prologue
    const/4 v11, 0x1

    const/4 v14, 0x0

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getHeightSum()F

    move-result v5

    .line 68
    .local v5, height:F
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicator()Lcom/sec/android/app/twlauncher/PageIndicator;

    move-result-object v9

    .line 69
    .local v9, pgIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 71
    const/4 v7, 0x0

    .line 73
    .local v7, more:Z
    cmpl-float v10, v5, v14

    if-lez v10, :cond_5d

    .line 76
    if-eqz v9, :cond_3a

    .line 77
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/DragLayer;->getBottom()I

    move-result v10

    float-to-int v12, v5

    sub-int v8, v10, v12

    .line 78
    .local v8, ourTop:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->mPageIndicatorTop:I

    if-le v8, v10, :cond_a4

    move v10, v11

    :goto_37
    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTouchEnabled(Z)V

    .line 80
    .end local v8           #ourTop:I
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 81
    const v10, 0x3f4ccccd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v14, v14, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getBottom()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 86
    :cond_5d
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getChildCount()I

    move-result v2

    .line 88
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_62
    if-ge v6, v2, :cond_af

    .line 89
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_74

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_a1

    .line 92
    :cond_74
    :try_start_74
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v4, v0

    .line 93
    .local v4, glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    invoke-virtual {v1}, Landroid/view/View;->computeScroll()V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 97
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v10

    or-int/2addr v7, v10

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_a1
    .catch Ljava/lang/ClassCastException; {:try_start_74 .. :try_end_a1} :catch_a6

    .line 88
    .end local v4           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :cond_a1
    :goto_a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_62

    .line 78
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v6           #i:I
    .restart local v8       #ourTop:I
    :cond_a4
    const/4 v10, 0x0

    goto :goto_37

    .line 99
    .end local v8           #ourTop:I
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v6       #i:I
    :catch_a6
    move-exception v3

    .line 100
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v10, "AddToWorkspaceBackground"

    const-string v12, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    .line 105
    .end local v1           #child:Landroid/view/View;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :cond_af
    if-nez v7, :cond_be

    cmpl-float v10, v5, v14

    if-nez v10, :cond_be

    .line 106
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    .line 107
    if-eqz v9, :cond_be

    .line 108
    invoke-virtual {v9, v11}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTouchEnabled(Z)V

    .line 110
    :cond_be
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 111
    return v7
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 56
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 121
    sub-int v0, p4, p2

    .line 122
    .local v0, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 123
    .local v1, y:I
    add-int v2, v1, v0

    invoke-super {p0, p1, v1, p3, v2}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v2

    return v2
.end method
