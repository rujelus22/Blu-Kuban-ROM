.class public Lcom/android/email/view/RigidWebView;
.super Landroid/webkit/WebView;
.source "RigidWebView.java"


# instance fields
.field private final mClock:Lcom/android/email/Clock;

.field private mIgnoreNext:Z

.field private mLastSizeChangeTime:J

.field private mRealHeight:I

.field private mRealWidth:I

.field private final mThrottle:Lcom/android/email/Throttle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 53
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 53
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v0, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    .line 53
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/view/RigidWebView$1;

    invoke-direct {v2, p0}, Lcom/android/email/view/RigidWebView$1;-><init>(Lcom/android/email/view/RigidWebView;)V

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/view/RigidWebView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/email/view/RigidWebView;->performSizeChangeDelayed()V

    return-void
.end method

.method private performSizeChange(II)V
    .registers 5
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/email/view/RigidWebView;->mRealWidth:I

    iget v1, p0, Lcom/android/email/view/RigidWebView;->mRealHeight:I

    invoke-super {p0, v0, v1, p1, p2}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 96
    iget-object v0, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v0}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    .line 97
    return-void
.end method

.method private performSizeChangeDelayed()V
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/email/view/RigidWebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/view/RigidWebView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/email/view/RigidWebView;->performSizeChange(II)V

    .line 102
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 13
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v3, 0x0

    .line 68
    iput p1, p0, Lcom/android/email/view/RigidWebView;->mRealWidth:I

    .line 69
    iput p2, p0, Lcom/android/email/view/RigidWebView;->mRealHeight:I

    .line 70
    iget-object v4, p0, Lcom/android/email/view/RigidWebView;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v4}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    .line 71
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/email/view/RigidWebView;->mLastSizeChangeTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_2a

    const/4 v2, 0x1

    .line 75
    .local v2, recentlySized:Z
    :goto_16
    iget-boolean v4, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    if-eqz v4, :cond_2c

    .line 76
    iput-boolean v3, p0, Lcom/android/email/view/RigidWebView;->mIgnoreNext:Z

    .line 77
    if-eqz v2, :cond_2c

    .line 78
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_29

    .line 79
    const-string v3, "Email"

    const-string v4, "Supressing size change in RigidWebView"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_29
    :goto_29
    return-void

    .end local v2           #recentlySized:Z
    :cond_2a
    move v2, v3

    .line 71
    goto :goto_16

    .line 85
    .restart local v2       #recentlySized:Z
    :cond_2c
    if-eqz v2, :cond_34

    .line 86
    iget-object v3, p0, Lcom/android/email/view/RigidWebView;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v3}, Lcom/android/email/Throttle;->onEvent()V

    goto :goto_29

    .line 90
    :cond_34
    invoke-direct {p0, p3, p4}, Lcom/android/email/view/RigidWebView;->performSizeChange(II)V

    goto :goto_29
.end method
