.class public Lcom/google/android/music/PlaybackControls;
.super Ljava/lang/Object;
.source "PlaybackControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMusicFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNextButton:Lcom/google/android/music/RepeatingImageButton;

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPrevButton:Lcom/google/android/music/RepeatingImageButton;

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mShuffleButton:Landroid/widget/ImageView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/RepeatingImageButton;Lcom/google/android/music/PlayPauseButton;Lcom/google/android/music/RepeatingImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/music/activitymanagement/MusicFragment;)V
    .registers 10
    .parameter "context"
    .parameter "prevButton"
    .parameter "playPauseButton"
    .parameter "nextButton"
    .parameter "repeatButton"
    .parameter "shuffleButton"
    .parameter "fragment"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/music/PlaybackControls;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/google/android/music/PlaybackControls;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/PlaybackControls;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaybackControls;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 36
    iput-object p2, p0, Lcom/google/android/music/PlaybackControls;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    .line 37
    iput-object p3, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 38
    iget-object v0, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v0}, Lcom/google/android/music/PlayPauseButton;->requestFocus()Z

    .line 39
    iput-object p4, p0, Lcom/google/android/music/PlaybackControls;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    .line 40
    iput-object p6, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    .line 41
    iput-object p5, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    .line 42
    iput-object p7, p0, Lcom/google/android/music/PlaybackControls;->mMusicFragment:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 43
    invoke-virtual {p7}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaybackControls;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 44
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->initButtons()V

    .line 45
    return-void
.end method

.method private cycleRepeat()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    .line 112
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 113
    .local v2, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v2, :cond_6

    .line 133
    :goto_5
    return-void

    .line 117
    :cond_6
    :try_start_6
    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v1

    .line 118
    .local v1, mode:I
    if-nez v1, :cond_1f

    .line 119
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 129
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setRepeatButtonImage()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_5

    .line 130
    .end local v1           #mode:I
    :catch_14
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 120
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #mode:I
    :cond_1f
    if-ne v1, v3, :cond_33

    .line 121
    const/4 v3, 0x1

    :try_start_22
    invoke-interface {v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 122
    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v3

    if-eqz v3, :cond_10

    .line 123
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 124
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setShuffleButtonImage()V

    goto :goto_10

    .line 127
    :cond_33
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_37} :catch_14

    goto :goto_10
.end method

.method private doPauseResume()V
    .registers 5

    .prologue
    .line 136
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 137
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v1, :cond_10

    .line 139
    :try_start_4
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 140
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->stop()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_1b

    .line 149
    :goto_d
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setPauseButtonImage()V

    .line 151
    :cond_10
    return-void

    .line 141
    :cond_11
    :try_start_11
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 142
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->pause()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_d

    .line 146
    :catch_1b
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 144
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_26
    :try_start_26
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->play()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_1b

    goto :goto_d
.end method

.method private initButtons()V
    .registers 4

    .prologue
    .line 48
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 49
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 50
    .local v0, imagePadding:I
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/PlaybackControls;->prepButton(Landroid/view/View;I)V

    .line 51
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/PlaybackControls;->prepButton(Landroid/view/View;I)V

    .line 52
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/PlaybackControls;->prepButton(Landroid/view/View;I)V

    .line 53
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/PlaybackControls;->prepButton(Landroid/view/View;I)V

    .line 54
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/PlaybackControls;->prepButton(Landroid/view/View;I)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setPauseButtonImage()V

    .line 56
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setShuffleButtonImage()V

    .line 57
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setRepeatButtonImage()V

    .line 58
    return-void
.end method

.method private prepButton(Landroid/view/View;I)V
    .registers 5
    .parameter "button"
    .parameter "padding"

    .prologue
    .line 208
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    iget-object v1, p0, Lcom/google/android/music/PlaybackControls;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/music/PlaybackControls;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_18

    .line 211
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    :cond_18
    return-void
.end method

.method private setPauseButtonImage()V
    .registers 5

    .prologue
    .line 154
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 155
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v1, :cond_16

    .line 157
    :try_start_4
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 158
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 168
    :cond_16
    :goto_16
    return-void

    .line 159
    :cond_17
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 160
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_23} :catch_24

    goto :goto_16

    .line 164
    :catch_24
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_24

    goto :goto_16
.end method

.method private setRepeatButtonImage()V
    .registers 5

    .prologue
    .line 171
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 172
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    if-nez v2, :cond_9

    .line 188
    :cond_8
    :goto_8
    return-void

    .line 174
    :cond_9
    :try_start_9
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 182
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_8

    .line 185
    :catch_19
    move-exception v0

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 176
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_24
    :try_start_24
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    const v3, 0x7f02007f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 179
    :pswitch_2d
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_19

    goto :goto_8

    .line 174
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_24
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .registers 5

    .prologue
    .line 191
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 192
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    if-nez v2, :cond_9

    .line 205
    :cond_8
    :goto_8
    return-void

    .line 194
    :cond_9
    :try_start_9
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 199
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_19

    goto :goto_8

    .line 202
    :catch_19
    move-exception v0

    .line 203
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 196
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_24
    :try_start_24
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_19

    goto :goto_8

    .line 194
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
    .end packed-switch
.end method

.method private toggleShuffle()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 88
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 89
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v1, :cond_6

    .line 109
    :goto_5
    return-void

    .line 93
    :cond_6
    :try_start_6
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v2

    .line 94
    .local v2, shuffle:I
    if-nez v2, :cond_2c

    .line 95
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 96
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v3

    if-ne v3, v4, :cond_1d

    .line 97
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 98
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setRepeatButtonImage()V

    .line 105
    :cond_1d
    :goto_1d
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setShuffleButtonImage()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_20} :catch_21

    goto :goto_5

    .line 106
    .end local v2           #shuffle:I
    :catch_21
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #shuffle:I
    :cond_2c
    if-ne v2, v4, :cond_33

    .line 101
    const/4 v3, 0x0

    :try_start_2f
    invoke-interface {v1, v3}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    goto :goto_1d

    .line 103
    :cond_33
    const-string v3, "MediaPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid shuffle mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4b} :catch_21

    goto :goto_1d
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 61
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 62
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mShuffleButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_a

    .line 63
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->toggleShuffle()V

    .line 85
    :cond_9
    :goto_9
    return-void

    .line 64
    :cond_a
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mRepeatButton:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_12

    .line 65
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->cycleRepeat()V

    goto :goto_9

    .line 66
    :cond_12
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-ne p1, v2, :cond_1a

    .line 67
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->doPauseResume()V

    goto :goto_9

    .line 68
    :cond_1a
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v2, :cond_2f

    .line 69
    if-eqz v1, :cond_9

    .line 71
    :try_start_20
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->prev()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_9

    .line 72
    :catch_24
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 75
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2f
    iget-object v2, p0, Lcom/google/android/music/PlaybackControls;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v2, :cond_44

    .line 76
    if-eqz v1, :cond_9

    .line 78
    :try_start_35
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->next()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_9

    .line 79
    :catch_39
    move-exception v0

    .line 80
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "PlaybackControls"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 83
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_44
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown view clicked on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public refreshButtonImages()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setPauseButtonImage()V

    .line 217
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setRepeatButtonImage()V

    .line 218
    invoke-direct {p0}, Lcom/google/android/music/PlaybackControls;->setShuffleButtonImage()V

    .line 219
    return-void
.end method
