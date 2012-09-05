.class public Lcom/android/email/activity/MessageWebView;
.super Landroid/webkit/WebView;
.source "MessageWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;
    }
.end annotation


# instance fields
.field private final CHANGE_MIN_VALUE:I

.field public final MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

.field private final TIME_MESSAGE_DELAY:J

.field private final mClock:Lcom/android/email/Clock;

.field private mCreateActionMode:Z

.field private mCurScale:F

.field private mEmailWebViewContentHeight:I

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreNext:Z

.field private mInvScale:F

.field private mIsHorizontalScrollChange:Z

.field private mIsLoadComplete:Z

.field private mIsRight:Z

.field private mIsSelectedCursor:Z

.field private mIsTouchDown:Z

.field private mLastSizeChangeTime:J

.field private mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

.field private mParentIndex:I

.field private mPinchZoomEndScale:F

.field private mPinchZoomStartScale:F

.field private mPrevHeight:I

.field private mRealHeight:I

.field private mRealWidth:I

.field private mStartX:F

.field private mStartY:F

.field private mThrottle:Lcom/android/email/Throttle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsLoadComplete:Z

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    .line 36
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    .line 39
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 43
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 51
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 52
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 53
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 54
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    .line 55
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 58
    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 582
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    .line 584
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 587
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 589
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 65
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsLoadComplete:Z

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    .line 36
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    .line 39
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 43
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 51
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 52
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 53
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 54
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    .line 55
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 58
    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 582
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    .line 584
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 587
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 589
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsLoadComplete:Z

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    .line 36
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    .line 39
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 43
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 51
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 52
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 53
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 54
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    .line 55
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 58
    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 582
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    .line 584
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 587
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 589
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 85
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 29
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsLoadComplete:Z

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    .line 36
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    .line 39
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 43
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 51
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 52
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 53
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 54
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    .line 55
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 58
    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 582
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    .line 584
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 587
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 589
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 86
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 29
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsLoadComplete:Z

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->CHANGE_MIN_VALUE:I

    .line 36
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->TIME_MESSAGE_DELAY:J

    .line 39
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 43
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 51
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 52
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 53
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 54
    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    .line 55
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 58
    const-string v0, "MessageWebView"

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->MESSAGE_WEBVIEW_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 582
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    .line 584
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 585
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 587
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 589
    iput-object v4, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 80
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->initialize()V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageWebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/email/activity/MessageWebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageWebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageWebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/MessageWebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageWebView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/MessageWebView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageWebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/email/activity/MessageWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/email/activity/MessageWebView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    return p1
.end method

.method private isSelectedCursor(FF)Z
    .registers 11
    .parameter "curX"
    .parameter "curY"

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 231
    .local v4, x:I
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 233
    .local v5, y:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 234
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 236
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v2

    .line 237
    .local v2, curScale:F
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_2d

    .line 238
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 239
    const/high16 v6, 0x3f80

    div-float/2addr v6, v2

    iput v6, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 241
    :cond_2d
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mScrollX:I

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 242
    .local v0, contentX:I
    iget v6, p0, Lcom/android/email/activity/MessageWebView;->mScrollY:I

    add-int/2addr v6, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 244
    .local v1, contentY:I
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->isSelectionHandleSelected(II)Z

    move-result v3

    .line 245
    .local v3, isSelectedCursor:Z
    return v3
.end method

