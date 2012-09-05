.class public Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;
.super Landroid/widget/LinearLayout;
.source "SoundStopLayout.java"


# instance fields
.field private final DEBUG:Z

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->DEBUG:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->DEBUG:Z

    .line 35
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 41
    const-string v0, "SoundStopLayout"

    const-string v1, "..onInterceptTouchEvent.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->mParent:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->stopPlayer()V

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "ac"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/SoundStopLayout;->mParent:Landroid/app/Activity;

    .line 53
    return-void
.end method
