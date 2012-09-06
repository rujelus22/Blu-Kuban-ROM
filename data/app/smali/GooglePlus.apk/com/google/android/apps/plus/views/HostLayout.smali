.class public Lcom/google/android/apps/plus/views/HostLayout;
.super Landroid/widget/FrameLayout;
.source "HostLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;
.implements Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

.field private mNavigationBar:Landroid/view/View;

.field private mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 62
    return-void
.end method


# virtual methods
.method public attachActionBar()V
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 236
    .local v0, currentFragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_15

    .line 237
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostActionBar;->reset()V

    .line 238
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/HostedFragment;->attachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 239
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/HostActionBar;->commit()V

    .line 241
    :cond_15
    return-void
.end method

.method public getActionBar()Lcom/google/android/apps/plus/views/HostActionBar;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    return-object v0
.end method

.method public getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v1, "hosted"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/HostedFragment;

    return-object v0
.end method

.method public getNavigationBar()Landroid/view/View;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    return-object v0
.end method

.method public hideNavigationBar()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isOpen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 176
    :goto_8
    return-void

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    if-eqz v0, :cond_13

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;->onNavigationBarVisibilityChange(Z)V

    .line 175
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->close()V

    goto :goto_8
.end method

.method public isNavigationBarVisible()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isOpen()Z

    move-result v0

    return v0
.end method

.method public onActionBarInvalidated()V
    .registers 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->attachActionBar()V

    .line 249
    return-void
.end method

.method public onActionButtonClicked(I)V
    .registers 3
    .parameter "actionId"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 279
    .local v0, currentFragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_9

    .line 280
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onActionButtonClicked(I)V

    .line 282
    :cond_9
    return-void
.end method

.method public onAttachFragment(Lcom/google/android/apps/plus/phone/HostedFragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->attachActionBar(Lcom/google/android/apps/plus/views/HostActionBar;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/HostActionBar;->commit()V

    .line 229
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f09011d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/HostActionBar;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/HostActionBar;->setHostActionBarListener(Lcom/google/android/apps/plus/views/HostActionBar$HostActionBarListener;)V

    .line 90
    const v0, 0x7f09013b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    .line 91
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/HostLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->setOnSlidingPanelStateChange(Lcom/google/android/apps/plus/views/SlidingPanelLayout$OnSlidingPanelStateChange;)V

    .line 93
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 115
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    :goto_f
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 120
    :cond_2b
    return-void

    .line 115
    :cond_2c
    const/16 v0, 0x8

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getMeasuredHeight()I

    move-result v0

    .line 101
    .local v0, height:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_24

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->getNavigationBarWidth()I

    move-result v1

    .line 103
    .local v1, navigationBarWidth:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 107
    .end local v1           #navigationBarWidth:I
    :cond_24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 302
    .local v0, fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_b

    .line 303
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 306
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onPanelClosed()V
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    if-eqz v0, :cond_11

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;->onNavigationBarVisibilityChange(Z)V

    .line 348
    :cond_11
    return-void
.end method

.method public onPanelOpened()V
    .registers 1

    .prologue
    .line 335
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 291
    .local v0, fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_9

    .line 292
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 294
    :cond_9
    return-void
.end method

.method public onPrimarySpinnerSelectionChange(I)V
    .registers 3
    .parameter "selectedPosition"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 257
    .local v0, currentFragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_9

    .line 258
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->onPrimarySpinnerSelectionChange(I)V

    .line 260
    :cond_9
    return-void
.end method

.method public onRefreshButtonClicked()V
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 268
    .local v0, currentFragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_9

    .line 269
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->refresh()V

    .line 271
    :cond_9
    return-void
.end method

.method public saveHostedFragmentState()Landroid/support/v4/app/Fragment$SavedState;
    .registers 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 324
    .local v0, fragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_d

    .line 325
    iget-object v1, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v1

    .line 327
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setListener(Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    .line 78
    return-void
.end method

.method public showFragment(Lcom/google/android/apps/plus/phone/HostedFragment;ZLandroid/support/v4/app/Fragment$SavedState;)V
    .registers 8
    .parameter "fragment"
    .parameter "animated"
    .parameter "savedState"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->getCurrentHostedFragment()Lcom/google/android/apps/plus/phone/HostedFragment;

    move-result-object v0

    .line 199
    .local v0, currentFragment:Lcom/google/android/apps/plus/phone/HostedFragment;
    if-eqz v0, :cond_9

    .line 200
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/HostedFragment;->detachActionBar()V

    .line 203
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostActionBar;->reset()V

    .line 205
    if-eqz p3, :cond_13

    .line 206
    invoke-virtual {p1, p3}, Lcom/google/android/apps/plus/phone/HostedFragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 208
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 209
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0900d1

    const-string v3, "hosted"

    invoke-virtual {v1, v2, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 210
    if-eqz p2, :cond_37

    .line 211
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 215
    :goto_28
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 219
    invoke-virtual {p1}, Lcom/google/android/apps/plus/phone/HostedFragment;->recordNavigationAction()V

    .line 220
    return-void

    .line 213
    :cond_37
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_28
.end method

.method public showNavigationBar()V
    .registers 5

    .prologue
    .line 141
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 161
    :goto_8
    return-void

    .line 145
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    if-eqz v2, :cond_13

    .line 146
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mListener:Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/views/HostLayout$HostLayoutListener;->onNavigationBarVisibilityChange(Z)V

    .line 149
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostActionBar;->dismissPopupMenus()V

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mActionBar:Lcom/google/android/apps/plus/views/HostActionBar;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/HostActionBar;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, rootView:Landroid/view/View;
    if-eqz v1, :cond_29

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_29

    .line 155
    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 159
    .end local v0           #focus:Landroid/view/View;
    :cond_29
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mNavigationBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v2, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->open()V

    goto :goto_8
.end method

.method public showNavigationBarDelayed()V
    .registers 4

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/apps/plus/views/HostLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/HostLayout$1;-><init>(Lcom/google/android/apps/plus/views/HostLayout;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/plus/views/HostLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method

.method public toggleNavigationBarVisibility()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/views/HostLayout;->mPanel:Lcom/google/android/apps/plus/views/SlidingPanelLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanelLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->hideNavigationBar()V

    .line 135
    :goto_b
    return-void

    .line 133
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostLayout;->showNavigationBar()V

    goto :goto_b
.end method
