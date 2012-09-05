.class public Lcom/google/android/youtube/core/player/DefaultControllerOverlay;
.super Landroid/widget/FrameLayout;
.source "DefaultControllerOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay;
.implements Lcom/google/android/youtube/core/player/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;
    }
.end annotation


# static fields
.field public static final NEXT_PREVIOUS_H_DELTA:I = 0x40


# instance fields
.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final background:Landroid/view/View;

.field private canRetry:Z

.field private final ccButton:Landroid/widget/ImageButton;

.field private final errorView:Landroid/widget/TextView;

.field private final fullscreenButton:Landroid/widget/ImageButton;

.field private final handler:Landroid/os/Handler;

.field private hasCC:Z

.field private hasFullscreen:Z

.field private hasNext:Z

.field private hasPrevious:Z

.field private hidden:Z

.field protected final hideAnimation:Landroid/view/animation/Animation;

.field private final hqButton:Landroid/widget/ImageButton;

.field private lastDownTime:J

.field private lastDownX:I

.field private lastDownY:I

.field private listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

.field private final loadingView:Landroid/widget/LinearLayout;

.field private mainView:Landroid/view/View;

.field private minimal:Z

.field private final nextButton:Landroid/widget/ImageButton;

.field private final playPauseReplayView:Landroid/widget/ImageView;

.field private final previousButton:Landroid/widget/ImageButton;

.field private final startHidingRunnable:Ljava/lang/Runnable;

.field private state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

.field private style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

.field private supportsQualityToggle:Z

.field private final timeBar:Lcom/google/android/youtube/core/player/TimeBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;)V
    .registers 15
    .parameter "context"
    .parameter "analytics"

    .prologue
    const/4 v6, -0x2

    const v11, 0x7f04000e

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    const-string v5, "analytics cannot be null"

    invoke-static {p2, v5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/Analytics;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 104
    sget-object v5, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 106
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    .line 114
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 115
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    new-instance v5, Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {v5, p1, p0}, Lcom/google/android/youtube/core/player/TimeBar;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/TimeBar$Listener;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    .line 118
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    .line 121
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 123
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, spinner:Landroid/widget/ProgressBar;
    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 125
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v0, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    .line 129
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    const v6, 0x7f020039

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 130
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    .line 134
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const v6, 0x7f020037

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 135
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 137
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v0, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    .line 140
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    const v6, 0x7f020038

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 141
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-boolean v8, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    .line 143
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    .line 146
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f02002e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 150
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 151
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    .line 155
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    const/high16 v6, -0x3400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 157
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v0, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    .line 162
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    const v6, 0x7f02002b

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 163
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v0, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    .line 167
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    const v6, 0x7f020030

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 168
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v5, v4}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handler:Landroid/os/Handler;

    .line 172
    new-instance v5, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$1;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$1;-><init>(Lcom/google/android/youtube/core/player/DefaultControllerOverlay;)V

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 178
    const/high16 v5, 0x7f05

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 179
    iget-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 181
    sget-object v5, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iput-object v5, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 183
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hide()V

    .line 187
    return-void
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .registers 12
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 562
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 563
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 564
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 565
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 566
    return-void
.end method

.method private maybeStartHiding()V
    .registers 5

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_12

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    :cond_12
    return-void
.end method

.method private onNext()V
    .registers 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasNext:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 477
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hide()V

    .line 478
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onNext()V

    .line 480
    :cond_12
    return-void
.end method

.method private onPrevious()V
    .registers 2

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasPrevious:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_12

    .line 484
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hide()V

    .line 485
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onPrevious()V

    .line 487
    :cond_12
    return-void
.end method

.method private onToggleFullscreen()V
    .registers 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x1

    .line 386
    .local v0, fullscreen:Z
    :goto_9
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 387
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onToggleFullscreen(Z)V

    .line 388
    return-void

    .line 385
    .end local v0           #fullscreen:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private showMainView(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 316
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    .line 317
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_2b

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_2d

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne v3, v4, :cond_2f

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 322
    return-void

    :cond_2b
    move v0, v2

    .line 317
    goto :goto_d

    :cond_2d
    move v0, v2

    .line 318
    goto :goto_19

    :cond_2f
    move v1, v2

    .line 319
    goto :goto_24
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 356
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    :cond_b
    return-void
.end method

