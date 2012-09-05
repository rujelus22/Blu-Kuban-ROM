.class public Lcom/sec/android/app/dlna/view/MediaControlView;
.super Landroid/widget/LinearLayout;
.source "MediaControlView.java"


# instance fields
.field public final MODE_PLAY_CONTROL:I

.field public final MODE_VOLUME_CONTROL:I

.field private endTimeText:Landroid/widget/TextView;

.field private mControlsBar:Landroid/widget/LinearLayout;

.field private mCurrentIndex:Landroid/widget/TextView;

.field private mSeekBarLayout:Landroid/widget/RelativeLayout;

.field private mediaName:Landroid/widget/TextView;

.field private media_control_view_bg:Landroid/widget/LinearLayout;

.field private next:Landroid/widget/ImageView;

.field private play:Landroid/widget/ImageView;

.field private previous:Landroid/widget/ImageView;

.field private repeat:Landroid/widget/ImageView;

.field private repeatState:I

.field public seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private seekIgnoreTimes:I

.field private seekIsOn:Z

.field private shuffle:Landroid/widget/ImageView;

.field private shuffleEnabled:Z

.field private startTimeText:Landroid/widget/TextView;

.field private stop:Landroid/widget/ImageView;

.field private volumeDown:Landroid/widget/ImageView;

.field private volumeUp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->MODE_VOLUME_CONTROL:I

    .line 48
    const/16 v2, 0x65

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->MODE_PLAY_CONTROL:I

    .line 70
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIsOn:Z

    .line 80
    iput-object v5, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    .line 82
    iput-object v5, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    .line 84
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    .line 86
    iput v3, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    .line 156
    const/16 v2, 0x14

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    .line 97
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000f

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->addView(Landroid/view/View;)V

    .line 102
    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->media_control_view_bg:Landroid/widget/LinearLayout;

    .line 103
    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    .line 104
    const v2, 0x7f07005e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mControlsBar:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    .line 107
    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusableInTouchMode(Z)V

    .line 111
    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    .line 118
    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    .line 119
    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    .line 120
    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    .line 122
    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    .line 123
    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    .line 125
    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    .line 126
    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    .line 127
    return-void
.end method

