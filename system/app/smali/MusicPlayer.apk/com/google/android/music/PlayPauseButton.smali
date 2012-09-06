.class public Lcom/google/android/music/PlayPauseButton;
.super Landroid/widget/ImageButton;
.source "PlayPauseButton.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayState:I

.field private final mPauseImage:Landroid/graphics/drawable/Drawable;

.field private final mPlayImage:Landroid/graphics/drawable/Drawable;

.field private final mStopImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    .line 30
    iput-object p1, p0, Lcom/google/android/music/PlayPauseButton;->mContext:Landroid/content/Context;

    .line 31
    sget-object v2, Lcom/google/android/music/R$styleable;->PlayPauseImages:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 34
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mPauseImage:Landroid/graphics/drawable/Drawable;

    .line 35
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mPlayImage:Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/PlayPauseButton;->mStopImage:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-direct {p0}, Lcom/google/android/music/PlayPauseButton;->updateDrawable()V

    .line 39
    return-void
.end method

.method private updateDrawable()V
    .registers 3

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    packed-switch v0, :pswitch_data_40

    .line 67
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/music/PlayPauseButton;->postInvalidate()V

    .line 68
    return-void

    .line 55
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mStopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0152

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 59
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mPlayImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 63
    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mPauseImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/music/PlayPauseButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlayPauseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 53
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_9
        :pswitch_2d
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public setCurrentPlayState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    if-eq p1, v0, :cond_9

    .line 47
    iput p1, p0, Lcom/google/android/music/PlayPauseButton;->mCurrentPlayState:I

    .line 48
    invoke-direct {p0}, Lcom/google/android/music/PlayPauseButton;->updateDrawable()V

    .line 50
    :cond_9
    return-void
.end method
