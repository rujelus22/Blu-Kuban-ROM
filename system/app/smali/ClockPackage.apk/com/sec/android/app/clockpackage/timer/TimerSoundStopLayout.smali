.class public Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;
.super Landroid/widget/LinearLayout;
.source "TimerSoundStopLayout.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "TimerSoundStopLayout"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->DEBUG:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const-string v0, "TimerSoundStopLayout"

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->DEBUG:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 30
    const-string v0, "TimerSoundStopLayout"

    const-string v1, "..onInterceptTouchEvent.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->mParent:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->stopPlayer()V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "ac"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerSoundStopLayout;->mParent:Landroid/app/Activity;

    .line 40
    return-void
.end method
