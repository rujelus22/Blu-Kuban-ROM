.class public Lcom/google/android/youtube/core/player/LiveOverlay;
.super Landroid/widget/FrameLayout;
.source "LiveOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/LiveOverlay$Listener;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/youtube/core/player/LiveOverlay$Listener;

.field private final playView:Landroid/widget/ImageView;

.field private final res:Landroid/content/res/Resources;

.field private final startsAtView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/player/LiveOverlay$Listener;)V
    .registers 11
    .parameter "context"
    .parameter "clock"
    .parameter "listener"

    .prologue
    const/4 v6, -0x2

    const/16 v5, 0x11

    const/4 v4, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v2, "clock cannot be null"

    invoke-static {p2, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 52
    const-string v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/LiveOverlay$Listener;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->listener:Lcom/google/android/youtube/core/player/LiveOverlay$Listener;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->res:Landroid/content/res/Resources;

    .line 55
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->handler:Landroid/os/Handler;

    .line 57
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .local v1, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 62
    .local v0, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/LiveOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LiveOverlay;->hide()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/player/LiveOverlay;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/player/LiveOverlay;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/LiveOverlay;->show(Landroid/view/View;)V

    return-void
.end method

.method private show(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 100
    iget-object v3, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_18

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    return-void

    :cond_16
    move v0, v2

    .line 100
    goto :goto_9

    :cond_18
    move v1, v2

    .line 101
    goto :goto_12
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public init(Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 10
    .parameter "liveEvent"

    .prologue
    const/4 v7, 0x0

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 81
    .local v0, now:Ljava/util/Date;
    iget-object v1, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->res:Landroid/content/res/Resources;

    const v3, 0x7f0b006b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LiveOverlay;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/google/android/youtube/core/utils/TimeUtil;->getLiveEventStatusText(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->startsAtView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->show(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/core/player/LiveOverlay$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/player/LiveOverlay$1;-><init>(Lcom/google/android/youtube/core/player/LiveOverlay;)V

    iget-object v3, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-interface {v5}, Lcom/google/android/youtube/core/utils/Clock;->currentMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :goto_4b
    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 93
    return-void

    .line 90
    :cond_4f
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->playView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->show(Landroid/view/View;)V

    goto :goto_4b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LiveOverlay;->hide()V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->listener:Lcom/google/android/youtube/core/player/LiveOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/LiveOverlay$Listener;->onPlayLive()V

    .line 107
    return-void
.end method
