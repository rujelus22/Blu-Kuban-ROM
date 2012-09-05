.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
.super Landroid/widget/FrameLayout;
.source "DragLayerChildViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlert:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDelImageView:Landroid/widget/ImageView;

.field private mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

.field private mIsClick:Z

.field private mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;)V
    .registers 3
    .parameter "context"
    .parameter "shortCutHelper"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z

    return p1
.end method

.method private createShorcutDeleteAlert()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    move-object v1, p0

    .line 187
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0b00f4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00f5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b0

    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;Landroid/view/View;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    const v2, 0x7f0b00b1

    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 212
    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$3;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mAlert:Landroid/app/AlertDialog;

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mAlert:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 225
    return-void
.end method

.method private init()V
    .registers 12

    .prologue
    const v10, 0x7f090043

    const/16 v9, 0x31

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 35
    new-instance v4, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mShortCutHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;-><init>(Landroid/content/Context;Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 39
    .local v1, dragLayerChildViewHeight:I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 46
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 50
    .local v0, delWidthHeight:I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v3, layoutParams2:Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 57
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    const v5, 0x7f020093

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 61
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    const-string v5, "Delete shortcut"

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setHorizontalFadingEdgeEnabled(Z)V

    .line 68
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setFadingEdgeLength(I)V

    .line 69
    invoke-virtual {p0, v8}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setWillNotDraw(Z)V

    .line 70
    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 73
    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getDragLayerChildView()Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    return-object v0
.end method

.method public getViewId()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->getViewId()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z

    if-nez v0, :cond_a

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->createShorcutDeleteAlert()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mIsClick:Z

    .line 146
    :cond_a
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 156
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 157
    return-void
.end method

.method protected setColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setColor(I)V

    .line 95
    return-void
.end method

.method public setDelVisible(I)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    if-nez p1, :cond_14

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setDeletemode(Z)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    .line 132
    :goto_13
    return-void

    .line 129
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setDeletemode(Z)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setClickable(Z)V

    goto :goto_13
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setGravity(I)V

    .line 115
    return-void
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "text"
    .parameter "top"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .parameter "text"
    .parameter "top"
    .parameter "color"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 91
    return-void
.end method

.method public setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 5
    .parameter "text"
    .parameter "top"
    .parameter "className"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setSingleLine()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setSingleLine()V

    .line 119
    return-void
.end method

.method public setViewId(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;->mDragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildView;->setViewId(I)V

    .line 107
    return-void
.end method
