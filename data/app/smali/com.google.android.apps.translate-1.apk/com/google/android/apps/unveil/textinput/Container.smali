.class Lcom/google/android/apps/unveil/textinput/Container;
.super Landroid/view/ViewGroup;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/Container$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private listener:Lcom/google/android/apps/unveil/textinput/Container$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .registers 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/Container;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 57
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 42
    sget-object v2, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "layout at %d, %d, %d, %d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/Container;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 44
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/Container;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/android/apps/unveil/textinput/R$id;->non_stretchable:I

    if-ne v2, v3, :cond_45

    .line 46
    sub-int v2, p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 43
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 47
    :cond_45
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/android/apps/unveil/textinput/R$id;->stretchable:I

    if-ne v2, v3, :cond_57

    .line 48
    sub-int v2, p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_42

    .line 50
    :cond_57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Illegal child in Container."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    .end local v0           #child:Landroid/view/View;
    :cond_5f
    return-void
.end method

.method public onMeasure(II)V
    .registers 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 67
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getMeasuredWidth()I

    move-result v9

    .line 69
    .local v9, measuredWidth:I
    sget-object v18, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v19, "measured width is %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getMeasuredHeight()I

    move-result v8

    .line 71
    .local v8, measuredHeight:I
    move/from16 v11, p2

    .line 73
    .local v11, nonStretchableHeightSpec:I
    sget v18, Lcom/google/android/apps/unveil/textinput/R$id;->camera_manager:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/Container;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 75
    .local v3, cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getContext()Landroid/content/Context;

    move-result-object v18

    const-string v19, "window"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 78
    .local v17, wm:Landroid/view/WindowManager;
    new-instance v15, Landroid/graphics/Point;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getWidth()I

    move-result v18

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Display;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 81
    .local v15, screenSize:Landroid/graphics/Point;
    int-to-float v0, v9

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v2, v0

    .line 82
    .local v2, calculatedHeight:I
    new-instance v18, Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setFullScreenDisplaySize(Lcom/google/android/apps/unveil/env/Size;)V

    .line 83
    invoke-virtual {v3, v9, v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getOptimalPreviewSize(II)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v12

    .line 86
    .local v12, previewSize:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getDisplayRotation()I

    move-result v18

    if-eqz v18, :cond_93

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getDisplayRotation()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a5

    .line 89
    :cond_93
    new-instance v13, Lcom/google/android/apps/unveil/env/Size;

    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v18, v0

    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    .end local v12           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    .local v13, previewSize:Lcom/google/android/apps/unveil/env/Size;
    move-object v12, v13

    .line 92
    .end local v13           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    .restart local v12       #previewSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_a5
    if-eqz v12, :cond_102

    .line 93
    int-to-float v0, v9

    move/from16 v18, v0

    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 94
    .local v14, ratio:F
    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v5, v0

    .line 95
    .local v5, h:I
    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 96
    sget-object v18, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v19, "preview size is %dx%d, non-stretchable size is %dx%d"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget v0, v12, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .end local v5           #h:I
    .end local v14           #ratio:F
    :cond_102
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 101
    .local v10, mode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 102
    .local v16, size:I
    sget-object v19, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v20, "suggested height mode is %s, size is %d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/high16 v18, -0x8000

    move/from16 v0, v18

    if-ne v10, v0, :cond_175

    const-string v18, "atmost"

    :goto_120
    aput-object v18, v21, v22

    const/16 v18, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v18

    invoke-virtual/range {v19 .. v21}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v18, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v19, "stretchable height is %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    if-nez v10, :cond_148

    .line 107
    move/from16 v16, v8

    .line 109
    :cond_148
    const/high16 v18, 0x4000

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 111
    .local v6, heightSpec:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/textinput/Container;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_19b

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/apps/unveil/textinput/Container;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 113
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v18

    sget v19, Lcom/google/android/apps/unveil/textinput/R$id;->non_stretchable:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_181

    .line 114
    move/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Landroid/view/View;->measure(II)V

    .line 111
    :goto_172
    add-int/lit8 v7, v7, 0x1

    goto :goto_153

    .line 102
    .end local v4           #child:Landroid/view/View;
    .end local v6           #heightSpec:I
    .end local v7           #i:I
    :cond_175
    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-ne v10, v0, :cond_17e

    const-string v18, "exactly"

    goto :goto_120

    :cond_17e
    const-string v18, "undefined"

    goto :goto_120

    .line 115
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #heightSpec:I
    .restart local v7       #i:I
    :cond_181
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v18

    sget v19, Lcom/google/android/apps/unveil/textinput/R$id;->stretchable:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_193

    .line 116
    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/view/View;->measure(II)V

    goto :goto_172

    .line 118
    :cond_193
    new-instance v18, Ljava/lang/RuntimeException;

    const-string v19, "Illegal child in Container."

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 121
    .end local v4           #child:Landroid/view/View;
    :cond_19b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/google/android/apps/unveil/textinput/Container;->setMeasuredDimension(II)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/Container;->listener:Lcom/google/android/apps/unveil/textinput/Container$Listener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b3

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/Container;->listener:Lcom/google/android/apps/unveil/textinput/Container$Listener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/apps/unveil/textinput/Container$Listener;->onReady()V

    .line 126
    :cond_1b3
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 8
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 62
    sget-object v0, Lcom/google/android/apps/unveil/textinput/Container;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onVisibilityChanged(%s, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setListener(Lcom/google/android/apps/unveil/textinput/Container$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/Container;->listener:Lcom/google/android/apps/unveil/textinput/Container$Listener;

    .line 37
    return-void
.end method
