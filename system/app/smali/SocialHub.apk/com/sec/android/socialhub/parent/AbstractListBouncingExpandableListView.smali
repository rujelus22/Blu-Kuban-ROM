.class public Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "AbstractListBouncingExpandableListView.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/IBouncingListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;,
        Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$GestureLog;,
        Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;
    }
.end annotation


# instance fields
.field private final BOUNCE_FLICK_DOWN:I

.field private bEnableFlickUp:Z

.field private bIsDown:Z

.field private bIsLoading:Z

.field private bIsRefreshing:Z

.field private bIsScrollingDown:Z

.field private bShowEmpty:Z

.field private mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

.field private mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field private mCurrentState:I

.field protected mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastPos:I

.field private mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUseFlickDown:Z

.field private mUseFlickUp:Z

.field private rEmptyString:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z

    .line 28
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickUp:Z

    .line 30
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    .line 31
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z

    .line 32
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bEnableFlickUp:Z

    .line 34
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    .line 36
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mInflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mContext:Landroid/content/Context;

    .line 42
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsDown:Z

    .line 43
    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I

    .line 46
    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->BOUNCE_FLICK_DOWN:I

    .line 48
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    invoke-direct {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    .line 50
    iput v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentState:I

    .line 51
    iput v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentPos:I

    .line 56
    iput-object v3, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    .line 58
    iput v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->rEmptyString:I

    .line 59
    iput-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bShowEmpty:Z

    .line 340
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$1;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 348
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 70
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    new-instance v0, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    .line 75
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    const-string v1, "footer"

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {p0, v0, v3, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideFooter()V

    .line 83
    new-instance v0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;-><init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

    .line 84
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 86
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsDown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickUp:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bEnableFlickUp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mListViewPos:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$ListViewPos;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 238
    :goto_9
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 220
    :pswitch_13
    iput-boolean v5, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsDown:Z

    goto :goto_9

    .line 224
    :pswitch_16
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->getCanRefresh()Z

    move-result v0

    .line 226
    .local v0, canRefresh:Z
    const-string v1, "AbstractListBouncingListView"

    const-string v2, "dispatchTouchEvent()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP. canRefresh - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bIsRefreshing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z

    if-ne v1, v5, :cond_4f

    if-ne v0, v5, :cond_4f

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    if-nez v1, :cond_4f

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onFlickDown()V

    .line 232
    :cond_4f
    iput-boolean v6, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsDown:Z

    .line 234
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mGestureListener:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;

    invoke-virtual {v1, v6}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$SocialHubGestureDetector;->setCanRefresh(Z)V

    goto :goto_9

    .line 217
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method public getEmptyStringResource()I
    .registers 2

    .prologue
    .line 525
    iget v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->rEmptyString:I

    return v0
.end method

.method public isShowEmptyMessage()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bShowEmpty:Z

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onDestroy()"

    const-string v2, "completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onDisableFooter()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bEnableFlickUp:Z

    .line 256
    return-void
.end method

.method public onEnableFooter()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bEnableFlickUp:Z

    .line 248
    return-void
.end method

.method public onFlickDown()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    .line 103
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->hideFooter()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onDisableFooter()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_16

    .line 108
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickDown()V

    .line 111
    :cond_16
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onFlickDown()"

    const-string v2, "FlickDown is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .registers 3
    .parameter "bContinue"

    .prologue
    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    .line 295
    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z

    .line 298
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 300
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onEnableFooter()V

    .line 307
    :goto_b
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_14

    .line 309
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickDownComplete(Z)V

    .line 311
    :cond_14
    return-void

    .line 304
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onDisableFooter()V

    goto :goto_b
.end method

.method public onFlickUp()V
    .registers 4

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mFooter:Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/ListBouncingFooterLayout;->showFooter()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    invoke-interface {v0}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->onFlickUp()V

    .line 133
    :cond_11
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setEmptyMessage(I)V
    .registers 2
    .parameter "resID"

    .prologue
    .line 155
    iput p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->rEmptyString:I

    .line 156
    return-void
.end method

.method public setListBouncingCallback(Lcom/sec/android/socialhub/parent/IListBouncingCabllack;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    .line 93
    return-void
.end method

.method public useFlickDown(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z

    .line 177
    iget-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsRefreshing:Z

    .line 181
    :cond_a
    return-void
.end method

.method public useFlickUp(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickUp:Z

    .line 191
    return-void
.end method