.method private performSizeChange(II)V
    .registers 6
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 592
    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 593
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 594
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_61

    .line 595
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageWebView::Parent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] performSizeChange() - ow["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] oh["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mRealWidth["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mRealHeight["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_61
    return-void
.end method

.method private performSizeChangeDelayed()V
    .registers 3

    .prologue
    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIgnoreNext:Z

    .line 603
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->performSizeChange(II)V

    .line 604
    return-void
.end method

.method private declared-synchronized removeMessages(I)V
    .registers 3
    .parameter "what"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 175
    monitor-exit p0

    return-void

    .line 174
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessageDelayed(IJ)V
    .registers 6
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected computeVerticalScrollRange()I
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getEmailWebViewContentHeight()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    return v0
.end method

.method public getIsRight()Z
    .registers 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsRight:Z

    return v0
.end method

.method public getIsSelectedCursor()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    return v0
.end method

.method public getcomputeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public getcomputeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public getcomputeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/webkit/WebView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .registers 8

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 91
    new-instance v0, Lcom/android/email/activity/MessageWebView$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageWebView$1;-><init>(Lcom/android/email/activity/MessageWebView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mHandler:Landroid/os/Handler;

    .line 117
    :cond_b
    move-object v6, p0

    .line 118
    .local v6, temp:Lcom/android/email/activity/MessageWebView;
    new-instance v0, Lcom/android/email/activity/MessageWebView$2;

    invoke-direct {v0, p0, v6}, Lcom/android/email/activity/MessageWebView$2;-><init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    .line 153
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 154
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    if-nez v0, :cond_3f

    .line 155
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 156
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/MessageWebView$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageWebView$3;-><init>(Lcom/android/email/activity/MessageWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 166
    :cond_3f
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView;->mMessageWebViewActionModeCallback:Lcom/android/email/activity/MessageWebView$MessageWebViewActionModeCallback;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageWebView;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 167
    return-void
.end method

.method public isCreateActionMode()Z
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    return v0
.end method

.method public onCheckHorizontalScroll()Z
    .registers 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeHorizontalScrollExtent()I

    move-result v0

    .line 323
    .local v0, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeHorizontalScrollRange()I

    move-result v1

    .line 324
    .local v1, vRange:I
    sub-int v2, v1, v0

    if-lez v2, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 608
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_4e

    .line 609
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageWebView::Parent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] onLayout() - left["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] top["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] right["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bottom["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_4e
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 615
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 629
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 630
    .local v2, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 631
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 632
    .local v3, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 633
    .local v1, heightSize:I
    sget-boolean v4, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v4, :cond_4a

    .line 634
    const-string v4, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageWebView::Parent["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] onMeasure(start) - widthSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] heightSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_4a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 641
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getMeasuredHeight()I

    move-result v1

    .line 642
    const/16 v4, 0xbe

    if-ge v1, v4, :cond_9a

    .line 643
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getMeasuredWidth()I

    move-result v3

    .line 644
    const/16 v1, 0xbe

    .line 645
    monitor-enter p0

    .line 646
    :try_start_5c
    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/MessageWebView;->setMeasuredDimension(II)V

    .line 647
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_9b

    .line 648
    sget-boolean v4, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v4, :cond_9a

    .line 649
    const-string v4, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageWebView::Parent["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] onMeasure(end) - widthSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] heightSize["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_9a
    return-void

    .line 647
    :catchall_9b
    move-exception v4

    :try_start_9c
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v4
.end method

.method public onScaleChangeWebView(Z)V
    .registers 12
    .parameter "doubleTab"

    .prologue
    .line 496
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v7

    if-nez v7, :cond_101

    .line 497
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 498
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getContentHeight()I

    move-result v0

    .line 499
    .local v0, contentHeight:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v5

    .line 501
    .local v5, scale:F
    const/4 v2, 0x0

    .line 503
    .local v2, height:I
    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iget v8, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1f

    if-eqz p1, :cond_ca

    .line 504
    :cond_1f
    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    .line 510
    :goto_29
    const/16 v7, 0xbe

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 512
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onScaleChangeWebView() - contentHeight ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] mEmailWebViewContentHeight ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] scale ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] mPinchZoomStartScale ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 520
    .local v1, curHeight:I
    if-eq v1, v2, :cond_d4

    .line 521
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onScaleChangeWebView() - prev ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] new ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 526
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 528
    invoke-virtual {p0, v4}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    :goto_c0
    const-wide/16 v7, 0x3c

    invoke-virtual {p0, v7, v8}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView(J)V

    .line 538
    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v7, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 577
    .end local v0           #contentHeight:I
    .end local v1           #curHeight:I
    .end local v2           #height:I
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #scale:F
    :cond_c9
    :goto_c9
    return-void

    .line 507
    .restart local v0       #contentHeight:I
    .restart local v2       #height:I
    .restart local v4       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #scale:F
    :cond_ca
    int-to-float v7, v0

    mul-float/2addr v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto/16 :goto_29

    .line 530
    .restart local v1       #curHeight:I
    :cond_d4
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onScaleChangeWebView() - cur ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 539
    .end local v0           #contentHeight:I
    .end local v1           #curHeight:I
    .end local v2           #height:I
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #scale:F
    :cond_101
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v7

    if-eqz v7, :cond_c9

    .line 540
    if-eqz p1, :cond_170

    .line 541
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getMeasuredHeight()I

    move-result v3

    .line 542
    .local v3, heightSize:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getMeasuredWidth()I

    move-result v6

    .line 544
    .local v6, widthSize:I
    monitor-enter p0

    .line 545
    :try_start_112
    invoke-virtual {p0, v6, v3}, Lcom/android/email/activity/MessageWebView;->setMeasuredDimension(II)V

    .line 546
    monitor-exit p0
    :try_end_116
    .catchall {:try_start_112 .. :try_end_116} :catchall_16d

    .line 547
    sget-boolean v7, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v7, :cond_168

    .line 548
    const-string v7, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onScaleChangeWebView(doubleTab) - widthSize["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] heightSize["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] mEmailWebViewContentHeight ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] mPinchZoomStartScale ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_168
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->requestLayout()V

    goto/16 :goto_c9

    .line 546
    :catchall_16d
    move-exception v7

    :try_start_16e
    monitor-exit p0
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    throw v7

    .line 574
    .end local v3           #heightSize:I
    .end local v6           #widthSize:I
    :cond_170
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->requestLayout()V

    goto/16 :goto_c9
.end method

.method public onScrollChangeWebView()V
    .registers 7

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v3

    const/16 v4, 0xbe

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 441
    .local v1, height:I
    iget v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_64

    const/4 v0, 0x1

    .line 442
    .local v0, bChange:Z
    :goto_1c
    if-eqz v0, :cond_66

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_66

    .line 443
    const-string v3, "MessageWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Parent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onScrollChangeWebView() - prev ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] new ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 448
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    :goto_63
    return-void

    .line 441
    .end local v0           #bChange:Z
    :cond_64
    const/4 v0, 0x0

    goto :goto_1c

    .line 452
    .restart local v0       #bChange:Z
    :cond_66
    const-string v3, "MessageWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Parent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onScrollChangeWebView() - cur ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 292
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseEmailViewPort()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 293
    if-lez p2, :cond_10

    .line 294
    invoke-virtual {p0, p1, v4}, Lcom/android/email/activity/MessageWebView;->scrollTo(II)V

    .line 298
    :cond_10
    if-eqz p1, :cond_14

    .line 299
    iput-boolean v5, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 301
    :cond_14
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeHorizontalScrollExtent()I

    move-result v0

    .line 302
    .local v0, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeHorizontalScrollOffset()I

    move-result v1

    .line 303
    .local v1, vOffset:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeHorizontalScrollRange()I

    move-result v2

    .line 304
    .local v2, vRange:I
    sub-int v3, v2, v0

    if-ne v3, v1, :cond_29

    .line 305
    if-lt p1, p3, :cond_28

    .line 306
    iput-boolean v5, p0, Lcom/android/email/activity/MessageWebView;->mIsRight:Z

    .line 311
    :cond_28
    :goto_28
    return-void

    .line 309
    :cond_29
    iput-boolean v4, p0, Lcom/android/email/activity/MessageWebView;->mIsRight:Z

    goto :goto_28
.end method

.method public onSizeChangeWebView()V
    .registers 11

    .prologue
    .line 458
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v7

    if-nez v7, :cond_67

    .line 459
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 460
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v7

    const/16 v8, 0xbe

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 462
    .local v2, height:I
    iget v7, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    sub-int v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_68

    const/4 v0, 0x1

    .line 466
    .local v0, bChange:Z
    :goto_22
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 467
    .local v1, curHeight:I
    if-eqz v0, :cond_6a

    if-eq v1, v2, :cond_6a

    .line 468
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onSizeChangeWebView() - prev ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] new ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v7, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 472
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 474
    invoke-virtual {p0, v3}, Lcom/android/email/activity/MessageWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .end local v0           #bChange:Z
    .end local v1           #curHeight:I
    .end local v2           #height:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_67
    :goto_67
    return-void

    .line 462
    .restart local v2       #height:I
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_68
    const/4 v0, 0x0

    goto :goto_22

    .line 475
    .restart local v0       #bChange:Z
    .restart local v1       #curHeight:I
    :cond_6a
    if-nez v0, :cond_92

    .line 476
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    .line 477
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onSizeChangeWebView() - bChange false -> recheck"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 480
    :cond_92
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollExtent()I

    move-result v4

    .line 481
    .local v4, vExtent:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollOffset()I

    move-result v5

    .line 482
    .local v5, vOffset:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->computeVerticalScrollRange()I

    move-result v6

    .line 483
    .local v6, vRange:I
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScrollY()I

    move-result v7

    if-nez v7, :cond_d5

    sub-int v7, v6, v4

    if-ne v7, v5, :cond_d5

    .line 484
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onSizeChangeWebView() - cur ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 487
    :cond_d5
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    .line 488
    const-string v7, "MessageWebView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Parent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] onSizeChangeWebView() - bChange false -> recheck"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_67
