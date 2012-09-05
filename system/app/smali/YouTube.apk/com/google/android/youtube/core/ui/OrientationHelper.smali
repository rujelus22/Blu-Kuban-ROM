.class public final Lcom/google/android/youtube/core/ui/OrientationHelper;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

.field private d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 49
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 50
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 68
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->a:Landroid/app/Activity;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->b:Landroid/os/Handler;

    .line 70
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 2

    .prologue
    .line 97
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 98
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 99
    invoke-super {p0}, Landroid/view/OrientationEventListener;->disable()V

    .line 100
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    if-eq v0, v1, :cond_13

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->a:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->disable()V

    .line 92
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public final onOrientationChanged(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 74
    if-ltz p1, :cond_7

    const/16 v0, 0x1e

    if-le p1, v0, :cond_f

    :cond_7
    const/16 v0, 0x14a

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x168

    if-ge p1, v0, :cond_1e

    :cond_f
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UPRIGHT:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 75
    :goto_11
    sget-object v1, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    if-eq v0, v1, :cond_1d

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    sget-object v2, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    if-ne v1, v2, :cond_42

    .line 77
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->c:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 84
    :cond_1d
    :goto_1d
    return-void

    .line 74
    :cond_1e
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_29

    const/16 v0, 0x78

    if-gt p1, v0, :cond_29

    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->LEFTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    goto :goto_11

    :cond_29
    const/16 v0, 0x96

    if-lt p1, v0, :cond_34

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_34

    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->BOTTOMUP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    goto :goto_11

    :cond_34
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_3f

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_3f

    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->RIGHTONTOP:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    goto :goto_11

    :cond_3f
    sget-object v0, Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;->UNKNOWN:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    goto :goto_11

    .line 78
    :cond_42
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    if-eq v0, v1, :cond_1d

    .line 79
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iput-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->d:Lcom/google/android/youtube/core/ui/OrientationHelper$Orientation;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/OrientationHelper;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1d
.end method
