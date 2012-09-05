.class public Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
.super Landroid/widget/LinearLayout;
.source "MediaControlViewDMP.java"


# instance fields
.field public final MODE_PLAY_CONTROL:I

.field public final MODE_VOLUME_CONTROL:I

.field private endTimeText:Landroid/widget/TextView;

.field private mSeekBarLayout:Landroid/widget/LinearLayout;

.field private next:Landroid/widget/ImageView;

.field private play:Landroid/widget/ImageView;

.field private previous:Landroid/widget/ImageView;

.field private repeat:Landroid/widget/ImageView;

.field private repeatState:I

.field private seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private seekIgnoreTimes:I

.field private seekIsOn:Z

.field private shuffle:Landroid/widget/ImageView;

.field private shuffleEnabled:Z

.field private startTimeText:Landroid/widget/TextView;

.field private stop:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->MODE_VOLUME_CONTROL:I

    .line 44
    const/16 v2, 0x65

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->MODE_PLAY_CONTROL:I

    .line 46
    iput-object v5, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    .line 48
    iput-object v5, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffle:Landroid/widget/ImageView;

    .line 64
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    .line 66
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIsOn:Z

    .line 68
    iput v4, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    .line 182
    const/16 v2, 0x14

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    .line 75
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->addView(Landroid/view/View;)V

    .line 80
    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffle:Landroid/widget/ImageView;

    .line 81
    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    .line 83
    const v2, 0x7f070059

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->mSeekBarLayout:Landroid/widget/LinearLayout;

    .line 85
    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->startTimeText:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->endTimeText:Landroid/widget/TextView;

    .line 87
    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusableInTouchMode(Z)V

    .line 90
    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->previous:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    .line 92
    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->next:Landroid/widget/ImageView;

    .line 93
    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->stop:Landroid/widget/ImageView;

    .line 94
    return-void
.end method

.method private setEnableSeekMode(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    if-ne p1, v0, :cond_a

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setClickable(Z)V

    .line 290
    :goto_9
    return-void

    .line 287
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

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
.method public SetPlayPauseButtonImage(Z)V
    .registers 4
    .parameter "isPaused"

    .prologue
    .line 251
    if-eqz p1, :cond_b

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 255
    :goto_a
    return-void

    .line 254
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_a
.end method

.method public getRepeatState()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    return v0
.end method

.method public getSeekBar()Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method public initProgressBar(II)V
    .registers 7
    .parameter "start"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 157
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initProgressBar:start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setSeeking(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->endTimeText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setEnableSeekMode(Z)V

    .line 165
    return-void
.end method

.method public initProgressBar(IIZ)V
    .registers 8
    .parameter "start"
    .parameter "duration"
    .parameter "reset"

    .prologue
    const/4 v3, 0x0

    .line 170
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initProgressBar:start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setSeeking(Z)V

    .line 173
    if-eqz p3, :cond_37

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 176
    :cond_37
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->endTimeText:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setEnableSeekMode(Z)V

    .line 180
    return-void
.end method

.method public isShuffled()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    return v0
.end method

.method public setControlButtonsEnabled(ZZZ)V
    .registers 6
    .parameter "enabled"
    .parameter "isPlaying"
    .parameter "mPaused"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 264
    if-eqz p1, :cond_49

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->next:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->stop:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 267
    if-nez p2, :cond_2f

    if-eqz p3, :cond_40

    .line 268
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 271
    :goto_37
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->previous:Landroid/widget/ImageView;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 281
    :goto_3f
    return-void

    .line 270
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_37

    .line 273
    :cond_49
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->next:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->stop:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 275
    if-nez p2, :cond_5d

    if-eqz p3, :cond_6e

    .line 276
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 279
    :goto_65
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->previous:Landroid/widget/ImageView;

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3f

    .line 278
    :cond_6e
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_65
.end method

.method public setNextClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->next:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method public setOnRepeatClicked(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method public setOnShuffleClicked(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 236
    return-void
.end method

.method public setPlayClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->play:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-void
.end method

.method public setPrevClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->previous:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 4
    .parameter "repeatState"

    .prologue
    .line 105
    iput p1, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    .line 106
    packed-switch p1, :pswitch_data_22

    .line 117
    :goto_5
    return-void

    .line 108
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 111
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 114
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeat:Landroid/widget/ImageView;

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_5

    .line 106
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method public setSeekbarVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->mSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public setSeeking(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIsOn:Z

    .line 240
    return-void
.end method

.method public setShuffleEnable(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffle:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 146
    :goto_f
    return-void

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffle:Landroid/widget/ImageView;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f
.end method

.method public setStartTime(I)V
    .registers 4
    .parameter "time"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public setStopClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public toggleRepeat()V
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    packed-switch v0, :pswitch_data_18

    .line 132
    :goto_5
    iget v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setRepeatMode(I)V

    .line 133
    return-void

    .line 123
    :pswitch_b
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    goto :goto_5

    .line 126
    :pswitch_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    goto :goto_5

    .line 129
    :pswitch_13
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->repeatState:I

    goto :goto_5

    .line 121
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
    .line 136
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    .line 137
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->shuffleEnabled:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setShuffleEnable(Z)V

    .line 138
    return-void

    .line 136
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

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v2

    if-eqz v2, :cond_40

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIsOn:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 188
    .local v0, prevProgress:I
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getMax()I

    move-result v1

    .line 190
    .local v1, totalLength:I
    sub-int v2, p1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v1

    const/16 v3, 0xa

    if-le v2, v3, :cond_3a

    .line 191
    iget v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    if-ltz v2, :cond_34

    .line 192
    iget v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    .line 208
    .end local v0           #prevProgress:I
    .end local v1           #totalLength:I
    :cond_33
    :goto_33
    return-void

    .line 194
    .restart local v0       #prevProgress:I
    .restart local v1       #totalLength:I
    :cond_34
    iput v5, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    .line 195
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setSeeking(Z)V

    goto :goto_33

    .line 198
    :cond_3a
    iput v5, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekIgnoreTimes:I

    .line 199
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setSeeking(Z)V

    goto :goto_33

    .line 203
    .end local v0           #prevProgress:I
    .end local v1           #totalLength:I
    :cond_40
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    if-eq v2, p1, :cond_33

    .line 204
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->seekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->startTimeText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method