.end method

.method protected onSizeChanged(IIII)V
    .registers 13
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-boolean v4, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v4, :cond_4f

    .line 330
    const-string v4, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageWebView::onSizeChanged() Parent["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] w["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] h["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ow["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] oh["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_4f
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseMessageWebViewSizeChange()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 336
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mRealWidth:I

    .line 337
    iput p2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 338
    iget-object v4, p0, Lcom/android/email/activity/MessageWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v4}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    .line 339
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_99

    const/4 v2, 0x1

    .line 345
    .local v2, recentlySized:Z
    :goto_6a
    iget-boolean v4, p0, Lcom/android/email/activity/MessageWebView;->mIgnoreNext:Z

    if-eqz v4, :cond_9b

    .line 346
    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIgnoreNext:Z

    .line 347
    if-eqz v2, :cond_9b

    .line 348
    sget-boolean v3, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v3, :cond_98

    .line 349
    const-string v3, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageWebView::Parent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onSizeChanged() - recentlySized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0           #now:J
    .end local v2           #recentlySized:Z
    :cond_98
    :goto_98
    return-void

    .restart local v0       #now:J
    :cond_99
    move v2, v3

    .line 339
    goto :goto_6a

    .line 357
    .restart local v2       #recentlySized:Z
    :cond_9b
    if-eqz v2, :cond_a7

    .line 358
    iget-object v3, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    if-eqz v3, :cond_98

    .line 359
    iget-object v3, p0, Lcom/android/email/activity/MessageWebView;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v3}, Lcom/android/email/Throttle;->onEvent()V

    goto :goto_98

    .line 365
    :cond_a7
    invoke-direct {p0, p3, p4}, Lcom/android/email/activity/MessageWebView;->performSizeChange(II)V

    goto :goto_98

    .line 368
    .end local v0           #now:J
    .end local v2           #recentlySized:Z
    :cond_ab
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 370
    if-eq p2, p4, :cond_98

    iget v3, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    iget v4, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_98

    .line 371
    const-string v3, "MessageWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Parent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] onSizeChanged() - call setSizeChangeWebView()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView()V

    goto :goto_98
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 255
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 256
    .local v1, curX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 257
    .local v2, curY:F
    packed-switch v0, :pswitch_data_5a

    .line 267
    :goto_10
    sget-boolean v3, Lcom/android/email/util/EmailFeature;->DEBUG_TOUCHEVENT:Z

    if-eqz v3, :cond_46

    .line 268
    const-string v3, "DEBUG_TOUCHEVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageWebView::onTouchEvent() action["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curX["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curY["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_46
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 285
    return v6

    .line 259
    :pswitch_4a
    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartX:F

    .line 260
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    .line 261
    iput-boolean v6, p0, Lcom/android/email/activity/MessageWebView;->mIsTouchDown:Z

    .line 262
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 263
    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MessageWebView;->isSelectedCursor(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    goto :goto_10

    .line 257
    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4a
    .end packed-switch
.end method

.method public resetMessageWebView()V
    .registers 4

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 186
    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartY:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mStartX:F

    .line 187
    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 188
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsTouchDown:Z

    .line 189
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mPrevHeight:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageWebView;->mIsRight:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsHorizontalScrollChange:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIsSelectedCursor:Z

    .line 194
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 195
    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F

    iput v1, p0, Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F

    .line 197
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mIgnoreNext:Z

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageWebView;->mLastSizeChangeTime:J

    .line 200
    iput v2, p0, Lcom/android/email/activity/MessageWebView;->mRealHeight:I

    .line 201
    iput-boolean v2, p0, Lcom/android/email/activity/MessageWebView;->mCreateActionMode:Z

    .line 202
    return-void
.end method

.method public setDoubleTabWebView()V
    .registers 3

    .prologue
    .line 434
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->setDoubleTabWebView(J)V

    .line 435
    return-void
.end method

.method public setDoubleTabWebView(J)V
    .registers 4
    .parameter "delay"

    .prologue
    const/16 v0, 0x8

    .line 429
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageWebView;->removeMessages(I)V

    .line 430
    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/MessageWebView;->sendMessageDelayed(IJ)V

    .line 431
    return-void
.end method

.method public setEmailWebViewContentHeight(I)V
    .registers 4
    .parameter "height"

    .prologue
    .line 391
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mEmailWebViewContentHeight:I

    .line 393
    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 394
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageWebView;->mInvScale:F

    .line 395
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 619
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_4e

    .line 620
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageWebView::Parent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setFrame() - left["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] top["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] right["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] bottom["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_4e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setInitScale(F)V
    .registers 2
    .parameter "scale"

    .prologue
    .line 379
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mCurScale:F

    .line 380
    return-void
.end method

.method public setParentIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/email/activity/MessageWebView;->mParentIndex:I

    .line 210
    return-void
.end method

.method public setScaleChangeWebView()V
    .registers 3

    .prologue
    .line 425
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->setScaleChangeWebView(J)V

    .line 426
    return-void
.end method

.method public setScaleChangeWebView(J)V
    .registers 4
    .parameter "delay"

    .prologue
    const/4 v0, 0x4

    .line 420
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageWebView;->removeMessages(I)V

    .line 421
    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/MessageWebView;->sendMessageDelayed(IJ)V

    .line 422
    return-void
.end method

.method public setSizeChangeWebView()V
    .registers 3

    .prologue
    .line 416
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageWebView;->setSizeChangeWebView(J)V

    .line 417
    return-void
.end method

.method public setSizeChangeWebView(J)V
    .registers 4
    .parameter "delay"

    .prologue
    const/4 v0, 0x2

    .line 411
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageWebView;->removeMessages(I)V

    .line 412
    invoke-direct {p0, v0, p1, p2}, Lcom/android/email/activity/MessageWebView;->sendMessageDelayed(IJ)V

    .line 413
    return-void
.end method
