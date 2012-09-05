.class public Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;
.super Landroid/widget/ListView;
.source "BouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;,
        Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private bIsDown:Z

.field private bIsRefreshing:Z

.field private bIsScrollingDown:Z

.field private bhasContinue:Z

.field private mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field private mCurrentState:I

.field protected mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

.field private mLastPos:I

.field private mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "AbsBouncingListView"

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I

    .line 26
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentPos:I

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mLastPos:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    .line 68
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 40
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->Initialize()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const-string v0, "AbsBouncingListView"

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I

    .line 26
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentPos:I

    .line 28
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mLastPos:I

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    .line 68
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;-><init>(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 47
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->Initialize()V

    .line 49
    return-void
.end method

.method private Initialize()V
    .registers 4

    .prologue
    .line 53
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    const-string v1, "footer"

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;->hideFooter()V

    .line 58
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;-><init>(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureListener:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

    .line 59
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureListener:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 60
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 110
    :goto_9
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 94
    :pswitch_13
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z

    goto :goto_9

    .line 98
    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureListener:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->getCanRefresh()Z

    move-result v0

    .line 100
    .local v0, canRefresh:Z
    if-ne v0, v3, :cond_25

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    if-nez v1, :cond_25

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->onFlickDown()V

    .line 104
    :cond_25
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z

    .line 106
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mGestureListener:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->setCanRefresh(Z)V

    goto :goto_9

    .line 91
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public getRefreshing()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    return v0
.end method

.method public onFlickDown()V
    .registers 4

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->setRefresing(Z)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;->onFlickDown()V

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->TAG:Ljava/lang/String;

    const-string v1, "onFlickDown()"

    const-string v2, "FlickDown is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onFlickUp()V
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;->showFooter()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    if-eqz v0, :cond_e

    .line 147
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;->onFlickUp()V

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->TAG:Ljava/lang/String;

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setBouncingCallback(Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCallback:Lcom/sec/android/widgetapp/socialhub/view/IBouncingCallback;

    .line 66
    return-void
.end method

.method public setContinue(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z

    .line 125
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z

    if-nez v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mFooter:Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingFooterLayout;->hideFooter()V

    .line 127
    :cond_b
    return-void
.end method

.method public setRefresing(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z

    .line 117
    return-void
.end method
