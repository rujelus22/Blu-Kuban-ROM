.class public Lcom/sec/android/touchwiz/widget/TwWoodTabHost;
.super Landroid/widget/FrameLayout;
.source "TwWoodTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IntentContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$FactoryContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIdContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$LabelIndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabContentFactory;,
        Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 62
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 68
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 62
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 73
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    return-object v0
.end method

.method private initTabHost()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setFocusableInTouchMode(Z)V

    .line 78
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setDescendantFocusability(I)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 82
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    if-eqz v0, :cond_d

    .line 371
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 373
    :cond_d
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)V
    .registers 6
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 198
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_f

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_f
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1d
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 210
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mIndicatorStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$200(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_37

    .line 211
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setDrawBottomStrips(Z)V

    .line 213
    :cond_37
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->addView(Landroid/view/View;)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    .line 217
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 219
    :cond_49
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->removeAllViews()V

    .line 227
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->initTabHost()V

    .line 228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->invalidate()V

    .line 232
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 283
    .local v0, handled:Z
    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_42

    .line 289
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 290
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->playSoundEffect(I)V

    .line 291
    const/4 v0, 0x1

    .line 293
    .end local v0           #handled:Z
    :cond_42
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 300
    return-void
.end method

.method public getCurrentTab()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getCurrentTabView()Landroid/view/View;
    .registers 3

    .prologue
    .line 250
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 251
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    .registers 4
    .parameter "tag"

    .prologue
    .line 89
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;Ljava/lang/String;Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 165
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 168
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 174
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 175
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 177
    :cond_c
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 183
    if-nez p1, :cond_21

    .line 186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 187
    :cond_16
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 190
    :cond_21
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 303
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 357
    :cond_b
    :goto_b
    return-void

    .line 307
    :cond_c
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_b

    .line 312
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_25

    .line 313
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;->tabClosed()V

    .line 316
    :cond_25
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    .line 317
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    .line 321
    .local v0, spec:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->focusCurrentTab(I)V

    .line 324
    #getter for: Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->mContentStrategy:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->access$300(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;)Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    .line 326
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_54

    .line 327
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :cond_54
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_61

    .line 338
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 341
    :cond_61
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mCurrentTab:I

    packed-switch v1, :pswitch_data_8e

    .line 356
    :goto_66
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->invokeOnTabChangeListener()V

    goto :goto_b

    .line 343
    :pswitch_6a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x202011e

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_66

    .line 346
    :pswitch_73
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x202011f

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_66

    .line 349
    :pswitch_7c
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x2020120

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_66

    .line 352
    :pswitch_85
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    const v2, 0x2020121

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setBackgroundResource(I)V

    goto :goto_66

    .line 341
    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_73
        :pswitch_7c
        :pswitch_85
    .end packed-switch
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 263
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 264
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setCurrentTab(I)V

    .line 268
    :cond_1e
    return-void

    .line 262
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mOnTabChangeListener:Lcom/sec/android/touchwiz/widget/TwWoodTabHost$OnTabChangeListener;

    .line 367
    return-void
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 104
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    if-nez v0, :cond_17

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_17
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$1;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 130
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost$2;-><init>(Lcom/sec/android/touchwiz/widget/TwWoodTabHost;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwWoodTabWidget;->setTabSelectionListener(Lcom/sec/android/touchwiz/widget/TwWoodTabWidget$OnTabSelectionChanged;)V

    .line 139
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 140
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    const v1, 0x202011d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_47

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_47
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .registers 2
    .parameter "activityGroup"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->setup()V

    .line 157
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwWoodTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 158
    return-void
.end method