.method private updateViews()V
    .registers 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 575
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v0, :cond_8

    .line 597
    :goto_7
    return-void

    .line 578
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsTimeBar:Z

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_16
    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/player/TimeBar;->setVisibility(I)V

    .line 580
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->supportsQualityToggle:Z

    if-eqz v0, :cond_a0

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 582
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_a2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_a2

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasCC:Z

    if-eqz v0, :cond_a2

    move v0, v1

    :goto_3e
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 584
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_48
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 585
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v4, :cond_a6

    const v0, 0x7f02002e

    :goto_56
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 589
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsPlayHQCC:Z

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v4, :cond_b4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v4, :cond_b4

    move v0, v1

    :goto_6e
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasNext:Z

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_b6

    move v0, v1

    :goto_82
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsNextPrevious:Z

    if-eqz v3, :cond_b8

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasPrevious:Z

    if-eqz v3, :cond_b8

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v3, :cond_b8

    :goto_95
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 596
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestLayout()V

    goto/16 :goto_7

    :cond_9d
    move v0, v2

    .line 579
    goto/16 :goto_16

    :cond_a0
    move v0, v2

    .line 580
    goto :goto_2a

    :cond_a2
    move v0, v2

    .line 582
    goto :goto_3e

    :cond_a4
    move v0, v2

    .line 584
    goto :goto_48

    .line 585
    :cond_a6
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v4, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v4, :cond_b0

    const v0, 0x7f02002d

    goto :goto_56

    :cond_b0
    const v0, 0x7f020032

    goto :goto_56

    :cond_b4
    move v0, v2

    .line 589
    goto :goto_6e

    :cond_b6
    move v0, v2

    .line 592
    goto :goto_82

    :cond_b8
    move v1, v2

    .line 594
    goto :goto_95
.end method


# virtual methods
.method protected cancelHiding()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 370
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .prologue
    .line 194
    return-object p0
.end method

.method public hide()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 295
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_38

    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setVisibility(I)V

    .line 306
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setVisibility(I)V

    .line 308
    :cond_38
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->requestFocus()Z

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_47

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onHidden()V

    .line 313
    :cond_47
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hide()V

    .line 382
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_d

    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_e

    .line 393
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onHQ()V

    .line 413
    :cond_d
    :goto_d
    return-void

    .line 394
    :cond_e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_18

    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onCC()V

    goto :goto_d

    .line 396
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_47

    .line 397
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "Fullscreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "On"

    :goto_35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onToggleFullscreen()V

    goto :goto_d

    .line 397
    :cond_44
    const-string v0, "Off"

    goto :goto_35

    .line 400
    :cond_47
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4f

    .line 401
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onNext()V

    goto :goto_d

    .line 402
    :cond_4f
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_57

    .line 403
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onPrevious()V

    goto :goto_d

    .line 404
    :cond_57
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_d

    .line 405
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_6e

    .line 406
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Replay"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onReplay()V

    goto :goto_d

    .line 408
    :cond_6e
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v0, v1, :cond_7a

    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_d

    .line 409
    :cond_7a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v0, :cond_7

    .line 418
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 420
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 28
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 491
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 495
    sub-int v15, p5, p3

    .line 496
    .local v15, h:I
    sub-int v19, p4, p2

    .line 497
    .local v19, w:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e7

    const/4 v13, 0x1

    .line 499
    .local v13, error:Z
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-eqz v4, :cond_ea

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    const/4 v5, 0x0

    div-int/lit8 v6, v15, 0x30

    sub-int v6, v15, v6

    move/from16 v0, v19

    invoke-virtual {v4, v5, v6, v0, v15}, Landroid/view/View;->layout(IIII)V

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/youtube/core/player/TimeBar;->setPadding(IIII)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v5, 0x0

    div-int/lit8 v6, v15, 0x30

    sub-int v6, v15, v6

    move/from16 v0, v19

    invoke-virtual {v4, v5, v6, v0, v15}, Lcom/google/android/youtube/core/player/TimeBar;->layout(IIII)V

    .line 533
    :goto_3f
    div-int/lit8 v4, v19, 0x2

    add-int v12, p2, v4

    .line 534
    .local v12, cx:I
    div-int/lit8 v4, v15, 0x2

    add-int v17, p3, v4

    .line 535
    .local v17, playbackButtonsCenterline:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    .line 536
    .local v11, bw:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    .line 537
    .local v10, bh:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    div-int/lit8 v5, v11, 0x2

    sub-int v5, v12, v5

    div-int/lit8 v6, v10, 0x2

    sub-int v6, v17, v6

    div-int/lit8 v7, v11, 0x2

    add-int/2addr v7, v12

    div-int/lit8 v8, v10, 0x2

    add-int v8, v8, v17

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/ImageView;->layout(IIII)V

    .line 542
    move/from16 v0, v19

    int-to-float v4, v0

    const v5, 0x3e2aaaab

    mul-float/2addr v4, v5

    float-to-int v14, v4

    .line 543
    .local v14, errorMessagePadding:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    .line 545
    if-eqz v13, :cond_17a

    div-int/lit8 v4, v14, 0x2

    add-int v4, v4, p2

    div-int/lit8 v5, v11, 0x2

    sub-int v20, v4, v5

    .line 546
    .local v20, x:I
    :goto_8f
    div-int/lit8 v4, v10, 0x2

    sub-int v21, v17, v4

    .line 547
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    add-int v5, v20, v11

    add-int v6, v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v11

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    .line 551
    if-eqz v13, :cond_180

    div-int/lit8 v4, v14, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v11, 0x2

    sub-int v20, v4, v5

    .line 552
    :goto_bc
    div-int/lit8 v4, v10, 0x2

    sub-int v21, v17, v4

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    add-int v5, v20, v11

    add-int v6, v21, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    if-eqz v4, :cond_e6

    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->mainView:Landroid/view/View;

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 558
    :cond_e6
    return-void

    .line 497
    .end local v10           #bh:I
    .end local v11           #bw:I
    .end local v12           #cx:I
    .end local v13           #error:Z
    .end local v14           #errorMessagePadding:I
    .end local v17           #playbackButtonsCenterline:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_e7
    const/4 v13, 0x0

    goto/16 :goto_12

    .line 504
    .restart local v13       #error:Z
    :cond_ea
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/player/TimeBar;->getBarHeight()I

    move-result v11

    .line 505
    .restart local v11       #bw:I
    move v10, v11

    .line 506
    .restart local v10       #bh:I
    sub-int v21, p5, v10

    .line 508
    .restart local v21       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->background:Landroid/view/View;

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 510
    const/16 v16, 0x0

    .line 511
    .local v16, leftButtonsWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_123

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    add-int v5, p2, v11

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v5, v2}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 513
    add-int v16, v16, v11

    .line 515
    :cond_123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_141

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    add-int v5, p2, v16

    add-int v6, p2, v16

    add-int/2addr v6, v11

    move/from16 v0, v21

    move/from16 v1, p5

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 517
    add-int v16, v16, v11

    .line 520
    :cond_141
    const/16 v18, 0x0

    .line 521
    .local v18, rightButtonsWidth:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    if-eqz v4, :cond_15a

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    sub-int v5, v19, v11

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, p5

    invoke-virtual {v4, v5, v0, v1, v2}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 523
    add-int v18, v18, v11

    .line 526
    :cond_15a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    add-int v5, v16, p2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/player/TimeBar;->getPreferredHeight()I

    move-result v6

    sub-int v6, p5, v6

    sub-int v7, p4, v18

    move/from16 v0, p5

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/google/android/youtube/core/player/TimeBar;->layout(IIII)V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    goto/16 :goto_3f

    .line 545
    .end local v16           #leftButtonsWidth:I
    .end local v18           #rightButtonsWidth:I
    .end local v21           #y:I
    .restart local v12       #cx:I
    .restart local v14       #errorMessagePadding:I
    .restart local v17       #playbackButtonsCenterline:I
    :cond_17a
    add-int/lit8 v4, v12, -0x40

    sub-int v20, v4, v11

    goto/16 :goto_8f

    .line 551
    .restart local v20       #x:I
    .restart local v21       #y:I
    :cond_180
    add-int/lit8 v20, v12, 0x40

    goto/16 :goto_bc
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 570
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->measureChildren(II)V

    .line 572
    return-void
