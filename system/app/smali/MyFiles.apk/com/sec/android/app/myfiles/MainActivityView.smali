.class public Lcom/sec/android/app/myfiles/MainActivityView;
.super Landroid/widget/FrameLayout;
.source "MainActivityView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/MainActivityView$1;,
        Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;,
        Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;,
        Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;
    }
.end annotation


# static fields
.field public static sCurrentTab:I


# instance fields
.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    .line 32
    iput-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    .line 34
    iput-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->initMainActivityView()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    .line 32
    iput-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    .line 34
    iput-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->initMainActivityView()V

    .line 47
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/MainActivityView;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initMainActivityView()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivityView;->setFocusableInTouchMode(Z)V

    .line 51
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivityView;->setDescendantFocusability(I)V

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    .line 55
    return-void
.end method


# virtual methods
.method public addTab(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)V
    .registers 4
    .parameter "tabSpec"

    .prologue
    .line 144
    #getter for: Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->access$100(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

    move-result-object v0

    if-nez v0, :cond_e

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget v0, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 155
    const-string v0, "[MyFiles]"

    const-string v1, ">>>>>>>>>>>>>>>>>>>>> addTab()  sCurrentTab== -1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/MainActivityView;->setCurrentTab(I)V

    .line 158
    :cond_23
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->initMainActivityView()V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->requestLayout()V

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->invalidate()V

    .line 170
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 216
    .local v0, handled:Z
    if-nez v0, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_38

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 226
    const/4 v0, 0x1

    .line 228
    .end local v0           #handled:Z
    :cond_38
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 234
    :cond_9
    return-void
.end method

.method public getCurrentTab()I
    .registers 2

    .prologue
    .line 177
    sget v0, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    return v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;
    .registers 4
    .parameter "tag"

    .prologue
    .line 64
    new-instance v0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;-><init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Lcom/sec/android/app/myfiles/MainActivityView$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 109
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 112
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 118
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 121
    :cond_c
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 135
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 237
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 265
    :cond_b
    :goto_b
    return-void

    .line 240
    :cond_c
    sget v1, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    if-eq p1, v1, :cond_b

    .line 245
    sget v1, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    if-eq v1, v4, :cond_25

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    sget v2, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    #getter for: Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->access$100(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;->tabClosed()V

    .line 249
    :cond_25
    sput p1, Lcom/sec/android/app/myfiles/MainActivityView;->sCurrentTab:I

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;

    .line 252
    .local v0, spec:Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;
    #getter for: Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->mContentStrategy:Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;->access$100(Lcom/sec/android/app/myfiles/MainActivityView$TabSpec;)Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_45

    .line 256
    const-string v1, "[MyFiles]"

    const-string v2, "MainActivityView : setCurrentTab : mCurrentView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 258
    :cond_45
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_59

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    :cond_59
    iget-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_b
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 82
    iput-object p0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_e

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your MainActivityView must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_e
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .registers 2
    .parameter "activityGroup"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/MainActivityView;->setup()V

    .line 101
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivityView;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 102
    return-void
.end method
