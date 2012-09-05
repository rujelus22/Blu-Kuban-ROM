.class public abstract Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
.super Landroid/widget/LinearLayout;
.source "AbsViewFlipper.java"


# static fields
.field private static INDEX_SPLIT_BAR:I


# instance fields
.field protected mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

.field protected mOrientation:I

.field protected mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

.field protected mTab:Lcom/sec/android/socialhub/state/tab/TabState;

.field protected params:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->INDEX_SPLIT_BAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    .line 31
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    iput v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mOrientation:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    .line 31
    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    iput v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mOrientation:I

    .line 45
    return-void
.end method

.method private moveSplitBar(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getSplitBar()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->moveSplitBar(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 256
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onMoveSplitBar(Landroid/view/MotionEvent;)V

    .line 257
    return-void
.end method


# virtual methods
.method public changeSplitViewMode(ZI)V
    .registers 10
    .parameter "bSplit"
    .parameter "gwWidth"

    .prologue
    const/4 v5, -0x1

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getScreenWidth()I

    move-result v4

    sub-int v1, v4, p2

    .line 130
    .local v1, destWidth:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 131
    .local v0, destView:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 132
    .local v2, gwView:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getSplitBar()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 134
    .local v3, splitBar:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_47

    if-eqz v2, :cond_47

    .line 136
    const/4 v4, 0x1

    if-ne p1, v4, :cond_33

    .line 138
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, p2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_2a
    if-eqz v3, :cond_32

    .line 149
    if-eqz p1, :cond_44

    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    :cond_32
    :goto_32
    return-void

    .line 143
    :cond_33
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    .line 149
    :cond_44
    const/16 v4, 0x8

    goto :goto_2f

    .line 154
    :cond_47
    const-string v4, "AbsViewFlipper"

    const-string v5, "changeSplitViewMode()"

    const-string v6, "some view is null!!"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v1

    if-ne v1, v0, :cond_13

    iget v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 295
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_17
    return v0

    .line 274
    :pswitch_18
    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getSplitBar()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getView()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, p1}, Lcom/sec/android/socialhub/split/HubFragmentResizer;->isSplitSelected(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_13

    .line 276
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onSplitBarSelected(ZLandroid/view/MotionEvent;)V

    goto :goto_17

    .line 282
    :pswitch_30
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getSplitSelected()Z

    move-result v1

    if-ne v1, v0, :cond_13

    .line 284
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->moveSplitBar(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 290
    :pswitch_3a
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->onSplitBarSelected(ZLandroid/view/MotionEvent;)V

    goto :goto_13

    .line 271
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_3a
        :pswitch_30
    .end packed-switch
.end method

.method public abstract getAddAccountView()Landroid/widget/LinearLayout;
.end method

.method public abstract getGatewayView()Landroid/widget/LinearLayout;
.end method

.method public getNoSelectedView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    return-object v0
.end method

.method public getScreenWidth()I
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getSplitBar()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    return-object v0
.end method

.method public abstract getView()Landroid/widget/LinearLayout;
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mOrientation:I

    .line 264
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 107
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 109
    .local v1, layout:Landroid/widget/LinearLayout;
    instance-of v2, v1, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    if-eqz v2, :cond_1a

    .line 110
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/socialhub/parent/ISocialHubListView;

    invoke-interface {v2}, Lcom/sec/android/socialhub/parent/ISocialHubListView;->onDestroy()V

    .line 105
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    .end local v1           #layout:Landroid/widget/LinearLayout;
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->removeAllViews()V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->removeAllViewsInLayout()V

    .line 115
    return-void
.end method

.method public onInitComplete(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 50
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->isSupportSplitView()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 55
    new-instance v1, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    invoke-direct {v1, p1}, Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    .line 56
    new-instance v1, Lcom/sec/android/socialhub/split/HubSplitBar;

    invoke-direct {v1, p1}, Lcom/sec/android/socialhub/split/HubSplitBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    .line 58
    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mNoSelectedView:Lcom/sec/android/socialhub/split/HubNoAccountSelectedView;

    iget-object v2, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    sget v2, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->INDEX_SPLIT_BAR:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_2a
    const/4 v0, 0x0

    .local v0, index:I
    :goto_2b
    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 68
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 70
    :cond_3f
    return-void
.end method

.method protected onMoveSplitBar(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "event"

    .prologue
    .line 229
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    if-eqz v0, :cond_16

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onPause()V

    .line 101
    :cond_16
    :goto_16
    return-void

    .line 99
    :cond_17
    const-string v0, "AbsViewFlipper"

    const-string v1, "onPause()"

    const-string v2, "Context is different!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public onResume(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    if-eqz v0, :cond_15

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mTab:Lcom/sec/android/socialhub/state/tab/TabState;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/TabState;->onResume()V

    .line 86
    :cond_15
    :goto_15
    return-void

    .line 83
    :cond_16
    const-string v0, "AbsViewFlipper"

    const-string v1, "onResume()"

    const-string v2, "Context is different!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected onSplitBarSelected(ZLandroid/view/MotionEvent;)V
    .registers 5
    .parameter "bSelected"
    .parameter "event"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    if-eqz v0, :cond_21

    .line 241
    invoke-static {}, Lcom/sec/android/socialhub/split/HubSplitSetting;->getSplitSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 243
    if-nez p1, :cond_19

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSplitWidth(II)V

    .line 248
    :cond_19
    invoke-static {p1}, Lcom/sec/android/socialhub/split/HubSplitSetting;->setSplitSelected(Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->mSplitBar:Lcom/sec/android/socialhub/split/HubSplitBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/split/HubSplitBar;->setSelected(Z)V

    .line 251
    :cond_21
    return-void
.end method