.end method

.method public onScrubbingEnd(I)V
    .registers 3
    .parameter "time"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onSeekEnd(I)V

    .line 608
    return-void
.end method

.method public onScrubbingStart()V
    .registers 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 603
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onSeekStart()V

    .line 604
    return-void
.end method

.method public onSubtitleDisabled()V
    .registers 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 628
    return-void
.end method

.method public onSubtitleEnabled()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 624
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 472
    :cond_7
    :goto_7
    return v10

    .line 428
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 429
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 430
    .local v5, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2c

    move v6, v4

    :goto_19
    iput v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2f

    move v6, v5

    :goto_22
    iput v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    .line 433
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    if-eqz v6, :cond_32

    .line 434
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    goto :goto_7

    .line 430
    :cond_2c
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    goto :goto_19

    .line 431
    :cond_2f
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    goto :goto_22

    .line 437
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_d0

    goto :goto_7

    .line 439
    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->cancelHiding()V

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 441
    .local v0, now:J
    iget-wide v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0xfa

    cmp-long v6, v6, v8

    if-gez v6, :cond_94

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v6, :cond_94

    .line 442
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    .line 443
    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    if-eqz v6, :cond_7e

    .line 444
    iget-object v7, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v8, "Fullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DoubleTap"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v6

    if-nez v6, :cond_91

    const-string v6, "On"

    :goto_70
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onToggleFullscreen()V

    .line 451
    :cond_7e
    :goto_7e
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v7, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-eq v6, v7, :cond_8a

    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    sget-object v7, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    if-ne v6, v7, :cond_7

    .line 452
    :cond_8a
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v6}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onPlayPause()V

    goto/16 :goto_7

    .line 444
    :cond_91
    const-string v6, "Off"

    goto :goto_70

    .line 449
    :cond_94
    iput-wide v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownTime:J

    goto :goto_7e

    .line 456
    .end local v0           #now:J
    :pswitch_97
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownX:I

    sub-int v2, v6, v4

    .line 457
    .local v2, vectorX:I
    iget v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->lastDownY:I

    sub-int v3, v6, v5

    .line 458
    .local v3, vectorY:I
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v6, :cond_b4

    .line 459
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x4b

    if-le v6, v7, :cond_bd

    .line 460
    if-lez v2, :cond_b9

    .line 461
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onNext()V

    .line 469
    :cond_b4
    :goto_b4
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->maybeStartHiding()V

    goto/16 :goto_7

    .line 463
    :cond_b9
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->onPrevious()V

    goto :goto_b4

    .line 465
    :cond_bd
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_b4

    iget-boolean v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->canRetry:Z

    if-eqz v6, :cond_b4

    .line 466
    iget-object v6, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v6}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onRetry()V

    goto :goto_b4

    .line 437
    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_97
    .end packed-switch
