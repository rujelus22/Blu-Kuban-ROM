.class public Lcom/google/android/apps/plus/hangout/ToastsView;
.super Landroid/widget/FrameLayout;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/ToastsView$4;,
        Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;,
        Lcom/google/android/apps/plus/hangout/ToastsView$RemoteMuteToast;,
        Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;,
        Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;,
        Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;,
        Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;
    }
.end annotation


# instance fields
.field private final animIn:Landroid/view/animation/Animation;

.field private final animOut:Landroid/view/animation/Animation;

.field private final eventHandler:Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;

.field private final handler:Landroid/os/Handler;

.field private hideToastRunnable:Ljava/lang/Runnable;

.field private imageView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->handler:Landroid/os/Handler;

    .line 203
    new-instance v2, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->eventHandler:Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;

    .line 207
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 208
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030053

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, rootView:Landroid/view/View;
    const v2, 0x7f090122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->imageView:Landroid/widget/ImageView;

    .line 211
    const v2, 0x7f090123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->textView:Landroid/widget/TextView;

    .line 213
    new-instance v2, Lcom/google/android/apps/plus/hangout/ToastsView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/hangout/ToastsView$1;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->hideToastRunnable:Ljava/lang/Runnable;

    .line 220
    const v2, 0x7f040004

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animIn:Landroid/view/animation/Animation;

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animIn:Landroid/view/animation/Animation;

    new-instance v3, Lcom/google/android/apps/plus/hangout/ToastsView$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/ToastsView$2;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    const v2, 0x7f040006

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animOut:Landroid/view/animation/Animation;

    .line 236
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animOut:Landroid/view/animation/Animation;

    new-instance v3, Lcom/google/android/apps/plus/hangout/ToastsView$3;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/ToastsView$3;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/ToastsView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->hideToast()V

    return-void
.end method

.method private hideToast()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    return-void
.end method


# virtual methods
.method public addToast(I)V
    .registers 4
    .parameter "messageId"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, string:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/hangout/ToastsView$StringToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView;->addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V

    .line 263
    return-void
.end method

.method public addToast(Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;)V
    .registers 6
    .parameter "toast"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;->populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->hideToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->hideToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->animIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/ToastsView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    return-void
.end method

.method public onPause()V
    .registers 5

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->eventHandler:Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->unregisterForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 258
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView;->eventHandler:Lcom/google/android/apps/plus/hangout/ToastsView$EventHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/plus/hangout/GCommApp;->registerForEvents(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommEventHandler;Z)V

    .line 254
    return-void
.end method
