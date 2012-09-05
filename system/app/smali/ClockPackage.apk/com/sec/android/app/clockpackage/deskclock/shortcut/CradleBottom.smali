.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;
.super Landroid/widget/FrameLayout;
.source "CradleBottom.java"

# interfaces
.implements Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBarLeftImageView:Landroid/widget/ImageView;

.field private mBarRightImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

.field private mMode:I

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mPrefs:Landroid/content/SharedPreferences;

    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->init()V

    .line 34
    return-void
.end method

.method private cradeLight()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 49
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarLeftImageView:Landroid/widget/ImageView;

    .line 50
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarRightImageView:Landroid/widget/ImageView;

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarLeftImageView:Landroid/widget/ImageView;

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarRightImageView:Landroid/widget/ImageView;

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, layoutParams2:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarRightImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method private init()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->cradeLight()V

    .line 46
    return-void
.end method

.method private setFlingView()V
    .registers 4

    .prologue
    .line 68
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method


# virtual methods
.method public backPressed()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "isHideShortcut"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    .local v0, isHideShortcut:Z
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    if-ne v3, v2, :cond_22

    if-nez v0, :cond_22

    .line 156
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->checkLastChildView()V

    .line 158
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->invalidate()V

    .line 170
    :goto_21
    return v1

    .line 161
    :cond_22
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    if-ne v3, v2, :cond_3e

    if-eqz v0, :cond_3e

    .line 162
    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->checkLastChildView()V

    .line 164
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setMode(I)V

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->invalidate()V

    .line 166
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setVisibility(I)V

    goto :goto_21

    :cond_3e
    move v1, v2

    .line 170
    goto :goto_21
.end method

.method public getDragLayerChildView()Landroid/view/View;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getDragLayerChildView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    return v0
.end method

.method public getShortcuCutHelper()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getShortCutHelper()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    move-result-object v0

    return-object v0
.end method

.method public isEditMode()Z
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    if-nez v0, :cond_6

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public leftRightEdge(FF)V
    .registers 11
    .parameter "currentX"
    .parameter "maxScrollAmount"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 101
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v1, v2

    .line 102
    .local v1, range:I
    const-string v2, "currentX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " range = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_55

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :goto_46
    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_5b

    const/16 v2, 0xa

    if-le v1, v2, :cond_5b

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_54
    return-void

    .line 108
    :cond_55
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarLeftImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_46

    .line 114
    :cond_5b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mBarRightImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_54
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 137
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->reset()V

    .line 94
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_9

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mActivity:Landroid/app/Activity;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->setFlingView()V

    .line 42
    :cond_9
    return-void
.end method

.method public setMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    if-nez v0, :cond_c

    .line 74
    const-string v0, "not del..."

    const-string v1, "flingview null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_b
    return-void

    .line 78
    :cond_c
    iput p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mMode:I

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->setDeleteMode(I)V

    goto :goto_b
.end method

.method public setShortcutHelperView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 178
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;

    .line 179
    .local v0, dragLayerChildView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/CradleBottom;->mFlingView:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;->getShortCutHelper()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutHelper;->setView(Lcom/sec/android/app/clockpackage/deskclock/shortcut/DragLayerChildViewLayout;)V

    .line 181
    return-void
.end method