.method private setEnableSeekMode(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-ne p1, v0, :cond_a

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setClickable(Z)V

    .line 235
    :goto_9
    return-void

    .line 232
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v3

    if-lez v3, :cond_18

    :goto_14
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setClickable(Z)V

    goto :goto_9

    :cond_18
    move v0, v1

    goto :goto_14
.end method


# virtual methods
.method public getRepeatState()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    return v0
.end method

.method public initProgressBar(II)V
    .registers 6
    .parameter "start"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlView;->setEnableSeekMode(Z)V

    .line 154
    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isShuffled()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    return v0
.end method

.method public setControlButtonsEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 257
    return-void
.end method

.method public setControlGUI(I)V
    .registers 25
    .parameter "contentType"

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 333
    .local v8, NameParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 335
    .local v7, IndexParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    .local v16, SuffleParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    .local v12, RepeatParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 341
    .local v13, SeekBarParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 343
    .local v14, StartTimeParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    .local v6, EndTimeParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mControlsBar:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .local v5, ControlBarParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 349
    .local v18, VolumeUpParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .local v17, VolumeDownParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    .local v15, StopParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 354
    .local v11, PreviousParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 355
    .local v10, PlayParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    .local v9, NextParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_700

    .line 464
    :goto_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mControlsBar:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    return-void

    .line 359
    :pswitch_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->media_control_view_bg:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f02005c

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020056

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020052

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02004e

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02004a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    if-nez v19, :cond_26b

    .line 372
    const/16 v19, 0x1c

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    const/16 v19, 0x2c

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 374
    const/16 v19, 0x12c

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41a8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 376
    const/16 v19, 0x1e

    const/16 v20, 0x15

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 377
    const/16 v19, 0x0

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 378
    const/16 v19, 0x22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 379
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 380
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 381
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 382
    :cond_26b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_31d

    .line 383
    const/16 v19, 0x24

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 384
    const/16 v19, 0x3c

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 385
    const/16 v19, 0x1c2

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41b0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 387
    const/16 v19, 0x1e

    const/16 v20, 0x22

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    const/16 v19, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 389
    const/16 v19, 0x12

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 392
    const/16 v19, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 394
    :cond_31d
    const/16 v19, 0x24

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    const/16 v19, 0x3c

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 396
    const/16 v19, 0x1e0

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41b0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 398
    const/16 v19, 0x46

    const/16 v20, 0x22

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 399
    const/16 v19, 0x0

    const/16 v20, 0x40

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 400
    const/16 v19, 0x4b

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    const/16 v19, 0x2e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    const/16 v19, 0x2e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 403
    const/16 v19, 0x2e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 407
    :pswitch_3bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    :pswitch_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->media_control_view_bg:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0200e7

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 412
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    if-nez v19, :cond_4ec

    .line 413
    const/16 v19, 0x14

    const/16 v20, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 414
    const/16 v19, 0xac

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 415
    const/16 v19, 0x0

    const/16 v20, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    const/16 v19, 0x118

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    const/16 v19, 0x172

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    const/16 v19, 0x1e0

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 419
    const/16 v19, 0x0

    const/16 v20, 0x37

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    const/16 v19, 0x0

    const/16 v20, 0x37

    const/16 v21, 0x14

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 421
    const/16 v19, 0x0

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    const/16 v19, 0x12

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 423
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 424
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 428
    :cond_4ec
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5ff

    .line 429
    const/16 v19, 0x122

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 430
    const/16 v19, 0x14

    const/16 v20, 0x32

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 431
    const/16 v19, 0xa

    const/16 v20, 0x34

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 432
    const/16 v19, 0x5

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 433
    const/16 v19, 0x5

    const/16 v20, 0xf

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 434
    const/16 v19, 0x2d0

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 435
    const/16 v19, 0x0

    const/16 v20, 0x54

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 436
    const/16 v19, 0x0

    const/16 v20, 0x54

    const/16 v21, 0x28

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 437
    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 438
    const/16 v19, 0xa

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 439
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 440
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 441
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 442
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 443
    const/16 v19, 0x5

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 445
    :cond_5ff
    const/16 v19, 0x130

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 446
    const/16 v19, 0x24

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 447
    const/16 v19, 0xa

    const/16 v20, 0x22

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 448
    const/16 v19, 0xa

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 449
    const/16 v19, 0x1e

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    const/16 v19, 0x320

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 451
    const/16 v19, 0x0

    const/16 v20, 0x54

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 452
    const/16 v19, 0x0

    const/16 v20, 0x54

    const/16 v21, 0x28

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 453
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 454
    const/16 v19, 0x1f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 455
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 456
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 457
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 458
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 459
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 357
    :pswitch_data_700
    .packed-switch 0x3
        :pswitch_3d3
        :pswitch_3bd
        :pswitch_14c
    .end packed-switch
.end method

.method public setControlGUI_Landscape(I)V
    .registers 25
    .parameter "contentType"

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    .local v8, NameParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    .local v7, IndexParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 487
    .local v16, SuffleParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    .local v12, RepeatParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 491
    .local v13, SeekBarParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 493
    .local v14, StartTimeParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 495
    .local v6, EndTimeParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mControlsBar:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 497
    .local v5, ControlBarParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .local v18, VolumeUpParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout$LayoutParams;

    .line 501
    .local v17, VolumeDownParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 502
    .local v15, StopParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 504
    .local v11, PreviousParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    .local v10, PlayParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 507
    .local v9, NextParams:Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_6f4

    .line 612
    :goto_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->endTimeText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mControlsBar:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    return-void

    .line 509
    :pswitch_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->media_control_view_bg:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f02005d

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mSeekBarLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    if-nez v19, :cond_26b

    .line 517
    const/16 v19, 0x1c

    const/16 v20, 0xb

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 518
    const/16 v19, 0x2b

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 519
    const/16 v19, 0x258

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41a8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 521
    const/16 v19, 0x1e

    const/16 v20, 0x11

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 522
    const/16 v19, 0x0

    const/16 v20, 0x16

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 523
    const/16 v19, 0x25

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 524
    const/16 v19, 0x64

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 525
    const/16 v19, 0x64

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 526
    const/16 v19, 0x64

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 549
    :goto_239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020056

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f020052

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02004e

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const v20, 0x7f02004a

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_ab

    .line 527
    :cond_26b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_317

    .line 528
    const/16 v19, 0x24

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 529
    const/16 v19, 0x258

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41a8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 531
    const/16 v19, 0x12c

    const/16 v20, 0x12

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 532
    const/16 v19, 0x0

    const/16 v20, 0x2c

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 533
    const/16 v19, 0x73

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 534
    const/16 v19, 0x82

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 535
    const/16 v19, 0x82

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 536
    const/16 v19, 0x82

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_239

    .line 538
    :cond_317
    const/16 v19, 0x24

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 539
    const/16 v19, 0x258

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41a8

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    const/16 v19, 0x12c

    const/16 v20, 0x12

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 542
    const/16 v19, 0x0

    const/16 v20, 0x20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 543
    const/16 v19, 0x7e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 544
    const/16 v19, 0xac

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    const/16 v19, 0xac

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 546
    const/16 v19, 0xac

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_239

    .line 555
    :pswitch_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    :pswitch_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/view/MediaControlView;->media_control_view_bg:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const v20, 0x7f0200e8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 560
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    if-nez v19, :cond_4e0

    .line 561
    const/16 v19, 0x14

    const/16 v20, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 562
    const/16 v19, 0x190

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 563
    const/16 v19, 0x32

    const/16 v20, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 564
    const/16 v19, 0x25d

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 565
    const/16 v19, 0x2c1

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 566
    const/16 v19, 0x240

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 567
    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 568
    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v21, 0x14

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 569
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 570
    const/16 v19, 0x32

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 571
    const/16 v19, 0xa

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 572
    const/16 v19, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 573
    const/16 v19, 0x3f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 575
    const/16 v19, 0x3f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 576
    :cond_4e0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5f3

    .line 577
    const/16 v19, 0x1c

    const/16 v20, 0x1b

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 578
    const/16 v19, 0x258

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 579
    const/16 v19, 0xae

    const/16 v20, 0x1c

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 580
    const/16 v19, 0x32

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 581
    const/16 v19, 0xc

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 582
    const/16 v19, 0x398

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 583
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x28

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 585
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 586
    const/16 v19, 0x39

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 587
    const/16 v19, 0x22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 588
    const/16 v19, 0x4c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 589
    const/16 v19, 0x7c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 590
    const/16 v19, 0x7c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 591
    const/16 v19, 0x7c

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 593
    :cond_5f3
    const/16 v19, 0x24

    const/16 v20, 0x1e

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    const/16 v19, 0x258

    move/from16 v0, v19

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 595
    const/16 v19, 0x9c

    const/16 v20, 0x1f

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 596
    const/16 v19, 0x32

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 597
    const/16 v19, 0x1e

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 598
    const/16 v19, 0x398

    move/from16 v0, v19

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 599
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 600
    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x28

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 601
    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 602
    const/16 v19, 0x4e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 603
    const/16 v19, 0x3a

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 604
    const/16 v19, 0x60

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 605
    const/16 v19, 0x52

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 606
    const/16 v19, 0x52

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 607
    const/16 v19, 0x52

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_ab

    .line 507
    :pswitch_data_6f4
    .packed-switch 0x3
        :pswitch_3c7
        :pswitch_3b1
        :pswitch_14c
    .end packed-switch
.end method

.method public setCurrentIndex(Ljava/lang/String;)V
    .registers 3
    .parameter "index"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mCurrentIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public setMediaName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 130
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_24

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->mediaName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setNextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 210
    return-void
.end method

.method public setPlayClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method public setPrevClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method public setRepeatClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 4
    .parameter "repeatState"

    .prologue
    .line 268
    iput p1, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    .line 269
    packed-switch p1, :pswitch_data_22

    .line 280
    :goto_5
    return-void

    .line 271
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 274
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 277
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 269
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method public setSeeking(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIsOn:Z

    .line 222
    return-void
.end method

.method public setShuffleClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public setShuffleEnable(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    .line 284
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 288
    :goto_f
    return-void

    .line 287
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f
.end method

.method public setStartTime(I)V
    .registers 4
    .parameter "time"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setStopClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method public setVolumeDownClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method

.method public setVolumeUpClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->volumeUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method public showRepeat(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 317
    if-eqz p1, :cond_9

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    :goto_8
    return-void

    .line 320
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeat:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public showShuffle(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 324
    if-eqz p1, :cond_9

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :goto_8
    return-void

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffle:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method

.method public toggleRepeat()V
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    packed-switch v0, :pswitch_data_18

    .line 303
    :goto_5
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->setRepeatMode(I)V

    .line 304
    return-void

    .line 294
    :pswitch_b
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    goto :goto_5

    .line 297
    :pswitch_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    goto :goto_5

    .line 300
    :pswitch_13
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->repeatState:I

    goto :goto_5

    .line 292
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public toggleShuffle()V
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    .line 308
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->shuffleEnabled:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/view/MediaControlView;->setShuffleEnable(Z)V

    .line 309
    return-void

    .line 307
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public updateProgressBar(I)V
    .registers 8
    .parameter "progress"

    .prologue
    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v2

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIsOn:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 162
    .local v0, prevProgress:I
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v1

    .line 164
    .local v1, totalLength:I
    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    const/16 v3, 0xa

    if-le v2, v3, :cond_3a

    .line 165
    iget v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    if-ltz v2, :cond_34

    .line 166
    iget v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    .line 182
    .end local v0           #prevProgress:I
    .end local v1           #totalLength:I
    :cond_33
    :goto_33
    return-void

    .line 168
    .restart local v0       #prevProgress:I
    .restart local v1       #totalLength:I
    :cond_34
    iput v5, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    .line 169
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    goto :goto_33

    .line 172
    :cond_3a
    iput v5, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekIgnoreTimes:I

    .line 173
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/view/MediaControlView;->setSeeking(Z)V

    goto :goto_33

    .line 177
    .end local v0           #prevProgress:I
    .end local v1           #totalLength:I
    :cond_40
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    if-eq v2, p1, :cond_33

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlView;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method
