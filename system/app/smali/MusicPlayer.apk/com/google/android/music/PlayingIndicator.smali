.class public Lcom/google/android/music/PlayingIndicator;
.super Landroid/widget/LinearLayout;
.source "PlayingIndicator.java"


# instance fields
.field private mAttachedToWindow:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mLeftImage:Landroid/widget/ImageView;

.field private mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRightImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    .line 38
    iput-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    .line 97
    new-instance v0, Lcom/google/android/music/PlayingIndicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlayingIndicator$1;-><init>(Lcom/google/android/music/PlayingIndicator;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayingIndicator;->addView(Landroid/view/View;)V

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayingIndicator;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlayingIndicator;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlayingIndicator;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mAttachedToWindow:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    if-nez v1, :cond_1c

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    .line 81
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1c
    return-void
.end method

.method private setPlayState(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 117
    iput p1, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    .line 118
    packed-switch p1, :pswitch_data_34

    .line 132
    const-string v0, "PlayingIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayState: unexpected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1d
    return-void

    .line 120
    :pswitch_1e
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->unregisterReceiver()V

    .line 121
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    goto :goto_1d

    .line 124
    :pswitch_25
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 125
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    goto :goto_1d

    .line 128
    :pswitch_2c
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->startAnimation()V

    goto :goto_1d

    .line 118
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method private startAnimation()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 145
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 147
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 148
    return-void
.end method

.method private stopAnimation()V
    .registers 3

    .prologue
    const v1, 0x7f02014e

    .line 151
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 152
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 154
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mLeftImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mRightImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 85
    iget-object v0, p0, Lcom/google/android/music/PlayingIndicator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/PlayingIndicator;->mNowPlayingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mReceiverRegistered:Z

    .line 88
    :cond_e
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 57
    iput-boolean v1, p0, Lcom/google/android/music/PlayingIndicator;->mAttachedToWindow:Z

    .line 58
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    if-eqz v0, :cond_14

    .line 59
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->registerReceiver()V

    .line 66
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    if-ne v0, v1, :cond_15

    .line 67
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->stopAnimation()V

    .line 72
    :cond_14
    :goto_14
    return-void

    .line 68
    :cond_15
    iget v0, p0, Lcom/google/android/music/PlayingIndicator;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 69
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->startAnimation()V

    goto :goto_14
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/music/PlayingIndicator;->unregisterReceiver()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlayingIndicator;->mAttachedToWindow:Z

    .line 94
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 95
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    if-nez p1, :cond_15

    .line 163
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 164
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    .line 171
    :cond_f
    :goto_f
    return-void

    .line 166
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    goto :goto_f

    .line 168
    :cond_15
    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/PlayingIndicator;->setPlayState(I)V

    goto :goto_f
.end method
