.class public final Lcom/google/android/apps/plus/util/QuickActions;
.super Ljava/lang/Object;
.source "QuickActions.java"


# direct methods
.method private static computeYOffset(Landroid/view/View;Landroid/view/View;Z)I
    .registers 10
    .parameter "view"
    .parameter "container"
    .parameter "showAbove"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 74
    new-array v2, v4, [I

    .line 75
    .local v2, viewLocation:[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 76
    aget v1, v2, v6

    .line 78
    .local v1, displayY:I
    if-eqz p1, :cond_26

    .line 79
    new-array v0, v4, [I

    .line 80
    .local v0, containerLocation:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 81
    aget v4, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    aget v5, v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 84
    .end local v0           #containerLocation:[I
    :cond_26
    if-eqz p2, :cond_3e

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 87
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    sub-int v1, v4, v1

    .line 89
    .end local v1           #displayY:I
    .end local v3           #windowManager:Landroid/view/WindowManager;
    :cond_3e
    return v1
.end method

.method public static show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;Z)Landroid/app/Dialog;
    .registers 13
    .parameter "view"
    .parameter "container"
    .parameter "menuInfo"
    .parameter "builder"
    .parameter "listener"
    .parameter "vertical"

    .prologue
    .line 22
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/util/QuickActions;->show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;ZZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/view/View;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/View$OnCreateContextMenuListener;Landroid/view/MenuItem$OnMenuItemClickListener;ZZ)Landroid/app/Dialog;
    .registers 25
    .parameter "view"
    .parameter "container"
    .parameter "menuInfo"
    .parameter "builder"
    .parameter "listener"
    .parameter "vertical"
    .parameter "showAbove"

    .prologue
    .line 45
    if-nez p3, :cond_8

    .line 46
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 48
    :cond_8
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 49
    .local v12, viewLocation:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 50
    const/4 v4, 0x0

    aget v13, v12, v4

    .line 51
    .local v13, viewX:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 53
    .local v14, windowManager:Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 55
    .local v10, displayWidth:I
    div-int/lit8 v4, v10, 0x2

    if-ge v13, v4, :cond_74

    const/4 v7, 0x1

    .line 56
    .local v7, leftAligned:Z
    :goto_2c
    if-eqz v7, :cond_76

    move v15, v13

    .line 58
    .local v15, xOffset:I
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/QuickActions;->computeYOffset(Landroid/view/View;Landroid/view/View;Z)I

    move-result v17

    .line 60
    .local v17, yOffset:I
    new-instance v3, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;-><init>(Landroid/content/Context;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;ZZZ)V

    .line 62
    .local v3, menu:Lcom/google/android/apps/plus/util/QuickActionsContextMenu;
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v3, v1, v2}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 65
    .local v11, dpToPxScale:F
    const/high16 v4, -0x3f40

    mul-float/2addr v4, v11

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v16, v0

    .line 66
    .local v16, yCorrection:I
    if-eqz p6, :cond_6e

    const/16 v16, 0x0

    .end local v16           #yCorrection:I
    :cond_6e
    add-int v4, v17, v16

    invoke-virtual {v3, v15, v4}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->showAnchoredAt(II)V

    .line 67
    return-object v3

    .line 55
    .end local v3           #menu:Lcom/google/android/apps/plus/util/QuickActionsContextMenu;
    .end local v7           #leftAligned:Z
    .end local v11           #dpToPxScale:F
    .end local v15           #xOffset:I
    .end local v17           #yOffset:I
    :cond_74
    const/4 v7, 0x0

    goto :goto_2c

    .line 56
    .restart local v7       #leftAligned:Z
    :cond_76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v13

    sub-int v15, v10, v4

    goto :goto_2f
.end method