.end method

.method public onTrackSelectionDisabled()V
    .registers 2

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasCC:Z

    .line 619
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 620
    return-void
.end method

.method public onTrackSelectionEnabled()V
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasCC:Z

    .line 614
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 615
    return-void
.end method

.method public resetTime()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/TimeBar;->resetTime()V

    .line 266
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 3
    .parameter "fullscreen"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 257
    return-void
.end method

.method public setHQ(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 243
    return-void
.end method

.method public setHasNext(Z)V
    .registers 2
    .parameter "hasNext"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasNext:Z

    .line 247
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 248
    return-void
.end method

.method public setHasPrevious(Z)V
    .registers 2
    .parameter "hasPrevious"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasPrevious:Z

    .line 252
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 253
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    .line 191
    return-void
.end method

.method public setMinimal(Z)V
    .registers 4
    .parameter "on"

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    .line 284
    if-eqz p1, :cond_13

    .line 285
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowTimes(Z)V

    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    .line 291
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showControls()V

    .line 292
    return-void

    .line 288
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowTimes(Z)V

    .line 289
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    goto :goto_f
.end method

.method public setShowFullscreen(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 260
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hasFullscreen:Z

    .line 261
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 262
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V
    .registers 4
    .parameter "style"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->style:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->progressColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setProgressColor(I)V

    .line 275
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsBuffered:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowBuffered(Z)V

    .line 276
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_1b

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    iget-boolean v1, p1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->supportsScrubber:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setShowScrubber(Z)V

    .line 279
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 280
    return-void
.end method

.method public setSupportsQualityToggle(Z)V
    .registers 2
    .parameter "supportsQualityToggle"

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->supportsQualityToggle:Z

    .line 238
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 239
    return-void
.end method

.method public setTimes(III)V
    .registers 5
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "bufferedPercent"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    .line 270
    return-void
.end method

.method public showControls()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hidden:Z

    .line 326
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->updateViews()V

    .line 327
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setVisibility(I)V

    .line 328
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->setFocusable(Z)V

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    if-eqz v0, :cond_15

    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->listener:Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;->onShown()V

    .line 332
    :cond_15
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->maybeStartHiding()V

    .line 333
    return-void
.end method

.method public showEnded()V
    .registers 3

    .prologue
    .line 208
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->setBufferedPercent(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 211
    return-void
.end method

.method public showErrorMessage(I)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showErrorMessage(IZ)V

    .line 234
    return-void
.end method

.method public showErrorMessage(IZ)V
    .registers 4
    .parameter "messageId"
    .parameter "canRetry"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showErrorMessage(Ljava/lang/String;Z)V

    .line 230
    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;Z)V
    .registers 9
    .parameter "message"
    .parameter "canRetry"

    .prologue
    const/16 v3, 0xa

    .line 219
    sget-object v1, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->ERROR:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 220
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 221
    .local v0, padding:I
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 222
    iget-object v2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_53

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b002e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iput-boolean p2, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->canRetry:Z

    .line 225
    iget-object v1, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 226
    return-void

    .line 222
    :cond_53
    const-string v1, ""

    goto :goto_40
.end method

.method public showLoading()V
    .registers 2

    .prologue
    .line 214
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->LOADING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->loadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method public showPaused()V
    .registers 2

    .prologue
    .line 203
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public showPlaying()V
    .registers 2

    .prologue
    .line 198
    sget-object v0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->state:Lcom/google/android/youtube/core/player/DefaultControllerOverlay$State;

    .line 199
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->showMainView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method protected startHiding()V
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->minimal:Z

    if-nez v0, :cond_9

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->timeBar:Lcom/google/android/youtube/core/player/TimeBar;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 346
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->hqButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->ccButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->fullscreenButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->playPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->nextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->previousButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 352
    return-void
.end method
