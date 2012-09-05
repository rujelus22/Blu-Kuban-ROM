.class public Lcom/sec/android/app/ve/activity/ProjectPlayActivity;
.super Landroid/app/Activity;
.source "ProjectPlayActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I = null

.field private static final BACK_DIR:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final FWD_DIR:I = 0x1

.field private static final HEIGHT:I = 0x1e0

.field private static final MSG_CALL_FWD:I = 0x66

.field private static final MSG_CALL_PLAY:I = 0x65

.field private static final MSG_CALL_PREV:I = 0x67

.field private static final MSG_CHECK_DOUBLE_TAP:I = 0x6e

.field private static final MSG_CHECK_FOR_PAUSE:I = 0x6b

.field private static final MSG_CHECK_FOR_PLAYING:I = 0x6d

.field private static final MSG_HANDLE_PAUSE:I = 0x6f

.field private static final MSG_HANDLE_PLAY:I = 0x70

.field private static final MSG_RELEASE_WAKE_LOCK:I = 0x6a

.field private static final MSG_SEEK_CREATE_PLAYER:I = 0x69

.field private static final MSG_TOGGLE_VISIBILITY:I = 0x6c

.field private static final MSG_UPDATE_TIME:I = 0x68

.field private static final WIDTH:I = 0x320


# instance fields
.field private _instance:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

.field private controlVisible:Z

.field private controller:Landroid/widget/LinearLayout;

.field private controllerTouch:Z

.field private cur_time:I

.field private full_time:Landroid/widget/TextView;

.field private fwd_project:Landroid/widget/ImageButton;

.field private isCreated:Z

.field private isPaused:Z

.field private isPlaying:Z

.field private isTerminated:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

.field private mCaptionPreviewText:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

.field private mDrawingImg:Landroid/widget/ImageView;

.field private mFwdListener:Landroid/view/View$OnTouchListener;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLock:Landroid/widget/ImageView;

.field private mLowBatteryWarningLevel:I

.field private mPauseListener:Landroid/view/View$OnTouchListener;

.field private mPlayListener:Landroid/view/View$OnTouchListener;

.field private mPrevListener:Landroid/view/View$OnTouchListener;

.field private mScreenOn:Z

.field private mSingleClick:Z

.field private mSurfaceListener:Landroid/view/View$OnTouchListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTocuhListener:Landroid/view/View$OnTouchListener;

.field private onCreate:Z

.field private pause_project:Landroid/widget/ImageButton;

.field private play_project:Landroid/widget/ImageButton;

.field private playback_complete:Z

.field private playerLockState:Z

.field private pm:Landroid/os/PowerManager;

.field private prev_project:Landroid/widget/ImageButton;

.field private proj_count:I

.field private proj_position:I

.field private project_name:Landroid/widget/TextView;

.field private res_layout:Landroid/widget/LinearLayout;

.field private seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private startSeek:Z

.field private story_time:Landroid/widget/TextView;

.field private surfaceChange:Z

.field private timeline:Landroid/widget/SeekBar;

.field private userPause:Z

.field private wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState()[I
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->values()[Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_b1

    :goto_16
    :try_start_16
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1f} :catch_ae

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_28} :catch_ab

    :goto_28
    :try_start_28
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_32} :catch_a9

    :goto_32
    :try_start_32
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_DISPLAY:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_a7

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_a5

    :goto_46
    :try_start_46
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_a3

    :goto_50
    :try_start_50
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_a1

    :goto_59
    :try_start_59
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_62} :catch_9f

    :goto_62
    :try_start_62
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6b} :catch_9d

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_74} :catch_9b

    :goto_74
    :try_start_74
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_7d} :catch_99

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_97

    :goto_87
    :try_start_87
    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_95

    :goto_91
    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

    goto/16 :goto_4

    :catch_95
    move-exception v1

    goto :goto_91

    :catch_97
    move-exception v1

    goto :goto_87

    :catch_99
    move-exception v1

    goto :goto_7d

    :catch_9b
    move-exception v1

    goto :goto_74

    :catch_9d
    move-exception v1

    goto :goto_6b

    :catch_9f
    move-exception v1

    goto :goto_62

    :catch_a1
    move-exception v1

    goto :goto_59

    :catch_a3
    move-exception v1

    goto :goto_50

    :catch_a5
    move-exception v1

    goto :goto_46

    :catch_a7
    move-exception v1

    goto :goto_3c

    :catch_a9
    move-exception v1

    goto :goto_32

    :catch_ab
    move-exception v1

    goto/16 :goto_28

    :catch_ae
    move-exception v1

    goto/16 :goto_1f

    :catch_b1
    move-exception v1

    goto/16 :goto_16
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->DOUBLE_TAP_TIMEOUT:I

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionPreviewText:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;

    .line 243
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$1;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$2;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mTocuhListener:Landroid/view/View$OnTouchListener;

    .line 444
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$3;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 565
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$4;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPauseListener:Landroid/view/View$OnTouchListener;

    .line 592
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$5;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPlayListener:Landroid/view/View$OnTouchListener;

    .line 620
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$6;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mFwdListener:Landroid/view/View$OnTouchListener;

    .line 648
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$7;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPrevListener:Landroid/view/View$OnTouchListener;

    .line 674
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$8;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceListener:Landroid/view/View$OnTouchListener;

    .line 934
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$9;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    .line 1177
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$10;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->listener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z

    return v0
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z

    return-void
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    return v0
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z

    return v0
