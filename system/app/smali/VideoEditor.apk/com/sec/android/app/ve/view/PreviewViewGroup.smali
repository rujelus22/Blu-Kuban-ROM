.class public Lcom/sec/android/app/ve/view/PreviewViewGroup;
.super Landroid/widget/FrameLayout;
.source "PreviewViewGroup.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;
.implements Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/PreviewViewGroup$CaptionStyle;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I = null

.field private static final ALBUM_SONGS_LAYOUT:I = 0xc9

.field private static final DRAW_DUR_BTN_HIDE_TIME:I = 0x7d0

.field public static final HEIGHT:I = 0x154

.field public static final MODE_EFFECT:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SPLIT:I = 0x2

.field public static final MODE_SUB_RETOUCH:I = 0x4

.field public static final MODE_SUB_TRANSITION:I = 0x3

.field public static final MODE_TRIM:I = 0x1

.field private static final MSG_DELAY_PREVIEW_SET_OPERATION:I = 0x68

.field private static final MSG_HIDE_DRAW_DUR_BTN:I = 0x6a

.field private static final MSG_RESET_IMAGEVIEW:I = 0x69

.field private static final MSG_TIMELINE_FOCUS_CHANGE:I = 0x65

.field private static final MSG_TRY_AGAIN_FOR_HANDLE:I = 0x64

.field private static final MSG_UPDATE_STORY_TIME:I = 0x66

.field private static final MSG_UPDATE_TIMELINE:I = 0x67

.field private static final MUSIC_ALBUM_LAYOUT:I = 0xcb

.field private static PLAYMODE:I = 0x0

.field private static final RELEASE_WAKE_LOCK:I = 0x190

.field private static final SET_TITLE_FONT:I = 0x191

.field public static final WIDTH:I = 0x258

.field private static _instance:Lcom/sec/android/app/ve/view/PreviewViewGroup;

.field private static firstPlay:Z

.field private static firstTimePlayInApp:Z

.field private static firstTrimPlay:Z

.field private static isButtonClicked:Z

.field private static isComplete:Z

.field private static isCreated:Z

.field private static isPaused:Z

.field private static isPlaying:Z

.field private static isResumed:Z

.field private static isScaling:Z

.field private static isStopped:Z

.field private static isTerminated:Z

.field private static noErrors:Z

.field private static playback_complete:Z

.field public static surfaceDestroyed:Z

.field private static trimModePlay:Z


