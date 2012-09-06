.class public Lcom/google/android/youtube/core/player/LiveOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/d;

.field private final b:Lcom/google/android/youtube/core/player/ae;

.field private final c:Landroid/content/res/Resources;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/core/player/ae;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "clock cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->a:Lcom/google/android/youtube/core/utils/d;

    .line 52
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->b:Lcom/google/android/youtube/core/player/ae;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->c:Landroid/content/res/Resources;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->f:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v2, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/player/LiveOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 70
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/LiveOverlay;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 100
    iget-object v3, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_16

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

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

.method static synthetic a(Lcom/google/android/youtube/core/player/LiveOverlay;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/LiveEvent;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 80
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 81
    iget-object v1, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->c:Landroid/content/res/Resources;

    const v2, 0x7f0b006d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/LiveOverlay;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/google/android/youtube/core/utils/ac;->a(Landroid/content/Context;Lcom/google/android/youtube/core/model/LiveEvent;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->f:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/core/player/ad;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/ad;-><init>(Lcom/google/android/youtube/core/player/LiveOverlay;)V

    iget-object v2, p1, Lcom/google/android/youtube/core/model/LiveEvent;->start:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v4}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :goto_4b
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 93
    return-void

    .line 90
    :cond_4f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->a(Landroid/view/View;)V

    goto :goto_4b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/LiveOverlay;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/LiveOverlay;->b:Lcom/google/android/youtube/core/player/ae;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ae;->q()V

    .line 107
    return-void
.end method
