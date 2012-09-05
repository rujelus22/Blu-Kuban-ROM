.class public Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.super Landroid/widget/ListView;
.source "AbstractListBouncingListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/IBouncingListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;,
        Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$GestureLog;,
        Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;
    }
.end annotation


# instance fields
.field private final BOUNCE_FLICK_DOWN:I

.field private bEnableFlickUp:Z

.field private bIsDown:Z

.field private bIsLoading:Z

.field private bIsLoadingMore:Z

.field private bIsRefreshing:Z

.field private bIsScrollingDown:Z

.field private bShowEmpty:Z

.field private canScroll:Z

.field private mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

.field private mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field private mCurrentState:I

.field protected mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastPos:I

.field private mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFlickDown:Z

.field private mUseFlickUp:Z

.field private mUseLoadMore:Z

.field private rEmptyString:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z

    .line 28
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickUp:Z

    .line 29
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseLoadMore:Z

    .line 31
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    .line 32
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    .line 33
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bEnableFlickUp:Z

    .line 34
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoadingMore:Z

    .line 36
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    .line 38
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z

    .line 45
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I

    .line 48
    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->BOUNCE_FLICK_DOWN:I

    .line 50
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    invoke-direct {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    .line 52
    iput v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentState:I

    .line 53
    iput v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentPos:I

    .line 58
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    .line 60
    iput v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->rEmptyString:I

    .line 61
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bShowEmpty:Z

    .line 63
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    .line 397
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$1;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 405
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 74
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    new-instance v0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    const-string v1, "footer"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideFooter()V

    .line 87
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

    .line 88
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseLoadMore:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickUp:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bEnableFlickUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 243
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    .line 286
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_12
    :goto_12
    return v1

    .line 248
    :pswitch_13
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    if-eqz v2, :cond_12

    .line 251
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z

    goto :goto_e

    .line 255
    :pswitch_1a
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    if-nez v2, :cond_e

    goto :goto_12

    .line 260
    :pswitch_1f
    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    .line 261
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->getCanRefresh()Z

    move-result v0

    .line 263
    .local v0, canRefresh:Z
    const-string v2, "AbstractListBouncingListView"

    const-string v3, "dispatchTouchEvent()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_UP. canRefresh - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bIsRefreshing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z

    if-ne v2, v1, :cond_5a

    if-ne v0, v1, :cond_5a

    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    if-nez v2, :cond_5a

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickDown()V

    .line 270
    :cond_5a
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseLoadMore:Z

    if-ne v2, v1, :cond_67

    if-ne v0, v1, :cond_67

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoadingMore:Z

    if-nez v1, :cond_67

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onLoadMore()V

    .line 275
    :cond_67
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;

    invoke-virtual {v1, v6}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$SocialHubGestureDetector;->setCanRefresh(Z)V

    .line 277
    iput-boolean v6, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsDown:Z

    .line 279
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v1, :cond_e

    .line 281
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v1, v6}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(Z)V

    goto :goto_e

    .line 245
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_13
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method public getEmptyStringResource()I
    .registers 2

    .prologue
    .line 613
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->rEmptyString:I

    return v0
.end method

.method public getListViewPosition()Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$ListViewPos;

    return-object v0
.end method

.method public isShowEmptyMessage()Z
    .registers 2

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bShowEmpty:Z

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onDestroy()"

    const-string v2, "completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onDisableFooter()V
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bEnableFlickUp:Z

    .line 303
    return-void
.end method

.method public onEnableFooter()V
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bEnableFlickUp:Z

    .line 295
    return-void
.end method

.method public onFlickDown()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideFooter()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    .line 111
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_16

    .line 113
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickDown()V

    .line 116
    :cond_16
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onFlickDown()"

    const-string v2, "FlickDown is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .registers 3
    .parameter "bContinue"

    .prologue
    const/4 v0, 0x0

    .line 347
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    .line 352
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    .line 355
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onEnableFooter()V

    .line 364
    :goto_b
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_14

    .line 366
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickDownComplete(Z)V

    .line 368
    :cond_14
    return-void

    .line 361
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    goto :goto_b
.end method

.method public onFlickUp()V
    .registers 4

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    .line 132
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->showFooter()V

    .line 134
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_11

    .line 136
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickUp()V

    .line 138
    :cond_11
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onFlickUpComplete(Z)V
    .registers 3
    .parameter "bContinue"

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z

    .line 379
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 381
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onEnableFooter()V

    .line 388
    :goto_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideFooter()V

    .line 390
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_17

    .line 392
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickUpComplete(Z)V

    .line 394
    :cond_17
    return-void

    .line 385
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onDisableFooter()V

    goto :goto_9
.end method

.method public onLoadMore()V
    .registers 4

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoadingMore:Z

    .line 145
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_c

    .line 147
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onLoadMore()V

    .line 149
    :cond_c
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onLoadMore()"

    const-string v2, "LoadMore is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setEmptyMessage(I)V
    .registers 2
    .parameter "resID"

    .prologue
    .line 171
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->rEmptyString:I

    .line 172
    return-void
.end method

.method public setFooterDivider(Z)V
    .registers 3
    .parameter "status"

    .prologue
    .line 121
    if-eqz p1, :cond_8

    .line 122
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->showHeaderDivider()V

    .line 125
    :goto_7
    return-void

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideHeaderDivider()V

    goto :goto_7
.end method

.method public setListBouncingCallback(Lcom/sec/android/socialhub/parent/IListBouncingCabllack;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    .line 98
    return-void
.end method

.method public setListViewScroll(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->canScroll:Z

    .line 236
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "setListViewScroll()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canScroll - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setUseEmptyView(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bShowEmpty:Z

    .line 162
    return-void
.end method

.method public useFlickDown(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z

    .line 193
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsRefreshing:Z

    .line 197
    :cond_a
    return-void
.end method

.method public useFlickUp(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickUp:Z

    .line 207
    return-void
.end method

.method public useLoadMore(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseLoadMore:Z

    .line 212
    return-void
.end method