# instance fields
.field public CaptionTheme:[I

.field private afterPause:Lcom/samsung/app/video/editor/external/Element;

.field private captionTextBtn:Landroid/widget/ImageButton;

.field private compl_time:Landroid/widget/TextView;

.field private currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private currentSec:I

.field private divider:Landroid/widget/TextView;

.field private elementEndTime:I

.field private elementName:Ljava/lang/String;

.field private elementStartTime:I

.field private end_:Landroid/graphics/RectF;

.field private end_matrix:Landroid/graphics/Matrix;

.field private end_rect:Z

.field private filepath:Ljava/lang/String;

.field private fullTime:J

.field i:I

.field private imageDuration:Landroid/widget/Button;

.field private inElementTime:J

.field private inTransitionTime:J

.field private init:Landroid/graphics/Matrix;

.field private init_x:F

.field private init_y:F

.field lHandler:Landroid/os/Handler;

.field private listener:Landroid/view/View$OnClickListener;

.field private mActivityCb:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

.field private mAudioManager:Landroid/media/AudioManager;

.field public mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

.field private mCaptionTextStyleDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

.field private mDrawDurationButton:Landroid/widget/Button;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutHandler:Landroid/os/Handler;

.field private mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

.field private mScaleFactor:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mThumbnailViewGroup:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

.field maxScale:F

.field private mid:Landroid/graphics/PointF;

.field minScale:F

.field private pauseTime:F

.field private play:Z

.field private play_button:Landroid/widget/ImageButton;

.field private play_mode:I

.field private pm:Landroid/os/PowerManager;

.field private prev_rect:Landroid/graphics/RectF;

.field private previousTrimElement:Lcom/samsung/app/video/editor/external/Element;

.field private rBottom:F

.field private rRight:F

.field private rebound:Landroid/graphics/Matrix;

.field private rect:Landroid/graphics/RectF;

.field private remTime:F

.field private run_time:F

.field private sElement:Lcom/samsung/app/video/editor/external/Element;

.field private savedMatrix:Landroid/graphics/Matrix;

.field private scroll_op:Z

.field private seekBar:Landroid/widget/SeekBar;

.field private set_rects:Z

.field private startUp:Landroid/graphics/Matrix;

.field private start_:Landroid/graphics/RectF;

.field private start_matrix:Landroid/graphics/Matrix;

.field private start_rect:Z

.field private story_time:Landroid/widget/TextView;

.field private sum:J

.field private temp:Lcom/samsung/app/video/editor/external/Element;

.field private total_trans:J

.field private trans_play_time:I

.field private values:[F

.field private wakelock:Landroid/os/PowerManager$WakeLock;

.field private zoomElement:Lcom/samsung/app/video/editor/external/Element;

.field private zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private zoom_M:Landroid/graphics/Matrix;

.field private zoom_cancel:Landroid/widget/Button;

.field private zoom_layer:Landroid/widget/ImageView;

.field private zoom_op:Z

.field private zoom_save:Landroid/widget/Button;

.field private zoomed:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState()[I
    .registers 3

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

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
    sput-object v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState:[I

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
    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->surfaceDestroyed:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sum:J

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    .line 141
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    .line 157
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;

    .line 159
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;

    .line 167
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    .line 168
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleFactor:F

    .line 170
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    .line 179
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    .line 180
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->minScale:F

    .line 181
    const/high16 v0, 0x40e0

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->maxScale:F

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->i:I

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_82

    .line 235
    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->CaptionTheme:[I

    .line 238
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionTextStyleDialog:Landroid/app/AlertDialog;

    .line 239
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 245
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 247
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    .line 255
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    .line 386
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->lHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mActivityCb:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 961
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    .line 1707
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    .line 458
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    .line 459
    sput-object p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->_instance:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 462
    return-void

    .line 230
    nop

    :array_82
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sum:J

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    .line 141
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    .line 157
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;

    .line 158
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;

    .line 159
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;

    .line 167
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    .line 168
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleFactor:F

    .line 170
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    .line 179
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    .line 180
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->minScale:F

    .line 181
    const/high16 v0, 0x40e0

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->maxScale:F

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 224
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->i:I

    .line 228
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_98

    .line 235
    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->CaptionTheme:[I

    .line 238
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionTextStyleDialog:Landroid/app/AlertDialog;

    .line 239
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 245
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 247
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    .line 255
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    .line 386
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->lHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$3;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mActivityCb:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 961
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$4;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    .line 1707
    new-instance v0, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    .line 441
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    .line 442
    sput-object p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->_instance:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 443
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 444
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->init()V

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pm:Landroid/os/PowerManager;

    .line 450
    return-void

    .line 230
    nop

    :array_98
    .array-data 0x4
        0x5ct 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()Z
    .registers 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    return v0
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J
    .registers 3
    .parameter

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2622
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateScroll(J)V

    return-void
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F
    .registers 2
    .parameter

    .prologue
    .line 243
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    return v0
.end method

.method static synthetic access$13(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/SurfaceView;
    .registers 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Z
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    return v0
.end method

.method static synthetic access$16(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$17(Z)V
    .registers 1
    .parameter

    .prologue
    .line 212
    sput-boolean p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isButtonClicked:Z

    return-void
.end method

.method static synthetic access$18(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    return-void
.end method

.method static synthetic access$19(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F
    .registers 2
    .parameter

    .prologue
    .line 196
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    return v0
.end method

.method static synthetic access$20(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->dimmedBGMDurationBtn()V

    return-void
.end method

.method static synthetic access$21()Z
    .registers 1

    .prologue
    .line 206
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    return v0
.end method

.method static synthetic access$22(Z)V
    .registers 1
    .parameter

    .prologue
    .line 206
    sput-boolean p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    return-void
.end method

.method static synthetic access$23(Z)V
    .registers 1
    .parameter

    .prologue
    .line 208
    sput-boolean p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isStopped:Z

    return-void
.end method

.method static synthetic access$24()Z
    .registers 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    return v0
.end method

.method static synthetic access$25(Z)V
    .registers 1
    .parameter

    .prologue
    .line 204
    sput-boolean p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    return-void
.end method

.method static synthetic access$26(Z)V
    .registers 1
    .parameter

    .prologue
    .line 215
    sput-boolean p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->firstPlay:Z

    return-void
.end method

.method static synthetic access$27()Z
    .registers 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isButtonClicked:Z

    return v0
.end method

.method static synthetic access$28(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previousTrimElement:Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method static synthetic access$29(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/PreviewViewGroup;)J
    .registers 3
    .parameter

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    return-wide v0
.end method

.method static synthetic access$30(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 197
    iput p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    return-void
.end method

.method static synthetic access$31(Lcom/sec/android/app/ve/view/PreviewViewGroup;)F
    .registers 2
    .parameter

    .prologue
    .line 197
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    return v0
.end method

.method static synthetic access$32(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Z
    .registers 2
    .parameter

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    return v0
.end method

.method static synthetic access$33(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$34(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$35(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;
    .registers 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$36(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;
    .registers 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$37(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;
    .registers 2
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$38(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method static synthetic access$39(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$40(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->init:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$41(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rRight:F

    return-void
.end method

.method static synthetic access$42(Lcom/sec/android/app/ve/view/PreviewViewGroup;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 165
    iput p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rBottom:F

    return-void
.end method

.method static synthetic access$43(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    return-object v0
.end method

.method static synthetic access$44(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    return-void
.end method

.method static synthetic access$45(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z

    return-void
.end method

.method static synthetic access$46(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$47(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$48(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$49(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/RectF;
    .registers 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1926
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50(Lcom/sec/android/app/ve/view/PreviewViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->set_rects:Z

    return-void
.end method

.method static synthetic access$51(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$52(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$53(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/widget/FrameLayout;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method static synthetic access$54(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V
    .registers 1
    .parameter

    .prologue
    .line 1478
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->setTitleHelveticaNeue()V

    return-void
.end method

.method static synthetic access$55(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$56(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$57(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/graphics/Matrix;
    .registers 2
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$58(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->imageDuration:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$59(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/sec/android/app/ve/view/PreviewViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$60(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/widget/ImageView;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$61(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    return-void
.end method

.method static synthetic access$62(Lcom/sec/android/app/ve/view/PreviewViewGroup;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;

    return-void
.end method

.method static synthetic access$63(Lcom/sec/android/app/ve/view/PreviewViewGroup;Landroid/graphics/RectF;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$64(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/view/ScaleGestureDetector;
    .registers 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/PreviewViewGroup;J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->total_trans:J

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/PreviewViewGroup;)Lcom/samsung/app/video/editor/external/Element;
    .registers 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method private dimmedBGMDurationBtn()V
    .registers 3

    .prologue
    const v1, 0x7f0b0110

    .line 1312
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1313
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1316
    :cond_1c
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;
    .registers 1

    .prologue
    .line 1756
    sget-object v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->_instance:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    return-object v0
.end method

.method private handleScrollEnd()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleScrollEnd:L:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_66

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_66

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x4416

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_66

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43aa

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d8

    .line 942
    :cond_66
    const-string v0, "handleScrollEnd::right"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 943
    const-string v0, "going to right"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rebound:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScrollEnd:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 953
    :cond_d8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->scroll_op:Z

    .line 954
    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 506
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 507
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 508
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 509
    return-void
.end method

.method private playerInit()V
    .registers 3

    .prologue
    .line 1802
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    .line 1803
    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 1802
    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1804
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setStackStateListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V

    .line 1805
    return-void
.end method

.method private releaseWakeLock()V
    .registers 5

    .prologue
    const/16 v3, 0x190

    .line 2277
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2279
    return-void
.end method

.method private setEditTitleHelveticaNeue()V
    .registers 6

    .prologue
    .line 1524
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v4, 0x7f0b00db

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1527
    .local v0, lL:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 1529
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setEditTitleHelveticaNeue layout -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1530
    const v3, 0x7f0b00dc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1533
    .local v2, lSelTheme:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_36

    .line 1535
    new-instance v3, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$12;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1549
    :cond_36
    const v3, 0x7f0b00de

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1551
    .local v1, lSelAddMedia:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_49

    .line 1553
    new-instance v3, Lcom/sec/android/app/ve/view/PreviewViewGroup$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$13;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1568
    .end local v1           #lSelAddMedia:Landroid/widget/LinearLayout;
    .end local v2           #lSelTheme:Landroid/widget/LinearLayout;
    :cond_49
    return-void
.end method

.method private setTitleHelveticaNeue()V
    .registers 6

    .prologue
    .line 1481
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1483
    .local v2, lSelTheme:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_17

    .line 1485
    new-instance v3, Lcom/sec/android/app/ve/view/PreviewViewGroup$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$10;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1495
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setTitleHelveticaNeue Hle Text-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00d7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1499
    .local v0, lSelAddMedia:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b00d9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1501
    .local v1, lSelEdit:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4d

    .line 1503
    new-instance v3, Lcom/sec/android/app/ve/view/PreviewViewGroup$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$11;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    :cond_4d
    return-void
.end method

.method private timeFormat(J)Ljava/lang/String;
    .registers 15
    .parameter "timeMs"

    .prologue
    .line 1929
    const-wide/16 v8, 0x3c

    rem-long v6, p1, v8

    .line 1930
    .local v6, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, p1, v8

    const-wide/16 v10, 0x3c

    rem-long v4, v8, v10

    .line 1931
    .local v4, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, p1, v8

    .line 1932
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_18

    .line 1933
    const-wide/16 v6, 0x0

    .line 1934
    :cond_18
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gez v8, :cond_20

    .line 1935
    const-wide/16 v4, 0x0

    .line 1936
    :cond_20
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_28

    .line 1937
    const-wide/16 v0, 0x0

    .line 1938
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1939
    .local v2, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v2, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1940
    .local v3, mFormatter:Ljava/util/Formatter;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1941
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private unDimmedBGMDurationBtn()V
    .registers 3

    .prologue
    const v1, 0x7f0b0110

    .line 1319
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1320
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1322
    :cond_1c
    return-void
.end method

.method private updateFullStoryTime()I
    .registers 6

    .prologue
    .line 1894
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1895
    const/4 v4, 0x0

    .line 1908
    :goto_7
    return v4

    .line 1897
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 1898
    .local v2, mList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const/4 v3, 0x0

    .line 1899
    .local v3, story_time:F
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1900
    .local v1, iterator:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    .line 1908
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_7

    .line 1901
    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 1904
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_19
.end method

.method private final updateRunningTime(Lcom/samsung/app/video/editor/external/Element;F)V
    .registers 13
    .parameter "element"
    .parameter "elementSec"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 1836
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1888
    :cond_8
    :goto_8
    return-void

    .line 1838
    :cond_9
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v3

    .line 1839
    .local v3, mList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    .line 1840
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1841
    .local v1, iterator:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1871
    :goto_22
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    .line 1876
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1877
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_45

    .line 1878
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v9, :cond_11b

    .line 1879
    :cond_45
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    .line 1885
    :cond_58
    :goto_58
    sget-boolean v4, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-nez v4, :cond_8

    .line 1886
    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 1842
    :cond_6c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 1843
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1844
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    goto :goto_22

    .line 1847
    :cond_7e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v8, :cond_92

    .line 1848
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    goto :goto_1c

    .line 1849
    :cond_92
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v9, :cond_f7

    .line 1850
    const-string v4, "first adding the previous element time in Trans mode"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1851
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    .line 1852
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 1854
    const/4 v2, 0x0

    .local v2, j:I
    :goto_c0
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1c

    .line 1855
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getType()I

    move-result v4

    .line 1856
    const/4 v5, 0x6

    .line 1855
    if-ne v4, v5, :cond_f4

    .line 1857
    const-string v4, "adding the trans time also "

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1858
    iget v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    .line 1854
    :cond_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 1864
    .end local v2           #j:I
    :cond_f7
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    .line 1865
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1c

    .line 1866
    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v5

    long-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    goto/16 :goto_1c

    .line 1880
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Element;
    :cond_11b
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-ne v4, v8, :cond_58

    .line 1881
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateFullStoryTime()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    goto/16 :goto_58
.end method

.method private updateScroll(J)V
    .registers 18
    .parameter "position"

    .prologue
    .line 2625
    const/4 v11, 0x0

    .line 2626
    .local v11, temp:F
    const/4 v12, 0x0

    .line 2627
    .local v12, temp_play_time:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_mode:I

    .line 2628
    move-wide/from16 v6, p1

    .line 2630
    .local v6, curPos:J
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_mode:I

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b2

    .line 2631
    :cond_17
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2633
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v10

    .line 2634
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2635
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 2789
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_33
    :goto_33
    return-void

    .line 2636
    .restart local v9       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_34
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    .line 2637
    .local v8, e:Lcom/samsung/app/video/editor/external/Element;
    long-to-float v0, v6

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v1, v11

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7b

    .line 2639
    iput-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    .line 2640
    long-to-float v0, v6

    sub-float/2addr v0, v11

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In Elemnt Time ::::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->elementName:Ljava/lang/String;

    .line 2643
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    iget-wide v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V

    goto :goto_33

    .line 2647
    :cond_7b
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v0

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v11, v0

    .line 2650
    long-to-float v0, v6

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v1, v11

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a7

    .line 2653
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingClipartparams(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 2654
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->setDrawingvisible(Z)V

    goto :goto_33

    .line 2660
    :cond_a7
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-float v0, v0

    add-float/2addr v11, v0

    goto/16 :goto_2d

    .line 2715
    .end local v8           #e:Lcom/samsung/app/video/editor/external/Element;
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_b2
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21f

    .line 2716
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2718
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v10

    .line 2719
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2720
    .restart local v9       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_cd
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2721
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    .line 2722
    .restart local v8       #e:Lcom/samsung/app/video/editor/external/Element;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E starttime::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "E Endtime:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2725
    long-to-float v0, v6

    sub-float/2addr v0, v12

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v11

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v1, v11

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_17c

    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v0, :cond_17c

    .line 2726
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coming here??"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2727
    iput-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    .line 2729
    long-to-float v0, v6

    sub-float/2addr v0, v12

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In Elemnt Time ::::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->elementName:Ljava/lang/String;

    .line 2732
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    iget-wide v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V

    goto/16 :goto_33

    .line 2735
    :cond_17c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding to temp:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Split time of E::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2737
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v0

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v12, v0

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "temp_play_time:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v11, v0

    .line 2741
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding to temp after:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2743
    long-to-float v0, v6

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v1, v12

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1f5

    .line 2744
    const-string v0, "Scroll over Trans but still::Trim mode"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_33

    .line 2749
    :cond_1f5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim mode:::trans duration::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2750
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-float v0, v0

    add-float/2addr v11, v0

    .line 2751
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-float v0, v0

    add-float/2addr v12, v0

    goto/16 :goto_cd

    .line 2758
    .end local v8           #e:Lcom/samsung/app/video/editor/external/Element;
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v10           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    :cond_21f
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_33

    .line 2760
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 2761
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v10

    .line 2762
    .restart local v10       #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2763
    .restart local v9       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_240
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2764
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    .line 2765
    .restart local v8       #e:Lcom/samsung/app/video/editor/external/Element;
    long-to-float v0, v6

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    add-float/2addr v1, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2f6

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "coming here??"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2767
    iput-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    .line 2768
    long-to-float v0, v6

    sub-float/2addr v0, v11

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    .line 2769
    iget-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2b1

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In Elemnt Time ::::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2771
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    iget-wide v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V

    goto/16 :goto_33

    .line 2773
    :cond_2b1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling updatePositionForTransition::TransDuration:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2774
    iget-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inElementTime:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inTransitionTime:J

    .line 2775
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    iget-wide v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->inTransitionTime:J

    .line 2776
    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v4

    const-wide/16 v13, 0x3e8

    mul-long/2addr v4, v13

    .line 2775
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePositionForTransition(Lcom/samsung/app/video/editor/external/Element;JJ)V

    goto/16 :goto_33

    .line 2781
    :cond_2f6
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v0

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v1

    long-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v11, v0

    goto/16 :goto_240
.end method


# virtual methods
.method public endKenburns()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    iget-boolean v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-eqz v2, :cond_1b

    .line 1298
    const-string v2, "kenburns on"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1299
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    .line 1300
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z

    .line 1301
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->toggleSurfaceVisibility(Z)V

    .line 1302
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 1303
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    .line 1307
    :goto_1a
    return v0

    .line 1306
    :cond_1b
    const-string v0, "kenburns not on"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1307
    goto :goto_1a
.end method

.method public getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J
    .registers 7
    .parameter "e"

    .prologue
    .line 2795
    const-wide/16 v1, 0x0

    .line 2796
    .local v1, trans_time:J
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 2797
    const/4 v0, 0x0

    .local v0, j:I
    :goto_13
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1e

    .line 2804
    .end local v0           #j:I
    :cond_1d
    return-wide v1

    .line 2798
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

    .line 2800
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getEditList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v3

    int-to-long v1, v3

    .line 2797
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public gotoLeft()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 591
    const-string v1, "kenburn gotoleft"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 592
    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    if-eqz v1, :cond_b7

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 595
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZLM::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ZLE:::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 600
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;

    .line 601
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/ve/view/PreviewViewGroup$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$6;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 648
    const-wide/16 v3, 0xc8

    .line 604
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 651
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v0

    .line 652
    .local v0, pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->smoothScrollTo(II)V

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 654
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z

    .line 658
    .end local v0           #pos:I
    :cond_b7
    return-void
.end method

.method public gotoRight()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 661
    const-string v1, "kenburn gotoright"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 664
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/ve/view/PreviewViewGroup$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$7;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 756
    const-wide/16 v3, 0xc8

    .line 664
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    .line 758
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->end_rect:Z

    .line 759
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v0

    .line 760
    .local v0, pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 761
    return-void
.end method

.method public hideCaptionTextStyleDialog()V
    .registers 2

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionTextStyleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 3020
    return-void
.end method

.method public inflateMediaPickerView(I)V
    .registers 5
    .parameter "aType"

    .prologue
    const/4 v2, 0x1

    .line 1387
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v0, :cond_8

    .line 1388
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1390
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_18

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 1394
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside launchVideoImagePicker and type is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_d6

    .line 1398
    const-string v0, "PVG :: Removing Video Picker View"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1401
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeView(Landroid/view/View;)V

    .line 1409
    :goto_46
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_62

    .line 1411
    const-string v0, "PVG :: Removing Image Picker View"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeView(Landroid/view/View;)V

    .line 1416
    :cond_62
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7e

    .line 1418
    const-string v0, "PVG :: Removing Music Picker View"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeView(Landroid/view/View;)V

    .line 1423
    :cond_7e
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9a

    .line 1425
    const-string v0, "PVG :: Removing Music Songs Picker View"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1426
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeView(Landroid/view/View;)V

    .line 1428
    :cond_9a
    if-nez p1, :cond_102

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    .line 1431
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->setTitleHelveticaNeue()V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image Picker Framelayout is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1434
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d0

    .line 1436
    const-string v0, "making no image visble afer inflation"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageVisible()V

    .line 1474
    :cond_d0
    :goto_d0
    const-string v0, "This is inside launchVideoImagePicker after launching"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1475
    return-void

    .line 1405
    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing not media picker view from PVG -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing not media picker view from PVG -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_46

    .line 1444
    :cond_102
    if-ne p1, v2, :cond_139

    .line 1446
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030045

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    .line 1447
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->setTitleHelveticaNeue()V

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video Picker Framelayout is -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1450
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mVideoFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d0

    .line 1452
    const-string v0, "making no video visble afer inflation"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoVideoVisible()V

    goto :goto_d0

    .line 1458
    :cond_139
    const/4 v0, 0x2

    if-ne p1, v0, :cond_144

    .line 1461
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_d0

    .line 1464
    :cond_144
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d0

    .line 1466
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    .line 1467
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->setTitleHelveticaNeue()V

    .line 1468
    const-string v0, "before launching Lbum songs layout"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_d0
.end method

.method public init()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1327
    const-string v0, "PreviewViewGroup Init"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v1, 0x258

    const/16 v2, 0x154

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    .line 1345
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1346
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b009a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1355
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b009b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1358
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/sec/android/app/ve/view/PreviewViewGroup$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$9;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1378
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCaptionHolder:Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    .line 1379
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    .line 1380
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    .line 1382
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1383
    return-void
.end method

.method public initThemeView()V
    .registers 4

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeAllViews()V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030036

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 472
    return-void
.end method

.method public isDrawingDurButtonVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3093
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    if-eqz v1, :cond_e

    .line 3095
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 3097
    :cond_e
    return v0
.end method

.method public isKenburnsOn()Z
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    return v0
.end method

.method public declared-synchronized isPlayerCreated()Z
    .registers 2

    .prologue
    .line 2933
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayerPaused()Z
    .registers 2

    .prologue
    .line 2929
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPaused:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPreviewPlaying()Z
    .registers 2

    .prologue
    .line 2925
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSurfacePresent()Z
    .registers 2

    .prologue
    .line 2937
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->surfaceDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    .line 2939
    const/4 v0, 0x0

    .line 2943
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    .line 2937
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public makeNoImageInVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b004b

    const v2, 0x7f0b004a

    const/4 v1, 0x4

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1676
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1682
    :cond_2d
    return-void
.end method

.method public makeNoImageVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b004b

    const v2, 0x7f0b004a

    const/4 v1, 0x0

    .line 1596
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 1598
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1600
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    :cond_2d
    return-void
.end method

.method public makeNoMusicInVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b0063

    const v2, 0x7f0b0062

    const/4 v1, 0x4

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_32

    .line 1688
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1690
    const-string v0, "makeNoMusicInVisible"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1705
    :cond_32
    return-void
.end method

.method public makeNoMusicVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b0063

    const v2, 0x7f0b0062

    const/4 v1, 0x0

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1623
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1629
    :goto_1c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1638
    :cond_2d
    :goto_2d
    return-void

    .line 1627
    :cond_2e
    const-string v0, "No Music image is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 1636
    :cond_34
    const-string v0, "No Music Text is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public makeNoVideoInVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b0132

    const v2, 0x7f0b0131

    const/4 v1, 0x4

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1646
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    :cond_2d
    return-void
.end method

.method public makeNoVideoVisible()V
    .registers 5

    .prologue
    const v3, 0x7f0b0132

    const v2, 0x7f0b0131

    const/4 v1, 0x0

    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2d

    .line 1575
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1577
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 1585
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mCurrMediaPickerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1592
    :cond_2d
    return-void
.end method

.method public modeChanged(II)V
    .registers 6
    .parameter "mode"
    .parameter "subMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2880
    sput p1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->PLAYMODE:I

    .line 2881
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v0, :cond_18

    .line 2883
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 2887
    sput-boolean v1, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2890
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2891
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2893
    :cond_18
    if-ne p1, v2, :cond_1e

    .line 2895
    sput-boolean v2, Lcom/sec/android/app/ve/view/PreviewViewGroup;->firstTrimPlay:Z

    .line 2896
    sput-boolean v2, Lcom/sec/android/app/ve/view/PreviewViewGroup;->trimModePlay:Z

    .line 2899
    :cond_1e
    return-void
.end method

.method public onAdded(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "addedView"

    .prologue
    .line 2180
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateFullStoryTime()I

    .line 2182
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 1822
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1824
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1825
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mActivityCb:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 1826
    :cond_12
    return-void
.end method

.method public onAudioFocusChange(I)V
    .registers 4
    .parameter "focusChange"

    .prologue
    .line 2948
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside onAudioFocusChange of PreviewView Group -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2949
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 2951
    const-string v0, "This is inside onAudioFocusChange and VE Preview lost focus pausing the preview"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 2954
    :cond_1d
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 1809
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1810
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V

    .line 1811
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1813
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 1814
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mActivityCb:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V

    .line 1816
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2b

    .line 1817
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1818
    :cond_2b
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 2960
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 478
    const-string v0, "Draw called"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 1765
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1767
    const-string v0, "This is inside onFinishInflate of PVG"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1768
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->setEditTitleHelveticaNeue()V

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is value of the operationgroup:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1772
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-nez v0, :cond_6b

    .line 1773
    const-string v0, "Lauching the Addmedia"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1774
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1775
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToAddMedia()V

    .line 1776
    :cond_41
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1777
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->setVideoPickerSelected()V

    .line 1778
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1779
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchVideoPickerView(I)V

    .line 1780
    :cond_5c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1781
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 1793
    :cond_6a
    :goto_6a
    return-void

    .line 1783
    :cond_6b
    const-string v0, "Lauching the preview"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 1785
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->launchTrimSection()V

    .line 1789
    :goto_7d
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1790
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    goto :goto_6a

    .line 1787
    :cond_8c
    const-string v0, "OVG is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_7d
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 2968
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    .registers 3
    .parameter "focusElement"
    .parameter "lastFocusElement"

    .prologue
    .line 2187
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->temp:Lcom/samsung/app/video/editor/external/Element;

    .line 2188
    return-void
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2838
    const/16 v2, 0x55

    if-ne p1, v2, :cond_1c

    .line 2841
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2843
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2844
    const-string v2, "Pausing Preview Play after getting KEYCODE_MEDIA_PLAY_PAUSE event"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_4a

    .line 2863
    :cond_1c
    :goto_1c
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5e

    .line 2865
    const-string v2, "Click on SelectedAddMedia"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->endKenburns()Z

    .line 2867
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 2868
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    .line 2869
    :cond_34
    const/4 v2, 0x1

    .line 2871
    :goto_35
    return v2

    .line 2850
    :cond_36
    const v2, 0x7f0b0097

    :try_start_39
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2851
    .local v1, lView:Landroid/view/View;
    if-eqz v1, :cond_1c

    .line 2853
    const-string v2, "Resuming Preview Play after getting KEYCODE_MEDIA_PLAY_PAUSE event"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2854
    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_1c

    .line 2857
    .end local v1           #lView:Landroid/view/View;
    :catch_4a
    move-exception v0

    .line 2858
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got Exception while play/pause"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_1c

    .line 2871
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5e
    const/4 v2, 0x0

    goto :goto_35
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 2976
    return-void
.end method

.method public onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 3
    .parameter "element"
    .parameter "added"

    .prologue
    .line 2200
    return-void
.end method

.method public onRemoved(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "removedView"

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateFullStoryTime()I

    .line 2196
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 7
    .parameter "detector"

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-eqz v0, :cond_8c

    .line 1948
    const-string v0, "kenburns Pinching"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1953
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matrix rect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1957
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1967
    :goto_8a
    const/4 v0, 0x1

    return v0

    .line 1964
    :cond_8c
    const-string v0, "story borar pinching"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_8a
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 1973
    const-string v1, "Pinch Start"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1974
    sput-boolean v2, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isScaling:Z

    .line 1975
    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-nez v1, :cond_43

    .line 1976
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1977
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v1, :cond_34

    .line 1978
    const-string v1, "VCVG"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1979
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 1984
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v1, :cond_41

    .line 1985
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move v1, v2

    .line 1995
    .end local v0           #view:Landroid/view/View;
    :goto_33
    return v1

    .line 1980
    .restart local v0       #view:Landroid/view/View;
    :cond_34
    instance-of v1, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v1, :cond_29

    .line 1981
    const-string v1, "TransView"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1982
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    goto :goto_29

    .line 1988
    :cond_41
    const/4 v1, 0x0

    goto :goto_33

    .line 1991
    .end local v0           #view:Landroid/view/View;
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onScaleBegin::zoomLayermatrix"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1994
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    move v1, v2

    .line 1995
    goto :goto_33
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 8
    .parameter "detector"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v5, 0x0

    .line 2006
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-eqz v0, :cond_ec

    .line 2007
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2008
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->minScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_86

    .line 2009
    const-string v0, "-- onScaleEnd --image zoom small"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2010
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2014
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 2028
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 2036
    sput-boolean v5, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isScaling:Z

    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scaling:Visisble Rect co-ord"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2040
    :goto_85
    return-void

    .line 2015
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_aa

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_aa

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x4416

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_aa

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x43aa

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b7

    .line 2016
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rebound:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2017
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_36

    .line 2019
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    aget v0, v0, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->maxScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_36

    .line 2021
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->maxScale:F

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    aget v2, v2, v5

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->maxScale:F

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->values:[F

    aget v3, v3, v5

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2024
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_36

    .line 2039
    :cond_ec
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->currentFocused:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    goto :goto_85
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2982
    iget-boolean v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-eqz v2, :cond_a

    .line 2983
    sget-boolean v2, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isScaling:Z

    if-eqz v2, :cond_b

    .line 3013
    :cond_a
    :goto_a
    return v0

    .line 2986
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onScroll check::ZL"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onScroll check::Z_M"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2988
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->scroll_op:Z

    if-nez v0, :cond_5d

    .line 2990
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onScroll check::Z_M again"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_M:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2991
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->scroll_op:Z

    .line 3001
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3003
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onTranslate:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3005
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->prev_rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 3006
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gesture detector onScroll"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3008
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 3009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Scroll Rect co-ord"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3010
    const-string v2, " R::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleFactor:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    move v0, v1

    .line 3011
    goto/16 :goto_a
.end method

.method public onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    .registers 16
    .parameter "element"
    .parameter "sec"
    .parameter "transitionTime"

    .prologue
    .line 2210
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    .line 2211
    iput p2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    .line 2213
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_69

    .line 2215
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_65

    .line 2217
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->trans_play_time:I

    .line 2218
    iget v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->trans_play_time:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateRunningTime(Lcom/samsung/app/video/editor/external/Element;F)V

    .line 2230
    :goto_2e
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateDrawingDurationButton(ZI)V

    .line 2233
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_64

    .line 2234
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v11

    .line 2235
    .local v11, view:Landroid/view/View;
    instance-of v0, v11, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v0, :cond_97

    .line 2236
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    .line 2237
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v1

    add-float/2addr v1, p2

    const/high16 v3, 0x447a

    mul-float/2addr v1, v3

    float-to-long v3, v1

    const/16 v5, 0x258

    const/16 v6, 0x154

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 2264
    .end local v11           #view:Landroid/view/View;
    :cond_64
    :goto_64
    return-void

    .line 2222
    :cond_65
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateRunningTime(Lcom/samsung/app/video/editor/external/Element;F)V

    goto :goto_2e

    .line 2224
    :cond_69
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_78

    .line 2225
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateRunningTime(Lcom/samsung/app/video/editor/external/Element;F)V

    goto :goto_2e

    .line 2228
    :cond_78
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateRunningTime(Lcom/samsung/app/video/editor/external/Element;F)V

    goto :goto_2e

    .line 2239
    .restart local v11       #view:Landroid/view/View;
    :cond_7c
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-nez v0, :cond_64

    .line 2240
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    add-float/2addr v1, p2

    const/high16 v3, 0x447a

    mul-float/2addr v1, v3

    float-to-long v3, v1

    const/16 v5, 0x258

    const/16 v6, 0x154

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    goto :goto_64

    .line 2243
    :cond_97
    instance-of v0, v11, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v0, :cond_64

    .line 2244
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentViewPositionInList()I

    move-result v8

    .line 2245
    .local v8, pos:I
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 2247
    .local v10, thumbView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_64

    .line 2248
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 2249
    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 2250
    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v0

    .line 2251
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    .line 2250
    if-eqz v0, :cond_64

    .line 2252
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v9

    .line 2254
    .local v9, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getMyPosition(Lcom/samsung/app/video/editor/external/Element;)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 2255
    .local v7, myPos:I
    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-ge v7, v0, :cond_64

    .line 2256
    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/Element;

    .line 2257
    .local v2, localElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    const/high16 v3, 0x447a

    mul-float/2addr v3, p3

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    goto/16 :goto_64
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 3026
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 3032
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V
    .registers 16
    .parameter "state"

    .prologue
    const/4 v13, 0x3

    const/4 v9, -0x1

    const/high16 v12, 0x447a

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2289
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->$SWITCH_TABLE$com$samsung$app$video$editor$external$NativeInterface$playerState()[I

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_3d8

    .line 2616
    :cond_13
    :goto_13
    return-void

    .line 2294
    :pswitch_14
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2295
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->noErrors:Z

    .line 2297
    sget-boolean v7, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    if-nez v7, :cond_2f

    .line 2298
    const-string v7, "terminating coz of Audio fail"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2299
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2300
    const-string v7, "Trminated ::: Aduio Fail"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2301
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    .line 2304
    :cond_2f
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    .line 2305
    const v7, 0x7f08007c

    invoke-static {v7, v9, v11, v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_13

    .line 2312
    :pswitch_38
    :try_start_38
    const-string v7, "Player close Event"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2313
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    .line 2314
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 2315
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->setCaptionPreviewTextButtonVisible(Z)V

    .line 2316
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_54

    .line 2317
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2325
    :cond_54
    sget-boolean v7, Lcom/sec/android/app/ve/view/PreviewViewGroup;->playback_complete:Z

    if-eqz v7, :cond_9c

    .line 2326
    const-string v7, "closed + playback_complete"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2328
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    iget-wide v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2329
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2330
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    iget-wide v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2331
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v7, :cond_9c

    .line 2332
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    iget-object v9, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v10}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    float-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V
    :try_end_9c
    .catchall {:try_start_38 .. :try_end_9c} :catchall_cc
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_9c} :catch_b2

    .line 2338
    :cond_9c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V

    .line 2340
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2342
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->releaseWakeLock()V

    .line 2343
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    goto/16 :goto_13

    .line 2334
    :catch_b2
    move-exception v0

    .line 2335
    .local v0, e:Ljava/lang/Exception;
    :try_start_b3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_cc

    .line 2338
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V

    .line 2340
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2342
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->releaseWakeLock()V

    .line 2343
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    goto/16 :goto_13

    .line 2336
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_cc
    move-exception v7

    .line 2338
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 2339
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V

    .line 2340
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2342
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->releaseWakeLock()V

    .line 2343
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    .line 2344
    throw v7

    .line 2349
    :pswitch_e2
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    .line 2350
    const-string v7, "Player created"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2351
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 2353
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    .line 2354
    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    .line 2355
    .local v4, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/16 v7, 0x258

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispWidth(I)V

    .line 2356
    const/16 v7, 0x154

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispHeight(I)V

    .line 2357
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v7

    mul-float/2addr v7, v12

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 2358
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2359
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    .line 2360
    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2359
    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-eqz v7, :cond_140

    .line 2363
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_140

    .line 2364
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_199

    .line 2366
    :cond_140
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "This is remtime:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2368
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, p0, v13, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    .line 2371
    .local v3, lAudioFocus:I
    if-ne v3, v10, :cond_186

    .line 2373
    const-string v7, "Got the Audio Focus while previewing"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2374
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PVG:::Seeking time"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2376
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    mul-float/2addr v8, v12

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    .line 2432
    .end local v3           #lAudioFocus:I
    :cond_182
    :goto_182
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    goto/16 :goto_13

    .line 2380
    .restart local v3       #lAudioFocus:I
    :cond_186
    const-string v7, "Didn\'t get the Audio Focus while previewing"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2381
    const v7, 0x7f080062

    invoke-static {v7, v9, v11, v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 2382
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    goto :goto_182

    .line 2385
    .end local v3           #lAudioFocus:I
    :cond_199
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-ne v7, v10, :cond_182

    .line 2388
    const/4 v6, 0x0

    .line 2391
    .local v6, temp_:F
    const-string v7, "Seeking to the start of the element"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2392
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v5

    .line 2393
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2394
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    :goto_1b9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_182

    .line 2395
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 2396
    .local v1, el:Lcom/samsung/app/video/editor/external/Element;
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    .line 2397
    .local v0, e:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_277

    .line 2398
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Matching::::temp_::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nTrimemode::Estarttime::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2399
    const-string v8, "\nTimrmode:eEndTime::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2398
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2402
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, p0, v13, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    .line 2406
    .restart local v3       #lAudioFocus:I
    if-ne v3, v10, :cond_269

    .line 2408
    iget v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_257

    .line 2409
    iget v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_257

    .line 2410
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "inside trim bars:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2411
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    mul-float/2addr v8, v12

    add-float/2addr v8, v6

    .line 2412
    iget v9, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, v12

    add-float/2addr v8, v9

    .line 2411
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    goto/16 :goto_182

    .line 2414
    :cond_257
    const-string v7, "\'outside trim bars"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2415
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->seek(I)V

    goto/16 :goto_182

    .line 2420
    :cond_269
    const-string v7, "Didn\'t get the Audio Focus while Trim previewing"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2421
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    goto/16 :goto_182

    .line 2426
    .end local v3           #lAudioFocus:I
    :cond_277
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getTransitionDurationofElement(Lcom/samsung/app/video/editor/external/Element;)J

    move-result-wide v8

    long-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v12

    add-float/2addr v6, v7

    goto/16 :goto_1b9

    .line 2435
    .end local v0           #e:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #el:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v4           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v6           #temp_:F
    :pswitch_28a
    const-string v7, "VT_PREVIEW_PLAYER_DAM_CONFIGURE"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2438
    :pswitch_291
    const-string v7, " VT_PREVIEW_PLAYER_DAM_DISPLAY"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2441
    :pswitch_298
    const-string v7, "VT_PREVIEW_PLAYER_DAM_UNREGISTER"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 2445
    :pswitch_29f
    const-string v7, "File open fail"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2446
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->noErrors:Z

    .line 2447
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2448
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2449
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    .line 2455
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    goto/16 :goto_13

    .line 2468
    :pswitch_2b5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Player Paused::::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->run_time:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "RemTime::::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->remTime:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2469
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPaused:Z

    .line 2470
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2471
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->trimModePlay:Z

    .line 2472
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isResumed:Z

    goto/16 :goto_13

    .line 2479
    :pswitch_2df
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Playback complete::::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2480
    const-string v8, "\nPlayback complete::::calling stop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2479
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2481
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sum:J

    .line 2482
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2483
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->playback_complete:Z

    .line 2485
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    .line 2486
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isResumed:Z

    goto/16 :goto_13

    .line 2493
    :pswitch_312
    const-string v7, "take care of scrolling"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2495
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPaused:Z

    .line 2496
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->playback_complete:Z

    .line 2501
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mLayoutHandler:Landroid/os/Handler;

    const/16 v8, 0x190

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2502
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_32e

    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_349

    .line 2505
    :cond_32e
    const-string v7, "ZZZZ:::WakeLock null , getting new"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2506
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pm:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "VideoEditor - Player"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 2507
    const-string v7, "acquiring"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2508
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2559
    :cond_349
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2560
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Seeker time:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->getCurrentPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2561
    iget-object v7, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x67

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 2565
    :pswitch_36e
    const-string v7, "Resume signal"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2566
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2567
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPaused:Z

    goto/16 :goto_13

    .line 2572
    :pswitch_379
    const-string v7, "Player Stopped"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2574
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isStopped:Z

    .line 2575
    const-string v7, "making false only at Stop"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2576
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2578
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->trimModePlay:Z

    .line 2580
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 2581
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->unDimmedBGMDurationBtn()V

    .line 2583
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->stop()V

    goto/16 :goto_13

    .line 2590
    :pswitch_39c
    const-string v7, "PP stopped on error::"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2591
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->noErrors:Z

    .line 2592
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2593
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    .line 2595
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2596
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    goto/16 :goto_13

    .line 2601
    :pswitch_3b2
    const-string v7, "Video Decode Fail::::"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2602
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->noErrors:Z

    .line 2603
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2604
    sput-boolean v11, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isResumed:Z

    .line 2605
    sget-boolean v7, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    if-nez v7, :cond_3cf

    .line 2606
    const-string v7, "terminatting coz of video fail"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2607
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2609
    sput-boolean v10, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    .line 2611
    :cond_3cf
    const v7, 0x7f08007c

    invoke-static {v7, v9, v11, v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_13

    .line 2289
    nop

    :pswitch_data_3d8
    .packed-switch 0x1
        :pswitch_e2
        :pswitch_312
        :pswitch_2df
        :pswitch_379
        :pswitch_38
        :pswitch_2b5
        :pswitch_36e
        :pswitch_39c
        :pswitch_3b2
        :pswitch_14
        :pswitch_29f
        :pswitch_291
        :pswitch_28a
        :pswitch_298
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 520
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 523
    sget-boolean v3, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isScaling:Z

    if-eqz v3, :cond_f

    .line 581
    :goto_e
    return v1

    .line 525
    :cond_f
    const-string v1, "--[ GESTURE ]--"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1f

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 530
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_102

    :goto_28
    :pswitch_28
    move v1, v2

    .line 544
    goto :goto_e

    .line 532
    :pswitch_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->init_x:F

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->init_y:F

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_41

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 536
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_28

    .line 539
    :pswitch_4d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Touch event MOVE::"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_28

    .line 545
    :cond_6a
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 546
    const-string v3, "--[ SCALE GESTURE ]--"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_82

    .line 548
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 549
    :cond_82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_10c

    :cond_89
    :goto_89
    move v1, v2

    .line 578
    goto :goto_e

    .line 551
    :pswitch_8b
    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->scroll_op:Z

    if-eqz v1, :cond_89

    .line 558
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->handleScrollEnd()V

    goto :goto_89

    .line 566
    :pswitch_93
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rebound:Landroid/graphics/Matrix;

    .line 567
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    if-eqz v3, :cond_89

    .line 568
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rebound:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 569
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 570
    .local v0, scale:[F
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 571
    aget v3, v0, v1

    iput v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mScaleFactor:F

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "touch down::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rebound:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "touch down zoom layer matrix::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_89

    .line 580
    .end local v0           #scale:[F
    :cond_fb
    const-string v2, "why the hell??"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 530
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_28
        :pswitch_4d
    .end packed-switch

    .line 549
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_93
        :pswitch_8b
    .end packed-switch
.end method

.method public onUpdate(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 2
    .parameter "updatedView"

    .prologue
    .line 2270
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->updateFullStoryTime()I

    .line 2271
    return-void
.end method

.method public declared-synchronized previewStopFromOutside()V
    .registers 8

    .prologue
    .line 2908
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v0, :cond_3c

    .line 2909
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2910
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 2912
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2914
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_3c

    .line 2915
    const-string v0, "afterPause not null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2916
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    const/4 v2, 0x0

    .line 2917
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    add-float/2addr v3, v4

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    .line 2916
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 2921
    :cond_3c
    monitor-exit p0

    return-void

    .line 2908
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshFullStoryTime()V
    .registers 4

    .prologue
    .line 1915
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    if-eqz v0, :cond_46

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inside refreshFullStoryTime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1918
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    .line 1919
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->fullTime:J

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->timeFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1922
    :cond_46
    return-void
.end method

.method public removeMediaView(Landroid/view/View;)V
    .registers 2
    .parameter "aView"

    .prologue
    .line 1748
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->removeView(Landroid/view/View;)V

    .line 1749
    return-void
.end method

.method public setVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 489
    const-string v0, "Pausing when going outside"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 490
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v0, :cond_16

    .line 492
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 498
    :cond_16
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play:Z

    .line 499
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 502
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2050
    :try_start_0
    const-string v1, "surface changed start"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2052
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    .line 2053
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2054
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2055
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v2, 0x258

    const/16 v3, 0x154

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 2060
    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2062
    const-string v1, "surface changed end"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 2067
    :goto_2f
    return-void

    .line 2064
    :catch_30
    move-exception v0

    .line 2065
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in surface changed -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 9
    .parameter "holder"

    .prologue
    .line 2092
    monitor-enter p0

    :try_start_1
    const-string v3, "surface created"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2093
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/ve/view/PreviewViewGroup;->surfaceDestroyed:Z

    .line 2094
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "surface created and surface destroy -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/android/app/ve/view/PreviewViewGroup;->surfaceDestroyed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2095
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/ve/view/PreviewViewGroup;->firstTimePlayInApp:Z

    .line 2096
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    .line 2097
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/ve/view/PreviewViewGroup;->firstPlay:Z

    .line 2099
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_ba

    move-result-object v3

    if-nez v3, :cond_2e

    .line 2144
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    .line 2105
    :cond_2e
    :try_start_2e
    iput-object p1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    .line 2106
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2107
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 2108
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    const/16 v4, 0x258

    const/16 v5, 0x154

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 2111
    const-string v3, "Surface Created::Giving Surface to Engine"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2112
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    .line 2113
    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 2114
    .local v1, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispWidth(I)V

    .line 2115
    const/16 v3, 0x154

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setTargetDispHeight(I)V

    .line 2116
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDurationInFloat()F

    move-result v3

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setFullMovieDuration(I)V

    .line 2117
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->setDisplayForPreviewPlayer(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2118
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2119
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/app/video/editor/external/NativeInterface;->setStackStateListener(Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;)V

    .line 2123
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->addChangeModeListener(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;)V

    .line 2125
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    if-nez v3, :cond_bd

    .line 2126
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2134
    :goto_99
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 2136
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 2137
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_2c

    .line 2138
    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 2139
    .local v0, firstElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F
    :try_end_b8
    .catchall {:try_start_2e .. :try_end_b8} :catchall_ba

    goto/16 :goto_2c

    .line 2092
    .end local v0           #firstElement:Lcom/samsung/app/video/editor/external/Element;
    .end local v1           #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :catchall_ba
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2129
    .restart local v1       #lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_bd
    :try_start_bd
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_cc
    .catchall {:try_start_bd .. :try_end_cc} :catchall_ba

    goto :goto_99
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 2150
    monitor-enter p0

    :try_start_1
    const-string v0, "surface destroyed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2151
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->surfaceDestroyed()V

    .line 2152
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->surfaceDestroyed:Z

    .line 2154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->sum:J

    .line 2157
    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-nez v0, :cond_20

    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    if-eqz v0, :cond_38

    sget-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isStopped:Z

    if-nez v0, :cond_38

    .line 2158
    :cond_20
    const-string v0, "player present while surface destroyed, if yes -- > stop and terminate"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 2160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isTerminated:Z

    .line 2161
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isCreated:Z

    .line 2163
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    .line 2164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isComplete:Z

    .line 2168
    :cond_38
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    if-nez v0, :cond_44

    .line 2169
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->freeze(Z)V

    .line 2171
    :cond_44
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeChangeModeListener(Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$ChangeModeListener;)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4d

    .line 2172
    monitor-exit p0

    return-void

    .line 2150
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleSurfaceVisibility(Z)V
    .registers 11
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v8, 0x0

    .line 765
    if-eqz p1, :cond_6d

    .line 767
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 769
    iput-object v2, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_layer:Landroid/widget/ImageView;

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->imageDuration:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 786
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;

    .line 787
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoomElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    add-float/2addr v3, v4

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    .line 786
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 793
    iput-boolean v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    .line 794
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 795
    invoke-static {}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->get_instance()Lcom/sec/android/app/ve/view/caption/CaptionHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/caption/CaptionHolder;->showClipArtParam()V

    .line 934
    :cond_6c
    :goto_6c
    return-void

    .line 801
    :cond_6d
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_op:Z

    .line 802
    const/16 v0, 0x9

    new-array v7, v0, [F

    fill-array-data v7, :array_fe

    .line 803
    .local v7, init_values:[F
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->startUp:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_cancel:Landroid/widget/Button;

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mPreviewViewGroup:Lcom/sec/android/app/ve/view/PreviewViewGroup;

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->imageDuration:Landroid/widget/Button;

    .line 823
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->savedMatrix:Landroid/graphics/Matrix;

    .line 824
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->init:Landroid/graphics/Matrix;

    .line 825
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->rect:Landroid/graphics/RectF;

    .line 827
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->start_rect:Z

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->play_button:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->story_time:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->compl_time:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->divider:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->captionTextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_save:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->zoom_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup$8;-><init>(Lcom/sec/android/app/ve/view/PreviewViewGroup;)V

    .line 931
    const-wide/16 v2, 0xc8

    .line 844
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6c

    .line 802
    nop

    :array_fe
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public updateDrawingDurationButton(ZI)V
    .registers 16
    .parameter "bShow"
    .parameter "nDuration"

    .prologue
    const/16 v12, 0x6a

    const/high16 v11, 0x4270

    .line 3040
    if-eqz p1, :cond_b

    sget-boolean v8, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlaying:Z

    if-eqz v8, :cond_b

    .line 3089
    :cond_a
    :goto_a
    return-void

    .line 3042
    :cond_b
    if-eqz p1, :cond_b5

    const/4 v7, 0x0

    .line 3044
    .local v7, visibility:I
    :goto_e
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v0

    .line 3046
    .local v0, drawingParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-eq v7, v8, :cond_2f

    .line 3047
    if-nez v7, :cond_b8

    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getVisibility()I

    move-result v8

    if-nez v8, :cond_b8

    .line 3048
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 3055
    :cond_2f
    :goto_2f
    if-nez v7, :cond_a

    if-eqz v0, :cond_a

    .line 3057
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3058
    .local v5, sec:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08008c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3061
    .local v2, minString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3062
    .local v3, nMin:I
    const/4 v4, 0x0

    .line 3065
    .local v4, nSec:I
    if-nez p2, :cond_c1

    .line 3066
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v8

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v9

    sub-float v6, v8, v9

    .line 3070
    .local v6, time:F
    :goto_75
    cmpl-float v8, v6, v11

    if-lez v8, :cond_c3

    .line 3072
    div-float v8, v6, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3073
    rem-float v8, v6, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3079
    :goto_85
    if-lez v3, :cond_c8

    .line 3080
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3084
    .local v1, durString:Ljava/lang/String;
    :goto_a2
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3086
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 3087
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x7d0

    invoke-virtual {v8, v12, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 3042
    .end local v0           #drawingParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .end local v1           #durString:Ljava/lang/String;
    .end local v2           #minString:Ljava/lang/String;
    .end local v3           #nMin:I
    .end local v4           #nSec:I
    .end local v5           #sec:Ljava/lang/String;
    .end local v6           #time:F
    .end local v7           #visibility:I
    :cond_b5
    const/4 v7, 0x4

    goto/16 :goto_e

    .line 3049
    .restart local v0       #drawingParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    .restart local v7       #visibility:I
    :cond_b8
    if-eqz v7, :cond_2f

    .line 3050
    iget-object v8, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->mDrawDurationButton:Landroid/widget/Button;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2f

    .line 3068
    .restart local v2       #minString:Ljava/lang/String;
    .restart local v3       #nMin:I
    .restart local v4       #nSec:I
    .restart local v5       #sec:Ljava/lang/String;
    :cond_c1
    int-to-float v6, p2

    .restart local v6       #time:F
    goto :goto_75

    .line 3077
    :cond_c3
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_85

    .line 3082
    :cond_c8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durString:Ljava/lang/String;
    goto :goto_a2
.end method

.method public updatePreviewOnDone()V
    .registers 8

    .prologue
    .line 2070
    const-string v0, "PEA:::LEDDDD"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2071
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 2077
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2078
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V

    .line 2079
    :cond_18
    const/4 v2, 0x0

    .line 2080
    .local v2, secondElement:Lcom/samsung/app/video/editor/external/Element;
    iget-object v0, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_3c

    .line 2081
    const-string v0, "afterPause not null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2082
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    .line 2083
    iget-object v3, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->afterPause:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/ve/view/PreviewViewGroup;->pauseTime:F

    add-float/2addr v3, v4

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    const/16 v5, 0x258

    const/16 v6, 0x154

    .line 2082
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JII)V

    .line 2086
    .end local v2           #secondElement:Lcom/samsung/app/video/editor/external/Element;
    :cond_3c
    return-void
.end method
