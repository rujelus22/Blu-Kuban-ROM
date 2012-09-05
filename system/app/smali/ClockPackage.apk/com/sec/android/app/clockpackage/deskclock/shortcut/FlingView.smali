.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;
.super Landroid/widget/HorizontalScrollView;
.source "FlingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$1;,
        Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;,
        Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mChildViewContainer:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

.field private mContext:Landroid/content/Context;

.field private mFlingViewListener:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsInterceptionTrue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;)V
    .registers 8
    .parameter "context"
    .parameter "activity"
    .parameter "l"

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mIsInterceptionTrue:Z

    .line 25
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mActivity:Landroid/app/Activity;

    .line 27
    iput-object p3, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mFlingViewListener:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;

    .line 29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->setSmoothScrollingEnabled(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->setScrollbarFadingEnabled(Z)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->setHorizontalScrollBarEnabled(Z)V

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->setOverScrollMode(I)V

    .line 37
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$Gesture;-><init>(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mIsInterceptionTrue:Z

    return p1
.end method

.method private init()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mChildViewContainer:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mChildViewContainer:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->addView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getChildViewContainer()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mChildViewContainer:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ChildViewContainer;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mIsInterceptionTrue:Z

    if-nez v0, :cond_c

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mIsInterceptionTrue:Z

    .line 81
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 52
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mFlingViewListener:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;

    if-nez v2, :cond_8

    .line 59
    :goto_7
    return-void

    .line 55
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 56
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->computeHorizontalScrollRange()I

    move-result v1

    .line 58
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mFlingViewListener:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;->leftRightEdge(FF)V

    goto :goto_7
.end method

.method protected onScrollChanged(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 66
    .local v0, currentX:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->computeHorizontalScrollRange()I

    move-result v1

    .line 68
    .local v1, maxScroll:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mFlingViewListener:Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView$FlingViewListener;->leftRightEdge(FF)V

    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/FlingView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