.end method

.method static synthetic access$13(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    return v0
.end method

.method static synthetic access$14(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z

    return v0
.end method

.method static synthetic access$15(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 110
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    return-void
.end method

.method static synthetic access$16(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showControls()V

    return-void
.end method

.method static synthetic access$18(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    return-void
.end method

.method static synthetic access$19(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findNextValidProjectToPlay(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    return-void
.end method

.method static synthetic access$21(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    return v0
.end method

.method static synthetic access$22(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->setProjectName(I)V

    return-void
.end method

.method static synthetic access$23(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    return-void
.end method

.method static synthetic access$24(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    return-void
.end method

.method static synthetic access$25(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    return v0
.end method

.method static synthetic access$26(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->full_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/SeekBar;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$28(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 765
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getCurrentPlayingElement(J)V

    return-void
.end method

.method static synthetic access$29(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showCaption()V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$30(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z

    return v0
.end method

.method static synthetic access$31(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z

    return v0
.end method

.method static synthetic access$32(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$33(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$34(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    return-void
.end method

.method static synthetic access$35(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->userPause:Z

    return-void
.end method

.method static synthetic access$36(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSingleClick:Z

    return v0
.end method

.method static synthetic access$37(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSingleClick:Z

    return-void
.end method

.method static synthetic access$38(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->call_play()V

    return-void
.end method

.method static synthetic access$39(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I

    return v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->handleLowBattery()V

    return-void
.end method

.method static synthetic access$41(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->handleBatteryLevels(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mScreenOn:Z

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controllerTouch:Z

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private call_play()V
    .registers 4

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z

    if-nez v0, :cond_80

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got the Audio Focus while previewing::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1152
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    if-eqz v0, :cond_62

    .line 1153
    const-string v0, "playback complete"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1154
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v0

    .line 1154
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lt v1, v0, :cond_53

    .line 1156
    const-string v0, "play from beginning"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    .line 1176
    :goto_52
    return-void

    .line 1159
    :cond_53
    const-string v0, "seeked"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1160
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    goto :goto_52

    .line 1164
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cur time::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1165
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    goto :goto_52

    .line 1173
    :cond_80
    const-string v0, "destroy player as still seeking"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1174
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    goto :goto_52
.end method

.method public static dismissWaitProgress()V
    .registers 2

    .prologue
    .line 420
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    if-eqz v0, :cond_a

    .line 421
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->sendEmptyMessage(I)Z

    .line 422
    :cond_a
    return-void
.end method

.method private findNextValidProjectToPlay(I)I
    .registers 9
    .parameter "nDirection"

    .prologue
    .line 698
    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    .line 699
    .local v1, i:I
    const/4 v0, -0x1

    .line 701
    .local v0, found_position:I
    :cond_3
    if-ltz v1, :cond_9

    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I

    if-lt v1, v3, :cond_d

    .line 718
    :cond_9
    :goto_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_36

    .end local v0           #found_position:I
    :goto_c
    return v0

    .line 703
    .restart local v0       #found_position:I
    :cond_d
    add-int/2addr v1, p1

    .line 705
    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I

    if-ne v1, v3, :cond_2f

    .line 706
    const/4 v1, 0x0

    .line 711
    :cond_13
    :goto_13
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 712
    .local v2, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 714
    move v0, v1

    .line 715
    goto :goto_9

    .line 707
    .end local v2           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_2f
    if-gez v1, :cond_13

    .line 708
    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_13

    .line 718
    :cond_36
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    goto :goto_c
.end method

.method private getCurrentPlayingElement(J)V
    .registers 18
    .parameter "aPosition"

    .prologue
    .line 768
    const/4 v9, 0x0

    .line 769
    .local v9, temp:F
    move-wide/from16 v0, p1

    .line 770
    .local v0, curPos:J
    const/4 v8, 0x0

    .line 771
    .local v8, sElement:Lcom/samsung/app/video/editor/external/Element;
    const-wide/16 v3, 0x0

    .line 774
    .local v3, inElementTime:J
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 776
    .local v6, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-nez v6, :cond_19

    .line 811
    :cond_18
    :goto_18
    return-void

    .line 778
    :cond_19
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v7

    .line 780
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 781
    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 783
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 784
    .local v2, e:Lcom/samsung/app/video/editor/external/Element;
    long-to-float v10, v0

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v11

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x447a

    mul-float/2addr v11, v12

    add-float/2addr v11, v9

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_61

    .line 785
    move-object v8, v2

    .line 786
    long-to-float v10, v0

    sub-float/2addr v10, v9

    float-to-long v3, v10

    .line 788
    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    invoke-direct {p0, v8, v10, v11}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isDrawingExists(Lcom/samsung/app/video/editor/external/Element;J)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 789
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    long-to-float v11, v11

    invoke-virtual {v10, v8, p0, v11}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V

    goto :goto_18

    .line 791
    :cond_5a
    iget-object v10, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 795
    :cond_61
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x447a

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    .line 798
    long-to-float v10, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    long-to-float v11, v11

    add-float/2addr v11, v9

    cmpg-float v10, v10, v11

    if-lez v10, :cond_18

    .line 805
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    long-to-float v10, v10

    add-float/2addr v9, v10

    goto :goto_21
.end method

.method private handleBatteryLevels(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 367
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, battStatus:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive battStatus :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 369
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 370
    .local v1, battScale:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive battScale :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 371
    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, battLevel:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive battLevel :: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 378
    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mLowBatteryWarningLevel:I

    if-ge v0, v3, :cond_5a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5a

    .line 380
    const-string v3, "onReceive battery level is and battery is not charging"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->handleLowBattery()V

    .line 384
    :cond_5a
    return-void
.end method

.method private handleLowBattery()V
    .registers 5

    .prologue
    .line 389
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 390
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 391
    const-string v2, "Battery Low: Preview Playing"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 393
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 394
    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 397
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 398
    const-string v2, "Battery Low: saving the project"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 402
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 403
    .local v1, transcodeElemen:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const v2, 0x7f08006b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 405
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 411
    .end local v1           #transcodeElemen:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_5e
    :goto_5e
    return-void

    .line 408
    :catch_5f
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5e
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 497
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 507
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mTocuhListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPlayListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 513
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPauseListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 516
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->prev_project:Landroid/widget/ImageButton;

    .line 517
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->prev_project:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mPrevListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    const v0, 0x7f0b00c6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->fwd_project:Landroid/widget/ImageButton;

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->fwd_project:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mFwdListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 523
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->full_time:Landroid/widget/TextView;

    .line 526
    iput-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    .line 529
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->seekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 541
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mLock:Landroid/widget/ImageView;

    .line 543
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 544
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pm:Landroid/os/PowerManager;

    .line 545
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;

    .line 546
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->project_name:Landroid/widget/TextView;

    .line 549
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 550
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionPreviewText:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionPreviewText:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setInputType(I)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iput-boolean v3, v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->isProjectPlay:Z

    .line 558
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;

    .line 560
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->init()V

    .line 563
    return-void
.end method

.method private isDrawingExists(Lcom/samsung/app/video/editor/external/Element;J)Z
    .registers 14
    .parameter "aElement"
    .parameter "aCurrentTime"

    .prologue
    const/4 v9, 0x0

    .line 816
    const/4 v1, 0x0

    .line 817
    .local v1, isExist:Z
    if-eqz p1, :cond_15

    .line 819
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v3

    .line 821
    .local v3, mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    const/4 v2, 0x0

    .line 822
    .local v2, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    if-eqz v3, :cond_15

    .line 824
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_28

    .line 866
    .end local v2           #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v3           #mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inside isDrawingElemExist and returing --."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 867
    .end local v1           #isExist:Z
    :goto_27
    return v1

    .line 824
    .restart local v1       #isExist:Z
    .restart local v2       #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .restart local v3       #mDrawingEleList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_28
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 826
    .local v4, mtempClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    move-object v2, v4

    .line 828
    const/4 v5, 0x0

    .line 829
    .local v5, startTime:F
    const/4 v0, 0x0

    .line 833
    .local v0, endTime:F
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    cmpg-float v7, v7, v8

    if-lez v7, :cond_f

    .line 836
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_f

    .line 840
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v5, v7, v8

    .line 841
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v0, v7, v8

    .line 843
    cmpg-float v7, v5, v9

    if-gtz v7, :cond_65

    cmpg-float v7, v0, v9

    if-lez v7, :cond_f

    .line 846
    :cond_65
    cmpg-float v7, v5, v9

    if-gez v7, :cond_6a

    .line 847
    const/4 v5, 0x0

    .line 850
    :cond_6a
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    cmpl-float v7, v0, v7

    if-lez v7, :cond_81

    .line 851
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v0, v7, v8

    .line 856
    :cond_81
    long-to-float v7, p2

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_f

    .line 857
    long-to-float v7, p2

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_f

    .line 861
    const/4 v1, 0x1

    goto :goto_27
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 1364
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1363
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1367
    .local v1, windowmanager:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v2

    .line 1372
    :goto_12
    return v2

    .line 1368
    :catch_13
    move-exception v0

    .line 1369
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1372
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private onDoubleTap()V
    .registers 5

    .prologue
    const/16 v3, 0x1e0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "double tap for this PVG:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1297
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->surfaceChange:Z

    if-nez v0, :cond_5d

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surface long click::800*480::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x320

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 1301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->surfaceChange:Z

    .line 1308
    :goto_5c
    return-void

    .line 1303
    :cond_5d
    const-string v0, "surface long click::600*340"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x280

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 1306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->surfaceChange:Z

    goto :goto_5c
.end method

.method private registerForBroadcast()V
    .registers 5

    .prologue
    .line 204
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v2, lIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 216
    const-string v3, "Registering::::"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v1, lBattIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void
.end method

.method private releaseWakeLock()V
    .registers 5

    .prologue
    const/16 v3, 0x6a

    .line 1379
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1381
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 1351
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1350
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1354
    .local v1, windowmanager:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v2

    .line 1359
    :goto_12
    return v2

    .line 1355
    :catch_13
    move-exception v0

    .line 1356
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1359
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private setProjectName(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 929
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->project_name:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    .line 929
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    return-void
.end method

.method private showCaption()V
    .registers 8

    .prologue
    .line 872
    const/4 v3, 0x0

    .line 874
    .local v3, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    iget v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    int-to-float v5, v5

    const/high16 v6, 0x447a

    div-float v0, v5, v6

    .line 877
    .local v0, CurrentStory_time:F
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 878
    .local v2, lTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-nez v2, :cond_1b

    .line 906
    :cond_1a
    :goto_1a
    return-void

    .line 882
    :cond_1b
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTextEleList()Ljava/util/List;

    move-result-object v4

    .line 883
    .local v4, mTextEleList:Ljava/util/List;
    if-eqz v4, :cond_1a

    .line 886
    const/4 v1, 0x0

    .local v1, k:I
    :goto_22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1a

    .line 888
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    check-cast v3, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 889
    .restart local v3       #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v5

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_4f

    .line 890
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v5

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_4f

    .line 892
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionTheme(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 893
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 894
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    goto :goto_1a

    .line 898
    :cond_4f
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionClipartParams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 899
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionvisible(Z)V

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method private showControls()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    .line 1142
    const-string v0, "D3"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1144
    return-void
.end method

.method public static showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "str"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 415
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    if-eqz v0, :cond_18

    .line 416
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    sget-object v1, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    :cond_18
    return-void
.end method


# virtual methods
.method public bitmapCreated(Lcom/samsung/app/video/editor/external/Element;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .parameter "aElement"
    .parameter "bitmap"
    .parameter "aFilePath"

    .prologue
    .line 1627
    if-eqz p2, :cond_b

    .line 1629
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity$11;-><init>(Lcom/sec/android/app/ve/activity/ProjectPlayActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1659
    :goto_a
    return-void

    .line 1656
    :cond_b
    const-string v0, "Inside bitmapCreated and making it null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mDrawingImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a
.end method

.method public getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J
    .registers 7
    .parameter "e"

    .prologue
    .line 915
    const-wide/16 v1, 0x0

    .line 916
    .local v1, trans_time:J
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 917
    const/4 v0, 0x0

    .local v0, j:I
    :goto_13
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1e

    .line 924
    .end local v0           #j:I
    :cond_1d
    return-wide v1

    .line 918
    .restart local v0       #j:I
    :cond_1e
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3e

    .line 920
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v3

    int-to-long v1, v3

    .line 917
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public onAudioFocusChange(I)V
    .registers 3
    .parameter "focusChange"

    .prologue
    .line 1389
    const/4 v0, -0x1

    if-ne p1, v0, :cond_16

    .line 1391
    const-string v0, "This is inside onAudioFocusChange and VE Preview lost focus pausing the preview"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1392
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    if-eqz v0, :cond_16

    .line 1393
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1397
    :cond_16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->onCreate:Z

    .line 136
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestWindowFeature(I)Z

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 139
    iput-object p0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectPlayActivity;

    .line 140
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->registerForBroadcast()V

    .line 142
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->init()V

    .line 144
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getProjectSelected()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    .line 145
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_count:I

    .line 148
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    const-string v0, "PPA onDestroy"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->terminate()V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->finish()V

    .line 159
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1312
    if-ne p1, v4, :cond_f

    .line 1313
    iget-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z

    if-eqz v1, :cond_b

    .line 1343
    :goto_a
    return v0

    .line 1316
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->finish()V

    goto :goto_a

    .line 1318
    :cond_f
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_39

    .line 1320
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_39

    .line 1321
    iget-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z

    if-eqz v2, :cond_3b

    .line 1322
    const-string v0, "locked:::unlock the phone"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mLock:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1326
    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestSystemKeyEvent(IZ)Z

    .line 1327
    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z

    .line 1328
    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    :cond_39
    :goto_39
    move v0, v1

    .line 1343
    goto :goto_a

    .line 1330
    :cond_3b
    const-string v2, "unlocked::lock the phone"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1331
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mLock:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1332
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1333
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1334
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1336
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1337
    invoke-direct {p0, v5, v0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestSystemKeyEvent(IZ)Z

    .line 1338
    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playerLockState:Z

    goto :goto_39
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->onCreate:Z

    .line 174
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z

    if-eqz v0, :cond_28

    .line 175
    :cond_11
    const-string v0, "PPA onPause and palying||paused"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 181
    :cond_28
    invoke-direct {p0, v4}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 182
    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestSystemKeyEvent(IZ)Z

    .line 183
    :cond_31
    invoke-direct {p0, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 184
    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestSystemKeyEvent(IZ)Z

    .line 185
    :cond_3a
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 186
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    const-string v0, "PPA onResume"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->onCreate:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    if-nez v0, :cond_15

    .line 165
    const-string v0, "Loading..."

    invoke-static {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 167
    :cond_15
    const/16 v0, 0x1a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->requestSystemKeyEvent(IZ)Z

    .line 168
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 169
    return-void
.end method

.method public onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V
    .registers 11
    .parameter "state"

    .prologue
    const/16 v8, 0x6c

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1403
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_236

    .line 1622
    :cond_12
    :goto_12
    return-void

    .line 1408
    :pswitch_13
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1411
    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    if-nez v3, :cond_12

    .line 1412
    const-string v3, "terminating coz of Audio fail"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1414
    const-string v3, "Trminated ::: Aduio Fail"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1415
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    goto :goto_12

    .line 1426
    :pswitch_2d
    :try_start_2d
    const-string v3, "Player close Event"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1427
    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    if-eqz v3, :cond_81

    .line 1428
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1429
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1430
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    .line 1431
    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v3

    .line 1430
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1432
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->story_time:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    .line 1433
    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v3

    .line 1432
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v5, v6}, Lcom/sec/android/app/ve/util/Utils;->timeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :cond_81
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_8a

    .line 1436
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_8a
    .catchall {:try_start_2d .. :try_end_8a} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_8a} :catch_90

    .line 1457
    :cond_8a
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->releaseWakeLock()V

    .line 1458
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    goto :goto_12

    .line 1449
    :catch_90
    move-exception v0

    .line 1450
    .local v0, e:Ljava/lang/Exception;
    :try_start_91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_9b

    .line 1457
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->releaseWakeLock()V

    .line 1458
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    goto/16 :goto_12

    .line 1451
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_9b
    move-exception v3

    .line 1457
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->releaseWakeLock()V

    .line 1458
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    .line 1459
    throw v3

    .line 1471
    :pswitch_a2
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    .line 1472
    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    if-eqz v3, :cond_b6

    .line 1473
    const-string v3, "played a project,completed and user agian pressed play button,seek in same porject to 0"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    goto/16 :goto_12

    .line 1477
    :cond_b6
    const-string v3, "Player created"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1478
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    .line 1479
    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v3

    .line 1478
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1480
    .local v2, time_max:I
    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->setProjectName(I)V

    .line 1481
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->timeline:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1487
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 1488
    const/4 v4, 0x3

    .line 1487
    invoke-virtual {v3, p0, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 1490
    .local v1, lAudioFocus:I
    if-ne v1, v6, :cond_104

    .line 1491
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->cur_time:I

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    .line 1495
    :goto_ef
    const-string v3, "D4"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1496
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1497
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1498
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    goto/16 :goto_12

    .line 1493
    :cond_104
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    goto :goto_ef

    .line 1502
    .end local v1           #lAudioFocus:I
    .end local v2           #time_max:I
    :pswitch_10c
    const-string v3, "VT_PREVIEW_PLAYER_DAM_CONFIGURE"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1505
    :pswitch_113
    const-string v3, " VT_PREVIEW_PLAYER_DAM_DISPLAY"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1508
    :pswitch_11a
    const-string v3, "VT_PREVIEW_PLAYER_DAM_UNREGISTER"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1512
    :pswitch_121
    const-string v3, "File open fail"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1514
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1515
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1516
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    goto/16 :goto_12

    .line 1522
    :pswitch_133
    const-string v3, "Player Paused::::"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1523
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z

    .line 1524
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    goto/16 :goto_12

    .line 1529
    :pswitch_13e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Playback complete::::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1530
    const-string v4, "\nPlayback complete::::calling stop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1529
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1532
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1533
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controller:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1534
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->res_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1535
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->controlVisible:Z

    .line 1536
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    goto/16 :goto_12

    .line 1540
    :pswitch_175
    const-string v3, "take care of scrolling"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1541
    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->startSeek:Z

    if-nez v3, :cond_1e2

    .line 1542
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->dismissWaitProgress()V

    .line 1543
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->play_project:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1544
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pause_project:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1545
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->playback_complete:Z

    .line 1546
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z

    .line 1555
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1556
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1a2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_1bd

    .line 1559
    :cond_1a2
    const-string v3, "ZZZZ:::WakeLock null , getting new"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1560
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->pm:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "VideoEditor  -Project Player"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 1561
    const-string v3, "acquiring"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1562
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1565
    :cond_1bd
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1566
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Seeker time:::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1567
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_12

    .line 1569
    :cond_1e2
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    goto/16 :goto_12

    .line 1575
    :pswitch_1eb
    const-string v3, "Resume signal"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1576
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    goto/16 :goto_12

    .line 1582
    :pswitch_1f4
    const-string v3, "Player Stopped"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1584
    const-string v3, "making false only at Stop"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1585
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1592
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    goto/16 :goto_12

    .line 1596
    :pswitch_209
    const-string v3, "PP stopped on error::"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1599
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    .line 1601
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    goto/16 :goto_12

    .line 1607
    :pswitch_21b
    const-string v3, "Video Decode Fail::::"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1609
    iput-boolean v7, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    .line 1611
    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    if-nez v3, :cond_12

    .line 1612
    const-string v3, "terminatting coz of video fail"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1613
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 1615
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isTerminated:Z

    goto/16 :goto_12

    .line 1403
    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_175
        :pswitch_13e
        :pswitch_1f4
        :pswitch_2d
        :pswitch_133
        :pswitch_1eb
        :pswitch_209
        :pswitch_21b
        :pswitch_13
        :pswitch_121
        :pswitch_113
        :pswitch_10c
        :pswitch_11a
    .end packed-switch
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 190
    const-string v0, "PPA onStop"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 191
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isCreated:Z

    if-eqz v0, :cond_25

    .line 192
    const-string v0, "PPA onStop::player created still"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPaused:Z

    if-eqz v0, :cond_25

    .line 194
    :cond_19
    const-string v0, "PPA onStop::player created and playing"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 200
    :cond_25
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 724
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 728
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 7
    .parameter "arg0"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v2, 0x320

    const/16 v3, 0x1e0

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 739
    const-string v1, "Surface Created::Giving Surface to Engine"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 741
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->proj_position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 745
    .local v0, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 746
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 747
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 748
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setStackStateListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V

    .line 749
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 751
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 755
    const-string v0, "PPA surface destroyed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->surfaceDestroyed()V

    .line 757
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectPlayActivity;->isPlaying:Z

    if-eqz v0, :cond_17

    .line 758
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 762
    :cond_17
    return-void
.end method
