.class public Lcom/sec/android/app/ve/activity/ProjectEditActivity;
.super Landroid/app/Activity;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$AlbumDetailsFetcedCallback;
.implements Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$VideoThumbsCreationCompleteCallback;
.implements Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$ImageThumbsCreationCompleteCallback;
.implements Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$ResolverAdapter;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;,
        Lcom/sec/android/app/ve/activity/ProjectEditActivity$exportResolutionAdapter;
    }
.end annotation


# static fields
.field private static final ADDMEDIA_CAPTURE_IMAGE:I = 0x32

.field private static final ADDMEDIA_RECORD_VIDEO:I = 0x31

.field private static final ALBUM_MUSIC_ADD:I = 0x59

.field private static final ALBUM_MUSIC_CLEAR:I = 0x58

.field private static final ALBUM_MUSIC_COMPLETED:I = 0x5a

.field private static final BASICTHEME_APPLY_CONFIRM:I = 0x9

.field public static final DIALOG_EXPORT_CONFIRM:I = 0x7

.field private static final DIALOG_EXPORT_FIRST:I = 0xd

.field public static final DIALOG_EXPORT_PROGRESS:I = 0x5

.field public static final DIALOG_EXPORT_RESOLUTION:I = 0x3

.field private static final DIALOG_FILE_EXISTS:I = 0x11

.field private static final DIALOG_FINISH_ACTIVITY:I = 0x13

.field public static final DIALOG_IMAGE_DURATION:I = 0x1

.field public static final DIALOG_LAUNCH_CAMERA:I = 0x2

.field private static final DIALOG_PROJECT_RENAME:I = 0xe

.field private static final DIALOG_SAVE:I = 0xb

.field private static final DIALOG_SAVE_BEFORE_NEW:I = 0x12

.field public static final DIALOG_SHARE_APP:I = 0x4

.field public static final DIALOG_SHARE_PROGRESS:I = 0x6

.field private static final DIALOG_VIDEOINTENT_OVERRIDE:I = 0x10

.field private static final DRAW_DUR_END_OF_CLIP:I = 0x0

.field private static final DRAW_DUR_ENTIRE_CLIP:I = 0x1

.field private static final EXPORT_MOVIE:I = 0x3e8

.field private static final HIDE_TABSELECTION_AREA:I = 0x11

.field private static final IMAGE_THUMB_ADD:I = 0x60

.field private static final IMAGE_THUMB_CLEAR:I = 0x5f

.field private static final IMAGE_THUMB_COMPLETED:I = 0x61

.field private static final LAUNCH_THEME_THREAD:I = 0x15

.field private static final LAUNCH_THUMB_THREAD:I = 0x14

.field public static final MAX_ELEMENT_SIZE:I = 0x1e

.field private static final MAX_PROGRESS:I = 0x64

.field private static final MSG_DELAY_EXPORT_WAKELOCK:I = 0x6f

.field private static final MSG_EXPORT_CANCELLED:I = 0x67

.field private static final MSG_EXPORT_FAILURE:I = 0x65

.field private static final MSG_REMOVE_EXPORT_DIALOG:I = 0x68

.field private static final MSG_STOP_EXPORT_DIALOG:I = 0x64

.field private static final MSG_STOP_SHARE_DIALOG:I = 0x66

.field private static final ORIENTATION_REFRESH_PREVIEW:I = 0x5e

.field public static final PROJECT_EXT:Ljava/lang/String; = ".vep"

.field private static final SHARE_EXPORT_CONFIRM:I = 0xa

.field private static final SHARE_MOVIE:I = 0x7a

.field private static final SHARE_OPTION_DIALOG:I = 0xc

.field public static final THEME_APPLY_CONFIRM:I = 0x8

.field private static final VIDEO_THUMB_ADD:I = 0x5c

.field private static final VIDEO_THUMB_CLEAR:I = 0x5b

.field private static final VIDEO_THUMB_COMPLETED:I = 0x5d

.field public static final VIEW_VIDEO_FROM_PICKER:I = 0x33

.field private static _instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private static isExported:Z

.field public static mContext:Landroid/content/Context;

.field private static mImageThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

.field public static mIsAlbumView:Z

.field private static mMusicAlbumUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

.field private static mToast:Landroid/widget/Toast;

.field private static mVideoThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;


# instance fields
.field createNew:Z

.field private dialogID:I

.field private eThread:Lcom/sec/android/app/ve/thread/ExportThread;

.field fileName:Ljava/lang/String;

.field finalPath:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field private intent:Landroid/content/Intent;

.field private lCamCamcorder:Landroid/app/AlertDialog;

.field lEventListener:Landroid/view/WindowOrientationListener;

.field private mActivityEventCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;",
            ">;"
        }
    .end annotation
.end field

.field mAddMediaViewGroup:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClipDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

.field private mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private mDialogCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

.field private mDisplayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawDurationListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDrawingDurationPopupItems:[Ljava/lang/String;

.field private mEstimateDelay:I

.field private mInflater:Landroid/view/LayoutInflater;

.field public mIsBatteryLow:Z

.field public mIsMediaScannerRunning:Z

.field mIsTabsShown:Z

.field public mIsVideoViewed:Z

.field private mKeyEventCallbacks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCameraCapturedUri:Landroid/net/Uri;

.field private mLaunchCamcorder:Landroid/widget/ImageView;

.field private mLaunchCamera:Landroid/widget/ImageView;

.field private mLowBatteryWarningLevel:I

.field private mNewPcBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProgress:I

.field mProgressHandler:Landroid/os/Handler;

.field private mReCreateMenu:Z

.field mSelectTabImg:I

.field mSelectTabText:I

.field mSelecteTab:I

.field private mShareAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareInfo:Landroid/content/pm/ResolveInfo;

.field public mThumbHandler:Landroid/os/Handler;

.field private mTimeLineViewGroup:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

.field mVideoClipProgressBarView:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

.field private progress:Landroid/app/ProgressDialog;

.field private resolvedIntent:Landroid/content/Intent;

.field save:Z

.field shareIntent:Landroid/content/Intent;

.field private trySharing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsAlbumView:Z

    .line 239
    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    .line 270
    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    .line 3572
    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mMusicAlbumUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    .line 3594
    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    .line 3640
    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mImageThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mSelecteTab:I

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLaunchCamcorder:Landroid/widget/ImageView;

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsTabsShown:Z

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 183
    iput v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I

    .line 184
    iput v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I

    .line 192
    const/16 v0, -0x6f

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 198
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    .line 234
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mAddMediaViewGroup:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    .line 235
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoClipProgressBarView:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    .line 243
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mTimeLineViewGroup:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    .line 245
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mClipDeleteView:Lcom/sec/android/app/ve/view/timeline/ClipDeleteView;

    .line 268
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 274
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsBatteryLow:Z

    .line 276
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    .line 278
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLastCameraCapturedUri:Landroid/net/Uri;

    .line 280
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsMediaScannerRunning:Z

    .line 282
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mReCreateMenu:Z

    .line 284
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$1;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$2;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawDurationListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2796
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$3;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    .line 3205
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$4;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mNewPcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3224
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$5;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3454
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$6;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method static synthetic access$0()Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    return-object v0
.end method

.method static synthetic access$1()Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;
    .registers 1

    .prologue
    .line 3572
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mMusicAlbumUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I

    return v0
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/sec/android/app/ve/thread/ExportThread;
    .registers 2
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    return-object v0
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$13(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLastCameraCapturedUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$14(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 3343
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handleLowBattery()V

    return-void
.end method

.method static synthetic access$15(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3323
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handleBatteryLevels(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$16(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z

    return-void
.end method

.method static synthetic access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z

    return v0
.end method

.method static synthetic access$18(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$19(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->updateTrimSplitSection()V

    return-void
.end method

.method static synthetic access$2()Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;
    .registers 1

    .prologue
    .line 3594
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    return-object v0
.end method

.method static synthetic access$20(Lcom/sec/android/app/ve/activity/ProjectEditActivity;ZLandroid/content/Intent;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(ZLandroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    return-object v0
.end method

.method static synthetic access$22(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1423
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetMediaSelection()V

    return-void
.end method

.method static synthetic access$23(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 2657
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetTranscode()V

    return-void
.end method

.method static synthetic access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    return-void
.end method

.method static synthetic access$25(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2681
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->saveAsTranscode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Z)V
    .registers 1
    .parameter

    .prologue
    .line 228
    sput-boolean p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isExported:Z

    return-void
.end method

.method static synthetic access$27(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3117
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchApplyingThemeDialog(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$29(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$3()Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;
    .registers 1

    .prologue
    .line 3640
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mImageThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/activity/ProjectEditActivity;IF)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchDeleteDrawingDialog(IF)V

    return-void
.end method

.method static synthetic access$6()Z
    .registers 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isExported:Z

    return v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 183
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I

    return v0
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 184
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mEstimateDelay:I

    return-void
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I

    return-void
.end method

.method public static dismissWaitProgress()V
    .registers 3

    .prologue
    const v2, 0x7f0b004f

    .line 994
    const-string v0, "PEA:dismisswait"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 995
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    if-eqz v0, :cond_2d

    .line 996
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;->sendEmptyMessage(I)Z

    .line 997
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 998
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1000
    :cond_2d
    return-void
.end method

.method private exportVideoCheck()V
    .registers 10

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x3

    .line 2714
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    .line 2715
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    .line 2714
    invoke-static {v5, v6}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 2716
    const-string v5, "change in project, export first"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2717
    sget-object v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->getCheckBoxValue(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 2718
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 2766
    :goto_25
    return-void

    .line 2720
    :cond_26
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_25

    .line 2724
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "project is same,checking for exported video..if present"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getExportedVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 2727
    .local v0, exportedPath:Ljava/lang/String;
    if-eqz v0, :cond_c2

    .line 2728
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2729
    .local v1, file:Ljava/io/File;
    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->getVideoIdbyPath(Ljava/lang/String;)J

    move-result-wide v2

    .line 2730
    .local v2, lId:J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Video Id::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2732
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_a6

    .line 2733
    const-string v5, "lId not zero"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2734
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content://media/external/video/media/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2739
    .local v4, uri:Landroid/net/Uri;
    :goto_85
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;

    if-eqz v5, :cond_a2

    .line 2740
    if-eqz v4, :cond_ad

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 2741
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2743
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2744
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 2756
    :cond_a2
    :goto_a2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z

    goto :goto_25

    .line 2736
    .end local v4           #uri:Landroid/net/Uri;
    :cond_a6
    const-string v5, "file not there"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2737
    const/4 v4, 0x0

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_85

    .line 2746
    :cond_ad
    const-string v5, "exported file not available, filed may be moved"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2748
    sget-object v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->getCheckBoxValue(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 2749
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_a2

    .line 2751
    :cond_be
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_a2

    .line 2758
    .end local v1           #file:Ljava/io/File;
    .end local v2           #lId:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_c2
    const-string v5, "exportPAth is null,export maadi"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2759
    sget-object v5, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->getCheckBoxValue(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d4

    .line 2760
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_25

    .line 2762
    :cond_d4
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_25
.end method

.method public static getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;
    .registers 1

    .prologue
    .line 3043
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    return-object v0
.end method

.method private getVEEditFilePath(Landroid/content/Intent;)Ljava/lang/String;
    .registers 7
    .parameter "lEditIntent"

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    .local v1, lEditPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 849
    .local v2, lEditUri:Landroid/net/Uri;
    if-eqz p1, :cond_4c

    .line 851
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 852
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4c

    .line 854
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, lFileName:Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 859
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 862
    :cond_30
    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->getVideoFileInfoByUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 863
    .local v0, lCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_4c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4c

    .line 865
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 866
    const-string v4, "_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 879
    .end local v0           #lCursor:Landroid/database/Cursor;
    .end local v3           #lFileName:Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-object v1

    .line 870
    .restart local v3       #lFileName:Ljava/lang/String;
    :cond_4d
    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 872
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 875
    :cond_5a
    move-object v1, v3

    goto :goto_4c
.end method

.method private handleBatteryLevels(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 3325
    const-string v3, "status"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3327
    .local v2, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3329
    .local v1, battScale:I
    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3332
    .local v0, battLevel:I
    iget v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLowBatteryWarningLevel:I

    if-ge v0, v3, :cond_27

    const/4 v3, 0x2

    if-eq v2, v3, :cond_27

    .line 3334
    const-string v3, "onReceive battery level is and battery is not charging"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3335
    iput-boolean v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsBatteryLow:Z

    .line 3336
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handleLowBattery()V

    .line 3341
    :goto_26
    return-void

    .line 3339
    :cond_27
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsBatteryLow:Z

    goto :goto_26
.end method

.method private handleLowBattery()V
    .registers 7

    .prologue
    .line 3346
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 3347
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3348
    const-string v2, "Battery Low: Preview Playing"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3349
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 3350
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 3351
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f08006c

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 3353
    :cond_2e
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 3354
    const-string v2, "Battery Low: saving the project"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3355
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 3356
    .local v1, transcodeElemen:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const v2, 0x7f08006b

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 3357
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    .line 3363
    .end local v1           #transcodeElemen:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_58
    :goto_58
    return-void

    .line 3360
    :catch_59
    move-exception v0

    .line 3361
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_58
.end method

.method private init()V
    .registers 2

    .prologue
    .line 1419
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mAddMediaViewGroup:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    .line 1420
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoClipProgressBarView:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    .line 1421
    return-void
.end method

.method private launchApplyingThemeDialog(Z)V
    .registers 6
    .parameter "aIsBasicTheme"

    .prologue
    .line 3120
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3121
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 3122
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V

    .line 3145
    const-wide/16 v2, 0x12c

    .line 3122
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3146
    return-void
.end method

.method private launchDeleteDrawingDialog(IF)V
    .registers 7
    .parameter "nSelectedOperation"
    .parameter "fSelTime"

    .prologue
    .line 546
    new-instance v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$7;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;IF)V

    .line 595
    .local v1, deletePopupListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 596
    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 597
    const v3, 0x7f08008b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 598
    const v3, 0x7f08000b

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 599
    const v3, 0x7f08000c

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 600
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 601
    .local v0, deleteDrawingAlert:Landroid/app/AlertDialog;
    if-eqz v0, :cond_2f

    .line 602
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 603
    :cond_2f
    return-void
.end method

.method private launchImageDurDilaog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;I)V
    .registers 14
    .parameter "callback"
    .parameter "setduration"

    .prologue
    .line 1652
    const/4 v0, -0x1

    .line 1654
    .local v0, aSelectedPos:I
    invoke-interface {p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;->getTargetView()Landroid/view/View;

    move-result-object v7

    .line 1655
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_5a

    instance-of v8, v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v8, :cond_5a

    move-object v8, v7

    .line 1656
    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v9

    move-object v8, v7

    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    sub-float v6, v9, v8

    .local v6, startTime:F
    move-object v8, v7

    .line 1657
    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v8

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v7           #view:Landroid/view/View;
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v9

    sub-float v2, v8, v9

    .line 1658
    .local v2, endTime:F
    sub-float v3, v2, v6

    .line 1660
    .local v3, fduration:F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1661
    .local v1, duration:I
    const/4 v8, -0x1

    if-eq p2, v8, :cond_44

    .line 1662
    move v1, p2

    .line 1665
    :cond_44
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onItemClick duration is  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1666
    const/4 v8, 0x3

    if-ne v1, v8, :cond_92

    .line 1668
    const/4 v0, 0x0

    .line 1684
    .end local v1           #duration:I
    .end local v2           #endTime:F
    .end local v3           #fduration:F
    .end local v6           #startTime:F
    :cond_5a
    :goto_5a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1685
    const v9, 0x7f080093

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1686
    const/high16 v9, 0x7f06

    new-instance v10, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;

    invoke-direct {v10, p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$15;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;)V

    invoke-virtual {v8, v9, v0, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 1702
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1704
    .local v4, lCamCamcorder:Landroid/app/AlertDialog;
    if-eqz v4, :cond_91

    .line 1706
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1707
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 1708
    .local v5, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x1a4

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1709
    const/16 v8, 0x1ba

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1710
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1713
    .end local v5           #params:Landroid/view/WindowManager$LayoutParams;
    :cond_91
    return-void

    .line 1669
    .end local v4           #lCamCamcorder:Landroid/app/AlertDialog;
    .restart local v1       #duration:I
    .restart local v2       #endTime:F
    .restart local v3       #fduration:F
    .restart local v6       #startTime:F
    :cond_92
    const/4 v8, 0x5

    if-ne v1, v8, :cond_97

    .line 1671
    const/4 v0, 0x1

    goto :goto_5a

    .line 1672
    :cond_97
    const/16 v8, 0xa

    if-ne v1, v8, :cond_9d

    .line 1674
    const/4 v0, 0x2

    goto :goto_5a

    .line 1675
    :cond_9d
    const/16 v8, 0x14

    if-ne v1, v8, :cond_a3

    .line 1677
    const/4 v0, 0x3

    goto :goto_5a

    .line 1678
    :cond_a3
    const/16 v8, 0x1e

    if-ne v1, v8, :cond_5a

    .line 1680
    const/4 v0, 0x4

    goto :goto_5a
.end method

.method private launchThemeSection()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mAddMediaViewGroup:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    if-eqz v0, :cond_b

    .line 3100
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mAddMediaViewGroup:Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->setVisibility(I)V

    .line 3101
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoClipProgressBarView:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    if-eqz v0, :cond_14

    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoClipProgressBarView:Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->setVisibility(I)V

    .line 3103
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mTimeLineViewGroup:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    if-eqz v0, :cond_1d

    .line 3104
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mTimeLineViewGroup:Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->setVisibility(I)V

    .line 3106
    :cond_1d
    return-void
.end method

.method private registerForBroadCast()V
    .registers 4

    .prologue
    .line 3049
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3052
    .local v1, lIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3053
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3054
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3055
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3056
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3057
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3060
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3061
    const-string v2, "Registering::::"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3063
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3067
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3069
    .local v0, lBattIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3070
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3073
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3076
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3077
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3078
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3080
    return-void
.end method

.method private registerForNewPicture()V
    .registers 4

    .prologue
    .line 3193
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3194
    .local v1, lIntent:Landroid/content/IntentFilter;
    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3197
    :try_start_a
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_a .. :try_end_f} :catch_1a

    .line 3201
    :goto_f
    const-string v2, "registerForNewPicture"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3202
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mNewPcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3203
    return-void

    .line 3198
    :catch_1a
    move-exception v0

    .line 3199
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_f
.end method

.method public static removeAlbumDetailsFetcedCallback()V
    .registers 1

    .prologue
    .line 3590
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mMusicAlbumUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    .line 3591
    return-void
.end method

.method public static removeImageThumbUpdateCallback()V
    .registers 1

    .prologue
    .line 3659
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mImageThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    .line 3660
    return-void
.end method

.method public static removeVideoThumbUpdateCallback()V
    .registers 1

    .prologue
    .line 3612
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    .line 3613
    return-void
.end method

.method private resetMediaSelection()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1425
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1426
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->resetSelectedImages()V

    .line 1428
    :cond_e
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1429
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddVideoImagePickerView;->resetSelectedVideos()V

    .line 1430
    :cond_1b
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->reset()V

    .line 1432
    sput v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 1433
    sput v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mSelectedAlbumId:I

    .line 1434
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->mMusicAddedPath:Ljava/lang/String;

    .line 1436
    return-void
.end method

.method private resetTranscode()V
    .registers 10

    .prologue
    .line 2658
    const/4 v5, 0x0

    .line 2659
    .local v5, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    .line 2660
    .local v4, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2661
    .local v1, fCheck:Ljava/io/File;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    .line 2662
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 2663
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2665
    :try_start_23
    const-string v6, "Reading from FS"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2666
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2667
    .local v3, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object v5, v0

    .line 2668
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjectFileName(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_46} :catch_5c

    .line 2672
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    :goto_46
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2673
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    .line 2679
    :goto_50
    return-void

    .line 2675
    :cond_51
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2676
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    goto :goto_50

    .line 2669
    :catch_5c
    move-exception v6

    goto :goto_46
.end method

.method private saveAsTranscode(Ljava/lang/String;)V
    .registers 7
    .parameter "projectName"

    .prologue
    .line 2686
    :try_start_0
    new-instance v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2687
    .local v0, copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "newproject"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2688
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 2689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".vep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2688
    invoke-virtual {v2, v0, v3, p1, v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 2690
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 2696
    :goto_51
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RENAME::calling save"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2697
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 2698
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 2699
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resetTranscode()V

    .line 2701
    const-string v2, "RENAME::called save"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2709
    .end local v0           #copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :goto_77
    return-void

    .line 2692
    .restart local v0       #copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_78
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 2693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".vep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2692
    invoke-virtual {v2, v0, v3, p1, v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a1} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_a8

    move-result-object v0

    goto :goto_51

    .line 2702
    .end local v0           #copy:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :catch_a3
    move-exception v1

    .line 2704
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_77

    .line 2705
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_a8
    move-exception v1

    .line 2707
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77
.end method

.method public static setAlbumDetailsFetcedCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;)V
    .registers 1
    .parameter "aMusicAlbumUpdateCallback"

    .prologue
    .line 3586
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mMusicAlbumUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$MusicAlbumUpdateCallback;

    .line 3587
    return-void
.end method

.method public static setImageThumbUpdateCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;)V
    .registers 1
    .parameter "aImageThumbUpdateCallback"

    .prologue
    .line 3655
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mImageThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ImageThumbUpdateCallback;

    .line 3656
    return-void
.end method

.method public static setVideoThumbUpdateCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;)V
    .registers 1
    .parameter "aVideoThumbUpdateCallback"

    .prologue
    .line 3608
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mVideoThumbUpdateCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$VideoThumbUpdateCallback;

    .line 3609
    return-void
.end method

.method public static showToast(IIII)V
    .registers 7
    .parameter "aId"
    .parameter "gravity"
    .parameter "xOff"
    .parameter "yOff"

    .prologue
    .line 3151
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3153
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    .line 3156
    :cond_16
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 3157
    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    .line 3158
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 3163
    :cond_23
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3164
    return-void
.end method

.method public static showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "str"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 988
    const-string v0, "PEA:showwait"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 990
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

    .line 991
    return-void
.end method

.method private updateTrimSplitSection()V
    .registers 3

    .prologue
    .line 1036
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1037
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 1038
    :cond_e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1039
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeSubMode(I)V

    .line 1040
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1041
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 1042
    :cond_29
    return-void
.end method

.method private validateVideoEditIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "aIntent"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x64

    const v5, 0x7f08001f

    const/4 v4, 0x0

    .line 699
    if-nez p1, :cond_a

    .line 774
    :goto_9
    return-void

    .line 702
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getVEEditFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, lFile:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, lType:Ljava/lang/String;
    if-eqz v1, :cond_16

    if-nez v0, :cond_30

    .line 710
    :cond_16
    const-string v2, "Type/Filepath passed for Video Editing is null, exiting"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 711
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 712
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setResult(I)V

    .line 713
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$8;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 724
    :cond_30
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 727
    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 728
    :cond_48
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->FindIfJPEG(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_5e

    .line 729
    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->isImageLarger8MP(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 731
    const-string v2, "Image is supported for Editing by VideoMaker"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 735
    :cond_5e
    const-string v2, "Image is not supported for Editing by VideoMaker"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 736
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 737
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setResult(I)V

    .line 738
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$9;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 751
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Engine Says for Video File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 753
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string v2, "3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 754
    const-string v2, "3gpp2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    :cond_b2
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->GetCodecFileProperties(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v8, :cond_c3

    .line 756
    const-string v2, " Video is supported Editing by VideoMaker"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 760
    :cond_c3
    const-string v2, " Video is not supported Editing by VideoMaker"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 761
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 762
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setResult(I)V

    .line 763
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$10;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method private validateVideoEditIntent(ZLandroid/content/Intent;Z)V
    .registers 15
    .parameter "aCreateNew"
    .parameter "aIntent"
    .parameter "aRefreshStory"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x447a

    .line 777
    const-string v7, "VideoEditor launched for Video/Image Editing"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 779
    invoke-direct {p0, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(Landroid/content/Intent;)V

    .line 781
    if-eqz p1, :cond_2f

    .line 783
    sget-object v7, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->init()V

    .line 784
    new-instance v5, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>()V

    .line 786
    .local v5, lNewTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_start_1b
    sget-object v7, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_7b

    move-result-object v5

    .line 790
    :goto_25
    iput-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 791
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    .line 794
    .end local v5           #lNewTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_2f
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v7, :cond_7a

    .line 796
    invoke-static {}, Lcom/sec/android/app/ve/thread/LooperThread;->getInstance()Lcom/sec/android/app/ve/thread/LooperThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/thread/LooperThread;->init()V

    .line 798
    invoke-direct {p0, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getVEEditFilePath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, lFile:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 802
    .local v6, lType:Ljava/lang/String;
    new-instance v2, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v2}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    .line 804
    .local v2, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v2, v4}, Lcom/samsung/app/video/editor/external/Element;->setFilePath(Ljava/lang/String;)V

    .line 806
    const-string v7, "image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 807
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    .line 817
    :goto_56
    new-instance v1, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 818
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v1, v10}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 819
    const/16 v7, 0x64

    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 820
    invoke-virtual {v2, v1}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 821
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v7, v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 827
    if-eqz p3, :cond_7a

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    if-eqz v7, :cond_7a

    .line 830
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->update()V

    .line 833
    .end local v1           #edit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v2           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v4           #lFile:Ljava/lang/String;
    .end local v6           #lType:Ljava/lang/String;
    :cond_7a
    return-void

    .line 787
    .restart local v5       #lNewTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :catch_7b
    move-exception v0

    .line 788
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 809
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #lNewTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .restart local v2       #element:Lcom/samsung/app/video/editor/external/Element;
    .restart local v4       #lFile:Ljava/lang/String;
    .restart local v6       #lType:Ljava/lang/String;
    :cond_80
    invoke-virtual {v2, v10}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    .line 811
    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->getVideoDurationbyPath(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v3, v7

    .line 813
    .local v3, lDuration:I
    int-to-float v7, v3

    div-float/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 814
    int-to-float v7, v3

    div-float/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    goto :goto_56
.end method


# virtual methods
.method public captureFromCamera()V
    .registers 3

    .prologue
    .line 3182
    const-string v1, "captureFromCamera"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3183
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->registerForNewPicture()V

    .line 3184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3186
    .local v0, lCaptureIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 3187
    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3188
    return-void
.end method

.method public checkVideoEditIntent(Landroid/content/Intent;)Z
    .registers 5
    .parameter "aIntent"

    .prologue
    .line 838
    if-nez p1, :cond_4

    .line 839
    const/4 v1, 0x0

    .line 842
    :goto_3
    return v1

    .line 840
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, lAction:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkVideoEditIntent action is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 842
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public deSelectThemetab(Z)V
    .registers 2
    .parameter "aISbasicTheme"

    .prologue
    .line 3170
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 3703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 3704
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 3705
    return-void
.end method

.method public getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    return-object v0
.end method

.method public isExportInProgress()Z
    .registers 2

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1409
    :cond_c
    const/4 v0, 0x0

    .line 1411
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public launchAddMedia()V
    .registers 3

    .prologue
    .line 1101
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 1102
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationSubMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_47

    .line 1104
    const-string v0, "launching Add media"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1105
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1106
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->changeToAddMedia()V

    .line 1107
    :cond_23
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1108
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->setVideoPickerSelected()V

    .line 1109
    :cond_30
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1110
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/addmedia/AddMediaViewGroup;->launchVideoPickerView(I)V

    .line 1112
    :cond_3e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->changeMode(I)V

    .line 1119
    :goto_46
    return-void

    .line 1117
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddMedia is already shown -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_46
.end method

.method public launchAddMediaAfterTheme(Z)V
    .registers 4
    .parameter "aIsbasicTheme"

    .prologue
    .line 3112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3114
    .local v0, lIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 3115
    return-void
.end method

.method public launchThemes()V
    .registers 4

    .prologue
    .line 3088
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 3089
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3091
    .local v0, lIntent:Landroid/content/Intent;
    const-string v1, "filename"

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3093
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 3094
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 21
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2856
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 2857
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2859
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "PEA onActivityResult Result code -->"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2860
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "PEA onActivityResult Request code code -->"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2862
    const/16 v13, 0x32

    move/from16 v0, p1

    if-ne v0, v13, :cond_46

    .line 2865
    :try_start_38
    const-string v13, "onActivityResult unregisterReceiver new image picture broadcast receiver"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mNewPcBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_46} :catch_148

    .line 2871
    :cond_46
    :goto_46
    packed-switch p1, :pswitch_data_14c

    .line 2973
    const-string v13, "This is inside onAcvitity result default"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2974
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 2977
    :cond_53
    :goto_53
    return-void

    .line 2873
    :pswitch_54
    const-string v13, "Inside onActivityResult Video...."

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2876
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 2877
    if-eqz p3, :cond_e9

    .line 2881
    :try_start_60
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->getVideoFileInfoByUri(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v6

    .line 2883
    .local v6, lCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_53

    .line 2886
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2888
    const-string v13, "duration"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2889
    .local v7, lDuration:J
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "lDuartion::::"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2890
    const-string v13, "_data"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2892
    .local v9, lFilepath:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2893
    const/16 v3, 0x90

    .line 2894
    .local v3, height:I
    const/16 v12, 0xb0

    .line 2895
    .local v12, width:I
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14, v12, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetFrameRGB565Buffer(Ljava/lang/String;III)[B

    move-result-object v11

    .line 2896
    .local v11, result:[B
    const/4 v1, 0x0

    .line 2897
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 2899
    .local v5, lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v11, :cond_c2

    .line 2901
    const/16 v13, 0xa8

    const/16 v14, 0x60

    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2902
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 2904
    .local v10, pixelBuffer:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_c2

    .line 2906
    invoke-virtual {v1, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2907
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2908
    .restart local v5       #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2911
    .end local v10           #pixelBuffer:Ljava/nio/ByteBuffer;
    :cond_c2
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v13

    .line 2912
    const/4 v14, 0x1

    .line 2914
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2911
    invoke-virtual {v13, v5, v14, v9, v15}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->cameraBitmapDropped(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_60 .. :try_end_d7} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_d7} :catch_e1

    goto/16 :goto_53

    .line 2917
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v5           #lBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #lCursor:Landroid/database/Cursor;
    .end local v7           #lDuration:J
    .end local v9           #lFilepath:Ljava/lang/String;
    .end local v11           #result:[B
    .end local v12           #width:I
    :catch_d9
    move-exception v2

    .line 2918
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v13, "Got Outofmemory error while creating Video Bitmap"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2920
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_e1
    move-exception v2

    .line 2921
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "Got Exception while getting recorede video"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2927
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e9
    const-string v13, "Got onActivityResult for Camcorder and data is null"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2932
    :pswitch_f0
    const-string v13, "Inside onActivityResult Image...."

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2933
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 2934
    if-eqz p3, :cond_135

    .line 2940
    :try_start_fc
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLastCameraCapturedUri:Landroid/net/Uri;

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->getImageFilePathByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 2944
    .restart local v9       #lFilepath:Ljava/lang/String;
    if-eqz v9, :cond_53

    .line 2949
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "data"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 2951
    .local v4, lBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v13

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2952
    const/4 v15, 0x0

    .line 2953
    const/16 v16, 0x0

    .line 2951
    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v9, v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->cameraBitmapDropped(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/OutOfMemoryError; {:try_start_fc .. :try_end_123} :catch_125
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_123} :catch_12d

    goto/16 :goto_53

    .line 2956
    .end local v4           #lBitmap:Landroid/graphics/Bitmap;
    .end local v9           #lFilepath:Ljava/lang/String;
    :catch_125
    move-exception v2

    .line 2957
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v13, "Got Outofmemory error while creating Image Bitmap"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2959
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_12d
    move-exception v2

    .line 2960
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "Got Exception while getting camera captured image"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2964
    .end local v2           #e:Ljava/lang/Exception;
    :cond_135
    const-string v13, "Got onActivityResult for camera and data is null"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_53

    .line 2969
    :pswitch_13c
    const-string v13, "This is inside View Video Acvitity result"

    invoke-static {v13}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2970
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    goto/16 :goto_53

    .line 2867
    :catch_148
    move-exception v13

    goto/16 :goto_46

    .line 2871
    nop

    :pswitch_data_14c
    .packed-switch 0x31
        :pswitch_54
        :pswitch_f0
        :pswitch_13c
    .end packed-switch
.end method

.method public onAlbumDetailsFecthed(Lcom/sec/android/app/ve/data/VEAlbum;)V
    .registers 5
    .parameter "avAlbum"

    .prologue
    .line 3564
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3565
    .local v0, lMsg:Landroid/os/Message;
    const/16 v1, 0x59

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3566
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3567
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3568
    const-string v1, "PEA Music Album Map is added"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3569
    return-void
.end method

.method public onAlbumDetailsFecthed(Z)V
    .registers 4
    .parameter "aIsClear"

    .prologue
    .line 3550
    if-eqz p1, :cond_f

    .line 3552
    const-string v0, "PEA Music Album Map is cleared"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3553
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3560
    :goto_e
    return-void

    .line 3557
    :cond_f
    const-string v0, "PEA Music Album Map is filled"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3558
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e
.end method

.method public onBroadCastReceiver()V
    .registers 4

    .prologue
    .line 3685
    const-string v1, "Inside PEA onBroadCastReceiver and finsihing"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3686
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 3689
    :try_start_b
    const-string v1, "Inside PEA onBroadCastReceiver, savign the project"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3690
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_19} :catch_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_22

    .line 3698
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 3699
    return-void

    .line 3691
    :catch_1d
    move-exception v0

    .line 3692
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_19

    .line 3693
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 3694
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 3084
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 29
    .parameter "newConfig"

    .prologue
    .line 1237
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1238
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "This is inside onConfigurationChanged"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1239
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v24

    if-eqz v24, :cond_3aa

    sget-object v24, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    if-eqz v24, :cond_3aa

    sget-object v24, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3aa

    .line 1240
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mReCreateMenu:Z

    .line 1241
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b00db

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1242
    .local v5, lL:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_a2

    .line 1243
    const v24, 0x7f0b00dc

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1244
    .local v8, lSelTheme:Landroid/widget/LinearLayout;
    const v24, 0x7f0b00de

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1245
    .local v6, lSelAddMedia:Landroid/widget/LinearLayout;
    const v24, 0x7f0b00e0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1246
    .local v7, lSelEdit:Landroid/widget/LinearLayout;
    if-eqz v8, :cond_7c

    .line 1248
    const v24, 0x7f0b00dd

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f08004f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1249
    :cond_7c
    if-eqz v6, :cond_8f

    .line 1251
    const v24, 0x7f0b00df

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f080051

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1252
    :cond_8f
    if-eqz v7, :cond_a2

    .line 1254
    const v24, 0x7f0b00e1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f080070

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1256
    .end local v6           #lSelAddMedia:Landroid/widget/LinearLayout;
    .end local v7           #lSelEdit:Landroid/widget/LinearLayout;
    .end local v8           #lSelTheme:Landroid/widget/LinearLayout;
    :cond_a2
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0b00d5

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1257
    .restart local v8       #lSelTheme:Landroid/widget/LinearLayout;
    if-eqz v8, :cond_c6

    .line 1259
    const v24, 0x7f0b00d6

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f08004f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1261
    :cond_c6
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0b00d7

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1262
    .restart local v6       #lSelAddMedia:Landroid/widget/LinearLayout;
    if-eqz v6, :cond_ea

    .line 1264
    const v24, 0x7f0b00d8

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f080051

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1266
    :cond_ea
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getRootView()Landroid/view/View;

    move-result-object v24

    const v25, 0x7f0b00d9

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1267
    .restart local v7       #lSelEdit:Landroid/widget/LinearLayout;
    if-eqz v7, :cond_10e

    .line 1269
    const v24, 0x7f0b00da

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    const v25, 0x7f080070

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(I)V

    .line 1271
    :cond_10e
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v24

    if-eqz v24, :cond_12b

    .line 1272
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v24

    const v25, 0x7f0b0125

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1273
    .local v13, mUndoControlButton:Landroid/widget/Button;
    if-eqz v13, :cond_12b

    .line 1274
    const v24, 0x7f080064

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(I)V

    .line 1276
    .end local v13           #mUndoControlButton:Landroid/widget/Button;
    :cond_12b
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v24

    if-eqz v24, :cond_148

    .line 1277
    const v24, 0x7f0b0008

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1278
    .local v9, mDoneButton:Landroid/widget/Button;
    if-eqz v9, :cond_148

    .line 1279
    const v24, 0x7f080020

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(I)V

    .line 1284
    .end local v9           #mDoneButton:Landroid/widget/Button;
    :cond_148
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v24

    if-eqz v24, :cond_165

    .line 1285
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v24

    const v25, 0x7f0b010f

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1287
    .local v10, mDragDrop:Landroid/widget/TextView;
    if-eqz v10, :cond_165

    .line 1288
    const v24, 0x7f080035

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1292
    .end local v10           #mDragDrop:Landroid/widget/TextView;
    :cond_165
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b004b

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1293
    .local v15, noImageText:Landroid/widget/TextView;
    if-eqz v15, :cond_17c

    .line 1294
    const v24, 0x7f080067

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1296
    :cond_17c
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b0132

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1297
    .local v17, noVideoText:Landroid/widget/TextView;
    if-eqz v17, :cond_195

    .line 1298
    const v24, 0x7f080066

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1300
    :cond_195
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b0063

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1301
    .local v16, noMusicText:Landroid/widget/TextView;
    if-eqz v16, :cond_1ae

    .line 1302
    const v24, 0x7f080068

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1303
    :cond_1ae
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    .line 1304
    const v25, 0x7f0b0115

    .line 1303
    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 1307
    .local v12, mTimeBtn:Landroid/widget/Button;
    if-eqz v12, :cond_21c

    invoke-virtual {v12}, Landroid/widget/Button;->getVisibility()I

    move-result v24

    if-nez v24, :cond_21c

    invoke-virtual {v12}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v24

    if-lez v24, :cond_21c

    .line 1309
    invoke-virtual {v12}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1311
    .local v18, str:Ljava/lang/String;
    const/16 v24, 0x20

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 1312
    .local v19, temp:I
    if-lez v19, :cond_217

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_217

    .line 1314
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1315
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f08002c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1317
    :cond_217
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1319
    .end local v18           #str:Ljava/lang/String;
    .end local v19           #temp:I
    :cond_21c
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1320
    const-string v24, "Locale change PEA closing ..."

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1321
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v24

    if-eqz v24, :cond_388

    .line 1322
    const-string v24, "clone not null"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v24

    if-eqz v24, :cond_366

    .line 1324
    const-string v24, "No need to save "

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1343
    :goto_252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lCamCamcorder:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lCamCamcorder:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_281

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lCamCamcorder:Landroid/app/AlertDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->dismiss()V

    .line 1346
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b009e

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1348
    .local v4, imageDurationBtn:Landroid/widget/Button;
    if-eqz v4, :cond_281

    .line 1349
    invoke-virtual {v4}, Landroid/widget/Button;->performClick()Z

    .line 1353
    .end local v4           #imageDurationBtn:Landroid/widget/Button;
    :cond_281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v24, v0

    const/16 v25, -0x6f

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2f1

    .line 1354
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "PLA::Remove Dialog:::"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1356
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "PLA::Create Dialog:::"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 1358
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "PLA::Dialog:::"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1362
    :cond_2f1
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v24

    if-eqz v24, :cond_2fe

    .line 1363
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->resetCameraDialog()V

    .line 1365
    :cond_2fe
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v24

    const v25, 0x7f0b0108

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 1367
    .local v14, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v14, :cond_310

    .line 1368
    invoke-virtual {v14}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->resetVolumeBGMDialog()V

    .line 1369
    :cond_310
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getInstance()Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    move-result-object v21

    .line 1370
    .local v21, transitionControlView:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v20

    .line 1372
    .local v20, thumbnailViewGroup:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    if-eqz v20, :cond_360

    .line 1374
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b009e

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 1375
    .local v11, mImageDurationBtn:Landroid/widget/Button;
    if-eqz v11, :cond_332

    invoke-virtual {v11}, Landroid/widget/Button;->getVisibility()I

    move-result v24

    if-nez v24, :cond_332

    .line 1377
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateImageDurationButton()V

    .line 1381
    :cond_332
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b009c

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 1382
    .local v23, zoom_save:Landroid/widget/Button;
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v24

    const v25, 0x7f0b009d

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 1383
    .local v22, zoom_cancel:Landroid/widget/Button;
    if-eqz v23, :cond_354

    .line 1384
    const v24, 0x7f080020

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    .line 1385
    :cond_354
    if-eqz v22, :cond_360

    .line 1386
    const v24, 0x7f08004d

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1394
    .end local v11           #mImageDurationBtn:Landroid/widget/Button;
    .end local v22           #zoom_cancel:Landroid/widget/Button;
    .end local v23           #zoom_save:Landroid/widget/Button;
    :cond_360
    if-eqz v21, :cond_365

    .line 1395
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->resetCamcoderDialog()V

    .line 1404
    .end local v5           #lL:Landroid/widget/LinearLayout;
    .end local v6           #lSelAddMedia:Landroid/widget/LinearLayout;
    .end local v7           #lSelEdit:Landroid/widget/LinearLayout;
    .end local v8           #lSelTheme:Landroid/widget/LinearLayout;
    .end local v12           #mTimeBtn:Landroid/widget/Button;
    .end local v14           #musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    .end local v15           #noImageText:Landroid/widget/TextView;
    .end local v16           #noMusicText:Landroid/widget/TextView;
    .end local v17           #noVideoText:Landroid/widget/TextView;
    .end local v20           #thumbnailViewGroup:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    .end local v21           #transitionControlView:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
    :cond_365
    :goto_365
    return-void

    .line 1326
    .restart local v5       #lL:Landroid/widget/LinearLayout;
    .restart local v6       #lSelAddMedia:Landroid/widget/LinearLayout;
    .restart local v7       #lSelEdit:Landroid/widget/LinearLayout;
    .restart local v8       #lSelTheme:Landroid/widget/LinearLayout;
    .restart local v12       #mTimeBtn:Landroid/widget/Button;
    .restart local v15       #noImageText:Landroid/widget/TextView;
    .restart local v16       #noMusicText:Landroid/widget/TextView;
    .restart local v17       #noVideoText:Landroid/widget/TextView;
    :cond_366
    const-string v24, "save the project before finish"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1328
    :try_start_36b
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_36b .. :try_end_380} :catch_382

    goto/16 :goto_252

    .line 1329
    :catch_382
    move-exception v3

    .line 1330
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_252

    .line 1335
    .end local v3           #e:Ljava/lang/Exception;
    :cond_388
    const-string v24, "save the new project before finish"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1337
    :try_start_38d
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v24

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_38d .. :try_end_3a2} :catch_3a4

    goto/16 :goto_252

    .line 1338
    :catch_3a4
    move-exception v3

    .line 1339
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_252

    .line 1398
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #lL:Landroid/widget/LinearLayout;
    .end local v6           #lSelAddMedia:Landroid/widget/LinearLayout;
    .end local v7           #lSelEdit:Landroid/widget/LinearLayout;
    .end local v8           #lSelTheme:Landroid/widget/LinearLayout;
    .end local v12           #mTimeBtn:Landroid/widget/Button;
    .end local v15           #noImageText:Landroid/widget/TextView;
    .end local v16           #noMusicText:Landroid/widget/TextView;
    .end local v17           #noVideoText:Landroid/widget/TextView;
    :cond_3aa
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v24

    if-eqz v24, :cond_365

    .line 1400
    const-string v24, "PEA onConfigurationChanged::Refresh"

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1401
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    goto :goto_365
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This is inside PEA onCreate **********"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 614
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 615
    if-eqz p1, :cond_44

    .line 617
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 618
    .local v0, mode:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate got mode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 619
    if-nez v0, :cond_d0

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launchaddmedia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    .end local v0           #mode:I
    :cond_44
    :goto_44
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 628
    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->requestWindowFeature(I)Z

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 631
    sget-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->loadTransitions(Landroid/content/Context;)V

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->checkVideoEditIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 637
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadRawThemeFileLoad()V

    .line 638
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadPreDefinedThemes()V

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v4, v1, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(ZLandroid/content/Intent;Z)V

    .line 661
    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProjectEditActivity current project files :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_112

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 669
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 671
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->setContentView(I)V

    .line 672
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    if-eqz v1, :cond_ab

    .line 673
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->setBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V

    .line 674
    :cond_ab
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->init()V

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mContext:Landroid/content/Context;

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->registerForBroadCast()V

    .line 680
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->init()V

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 683
    const v2, 0x10e0014

    .line 682
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mLowBatteryWarningLevel:I

    .line 688
    :goto_cf
    return-void

    .line 622
    .restart local v0       #mode:I
    :cond_d0
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "launchaddmedia"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_44

    .line 647
    .end local v0           #mode:I
    :cond_db
    const-string v1, "VideoEditor launched normally"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    if-nez v1, :cond_fe

    .line 650
    const v1, 0x7f080003

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    goto :goto_cf

    .line 654
    :cond_fe
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-nez v1, :cond_6e

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    goto :goto_cf

    .line 686
    :cond_112
    const-string v1, "PEA is finishing incase of wrong VideoEditIntent, not launching setContentView"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_cf
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 37
    .parameter "id"

    .prologue
    .line 2029
    const/16 v22, 0x0

    .line 2030
    .local v22, lDialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_71e

    .line 2651
    :goto_5
    :pswitch_5
    if-eqz v22, :cond_10

    .line 2652
    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v30

    const/16 v31, 0x400

    invoke-virtual/range {v30 .. v31}, Landroid/view/Window;->addFlags(I)V

    :cond_10
    move-object/from16 v17, v22

    .line 2654
    :goto_12
    return-object v17

    .line 2033
    :pswitch_13
    const/16 v30, 0x3

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2034
    new-instance v30, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2035
    const v31, 0x7f08000f

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    .line 2036
    const v31, 0x7f060004

    new-instance v32, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$26;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v30

    .line 2054
    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$27;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 2073
    .local v15, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    .line 2075
    .local v17, exportDialog:Landroid/app/Dialog;
    goto :goto_12

    .line 2079
    .end local v15           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v17           #exportDialog:Landroid/app/Dialog;
    :pswitch_4d
    new-instance v30, Landroid/app/ProgressDialog;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2082
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2083
    .local v21, lCustomTitle:Landroid/widget/TextView;
    const/16 v30, 0x17

    const/16 v31, 0xa

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2084
    const/high16 v30, 0x41a0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const/high16 v31, 0x7f07

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getColor(I)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2086
    const v30, 0x7f080028

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080029

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x64

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2095
    new-instance v30, Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x3e8

    .line 2096
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, p0

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/ve/thread/ExportThread;-><init>(Landroid/os/Handler;ILandroid/content/Context;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2095
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/ve/thread/ExportThread;->start()V

    .line 2100
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgress:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-wide/16 v32, 0x1f4

    invoke-virtual/range {v30 .. v33}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$28;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v22, v0

    .line 2129
    goto/16 :goto_5

    .line 2131
    .end local v21           #lCustomTitle:Landroid/widget/TextView;
    :pswitch_152
    new-instance v30, Landroid/app/ProgressDialog;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080031

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f080029

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2135
    new-instance v30, Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x7a

    .line 2136
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, p0

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/ve/thread/ExportThread;-><init>(Landroid/os/Handler;ILandroid/content/Context;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2135
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/app/ve/thread/ExportThread;->start()V

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v30, v0

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$29;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$29;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v22, v0

    .line 2147
    goto/16 :goto_5

    .line 2149
    :pswitch_1e2
    const/16 v30, 0x7

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2150
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    .line 2151
    .local v19, lAlert:Landroid/app/AlertDialog;
    const v30, 0x7f080059

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080006

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$30;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2166
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$31;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2178
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$32;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2190
    move-object/from16 v22, v19

    .line 2191
    goto/16 :goto_5

    .line 2194
    .end local v19           #lAlert:Landroid/app/AlertDialog;
    :pswitch_261
    const/16 v30, 0xa

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2195
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v24

    .line 2196
    .local v24, lShareExportAlert:Landroid/app/AlertDialog;
    const v30, 0x7f08005a

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2197
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080007

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$33;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$33;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$34;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$34;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2217
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$35;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$35;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2229
    move-object/from16 v22, v24

    .line 2230
    goto/16 :goto_5

    .line 2233
    .end local v24           #lShareExportAlert:Landroid/app/AlertDialog;
    :pswitch_2e0
    const/16 v30, 0x9

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2234
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    .line 2235
    .local v20, lBasicThemeAlert:Landroid/app/AlertDialog;
    const v30, 0x7f080055

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2236
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080009

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2237
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$36;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$37;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$37;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2270
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$38;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$38;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2281
    move-object/from16 v22, v20

    .line 2282
    goto/16 :goto_5

    .line 2285
    .end local v20           #lBasicThemeAlert:Landroid/app/AlertDialog;
    :pswitch_35f
    const/16 v30, 0x8

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2286
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v25

    .line 2287
    .local v25, lThemeAlert:Landroid/app/AlertDialog;
    const v30, 0x7f080055

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2288
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080008

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2289
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$39;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2308
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$40;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$40;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2316
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$41;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$41;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2328
    move-object/from16 v22, v25

    .line 2329
    goto/16 :goto_5

    .line 2331
    .end local v25           #lThemeAlert:Landroid/app/AlertDialog;
    :pswitch_3de
    const/16 v30, 0xb

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2332
    const-string v30, "PEA Dialog Save"

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2333
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v26

    .line 2335
    .local v26, ldAlert:Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080038

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2338
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$42;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2352
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$43;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$43;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2389
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$44;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$44;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2399
    move-object/from16 v22, v26

    .line 2400
    goto/16 :goto_5

    .line 2403
    .end local v26           #ldAlert:Landroid/app/AlertDialog;
    :pswitch_469
    const/16 v30, 0xc

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2404
    const-string v30, "Inside SHARE_OPTION_DIALOG"

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2405
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "android.intent.action.SEND"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const-string v31, "video/mp4"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2414
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2415
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    .line 2417
    .local v28, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2418
    .local v5, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v30, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2420
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_54f

    .line 2421
    new-instance v29, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2422
    .local v29, resolvedIntent:Landroid/content/Intent;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2423
    .local v8, ai:Landroid/content/pm/ActivityInfo;
    new-instance v30, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2424
    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2425
    .local v6, activityName:Ljava/lang/String;
    const-string v30, "com.android.mms"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_544

    .line 2426
    const-string v30, "Messaging app"

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2427
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2428
    const/16 v30, 0x1

    sput-boolean v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->isExported:Z

    .line 2429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z

    move/from16 v30, v0

    if-eqz v30, :cond_539

    .line 2430
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_5

    .line 2432
    :cond_539
    const/16 v30, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_5

    .line 2434
    :cond_544
    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_5

    .line 2440
    .end local v6           #activityName:Ljava/lang/String;
    .end local v8           #ai:Landroid/content/pm/ActivityInfo;
    .end local v29           #resolvedIntent:Landroid/content/Intent;
    :cond_54f
    new-instance v27, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Ljava/util/List;)V

    .line 2462
    .local v27, mShareListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ResolverAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ResolverAdapter;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 2464
    .local v7, adapter:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ResolverAdapter;
    const v30, 0x7f080031

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2465
    move-object/from16 v0, v27

    invoke-virtual {v11, v7, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2467
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    .line 2469
    .local v23, lDialog2:Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08004d

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$46;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2479
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$47;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$47;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2491
    move-object/from16 v22, v23

    .line 2493
    goto/16 :goto_5

    .line 2495
    .end local v5           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #adapter:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ResolverAdapter;
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    .end local v23           #lDialog2:Landroid/app/AlertDialog;
    .end local v27           #mShareListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v28           #pm:Landroid/content/pm/PackageManager;
    :pswitch_5a5
    const/16 v30, 0xd

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2496
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v18

    .line 2497
    .local v18, factory:Landroid/view/LayoutInflater;
    const v30, 0x7f030013

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 2498
    .local v13, checkBoxLayout:Landroid/view/View;
    const v30, 0x7f0b0040

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 2499
    .local v12, cb:Landroid/widget/CheckBox;
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$48;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$48;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2509
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$49;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$49;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2519
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2520
    .local v16, eBuilder:Landroid/app/AlertDialog$Builder;
    const v30, 0x7f080076

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08006e

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2523
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000b

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$50;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08000c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$51;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$51;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2542
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2543
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$52;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$52;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2553
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v22

    .line 2554
    goto/16 :goto_5

    .line 2557
    .end local v12           #cb:Landroid/widget/CheckBox;
    .end local v13           #checkBoxLayout:Landroid/view/View;
    .end local v16           #eBuilder:Landroid/app/AlertDialog$Builder;
    .end local v18           #factory:Landroid/view/LayoutInflater;
    :pswitch_661
    const/16 v30, 0x12

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2558
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2559
    .local v10, bDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f080054

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2560
    const v30, 0x7f08009b

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2561
    const v30, 0x7f08004c

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$53;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2571
    const v30, 0x7f08004d

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$54;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2608
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 2609
    .local v9, bDialog:Landroid/app/AlertDialog;
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$55;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$55;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v17, v9

    .line 2617
    goto/16 :goto_12

    .line 2620
    .end local v9           #bDialog:Landroid/app/AlertDialog;
    .end local v10           #bDialogBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_6c4
    const/16 v30, 0x13

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 2621
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 2622
    .local v14, dialog:Landroid/app/AlertDialog;
    const/high16 v30, 0x7f08

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2623
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08001f

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2624
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f08004c

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    new-instance v31, Lcom/sec/android/app/ve/activity/ProjectEditActivity$56;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$56;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2634
    new-instance v30, Lcom/sec/android/app/ve/activity/ProjectEditActivity$57;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$57;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v17, v14

    .line 2646
    goto/16 :goto_12

    .line 2030
    nop

    :pswitch_data_71e
    .packed-switch 0x3
        :pswitch_13
        :pswitch_5
        :pswitch_4d
        :pswitch_152
        :pswitch_1e2
        :pswitch_35f
        :pswitch_2e0
        :pswitch_261
        :pswitch_3de
        :pswitch_469
        :pswitch_5a5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_661
        :pswitch_6c4
    .end packed-switch
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 21
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1720
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "This is inside onCreateDialog and id is -->"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1722
    packed-switch p1, :pswitch_data_184

    .line 2023
    :goto_17
    :pswitch_17
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v8

    :goto_1b
    return-object v8

    .line 1724
    :pswitch_1c
    const-string v15, "editintent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1725
    .local v7, lIntent:Landroid/content/Intent;
    if-nez v7, :cond_2a

    .line 1726
    const/4 v8, 0x0

    goto :goto_1b

    .line 1727
    :cond_2a
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1728
    .local v9, lVideoIntent:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080081

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1729
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080082

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1730
    const v15, 0x7f08000b

    new-instance v16, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$16;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1739
    const v15, 0x7f08000c

    new-instance v16, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$17;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1759
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 1760
    .local v8, lVideoDialog:Landroid/app/AlertDialog;
    goto :goto_1b

    .line 1762
    .end local v7           #lIntent:Landroid/content/Intent;
    .end local v8           #lVideoDialog:Landroid/app/AlertDialog;
    .end local v9           #lVideoIntent:Landroid/app/AlertDialog$Builder;
    :pswitch_74
    const-string v15, "PEA Dialog File exists"

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1763
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1764
    .local v5, fileAlert:Landroid/app/AlertDialog;
    const-string v15, "oldT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1765
    .local v11, oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const-string v15, "newT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1766
    .local v10, newT:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const-string v15, "newFileName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1767
    .local v12, projectFileName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080054

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080087

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1770
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12, v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$18;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1814
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$19;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    move-object v8, v5

    .line 1823
    goto/16 :goto_1b

    .line 1825
    .end local v5           #fileAlert:Landroid/app/AlertDialog;
    .end local v10           #newT:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v11           #oldT:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v12           #projectFileName:Ljava/lang/String;
    :pswitch_f1
    const/16 v15, 0xe

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I

    .line 1827
    :try_start_f7
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1829
    .local v6, lFactory:Landroid/view/LayoutInflater;
    const v15, 0x7f030029

    const/16 v16, 0x0

    .line 1828
    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 1831
    .local v13, project_rename:Landroid/view/View;
    const v15, 0x7f0b00b2

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1830
    check-cast v4, Landroid/widget/EditText;

    .line 1832
    .local v4, etext:Landroid/widget/EditText;
    const/4 v15, 0x5

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 1833
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/util/Utils;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1834
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v14

    .line 1836
    .local v14, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    new-instance v15, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4, v14}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$20;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/widget/EditText;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 1850
    const-wide/16 v16, 0x64

    .line 1836
    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1852
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1853
    const v16, 0x7f080084

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1854
    const v16, 0x7f08004c

    .line 1855
    new-instance v17, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$21;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/widget/EditText;Landroid/os/Bundle;)V

    .line 1854
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1946
    const v16, 0x7f08004d

    .line 1947
    new-instance v17, Lcom/sec/android/app/ve/activity/ProjectEditActivity$22;

    invoke-direct/range {v17 .. v18}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$22;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 1946
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1958
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1961
    .local v3, aDialog:Landroid/app/AlertDialog;
    new-instance v15, Lcom/sec/android/app/ve/activity/ProjectEditActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$23;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1981
    new-instance v15, Lcom/sec/android/app/ve/activity/ProjectEditActivity$24;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$24;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2008
    new-instance v15, Lcom/sec/android/app/ve/activity/ProjectEditActivity$25;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$25;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_17e} :catch_181

    move-object v8, v3

    .line 2016
    goto/16 :goto_1b

    .line 2017
    .end local v3           #aDialog:Landroid/app/AlertDialog;
    .end local v4           #etext:Landroid/widget/EditText;
    .end local v6           #lFactory:Landroid/view/LayoutInflater;
    .end local v13           #project_rename:Landroid/view/View;
    .end local v14           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :catch_181
    move-exception v15

    goto/16 :goto_17

    .line 1722
    :pswitch_data_184
    .packed-switch 0xe
        :pswitch_f1
        :pswitch_17
        :pswitch_1c
        :pswitch_74
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1028
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1030
    .local v0, mInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1031
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1469
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1471
    :try_start_4
    const-string v1, "Inside PEA onDestroy"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1472
    const/4 v1, -0x1

    sput v1, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumPickerView;->mClickedAlbumPos:I

    .line 1474
    sget-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_15

    .line 1475
    sget-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1476
    :cond_15
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mToast:Landroid/widget/Toast;

    .line 1478
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    if-eqz v1, :cond_22

    .line 1479
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1480
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2b

    .line 1481
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1483
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1484
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V

    .line 1485
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1486
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->terminate()V

    .line 1487
    invoke-static {}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->terminate()V

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getMyImageContentObs()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyImageContentObs;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1489
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->getContentObsInstance()Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils$MyContentObs;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1490
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->getMusicContentObsInstance()Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil$MusicContentObs;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6f

    .line 1494
    :goto_6c
    sput-object v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 1495
    return-void

    .line 1491
    :catch_6f
    move-exception v0

    .line 1492
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 981
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 982
    const-string v0, "This is inside PEA onDetachedFromWindow"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 984
    return-void
.end method

.method public onImageThumbCleared(Z)V
    .registers 4
    .parameter "clear"

    .prologue
    .line 3664
    if-eqz p1, :cond_f

    .line 3666
    const-string v0, "onImageThumbCleared in PEA"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3667
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3674
    :goto_e
    return-void

    .line 3671
    :cond_f
    const-string v0, "onImageThumbCompleted in PEA"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e
.end method

.method public onImageThumbFetched(Ljava/lang/String;)V
    .registers 5
    .parameter "imagePath"

    .prologue
    .line 3678
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3679
    .local v0, lMsg:Landroid/os/Message;
    const/16 v1, 0x60

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3680
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3681
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3682
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x4

    const/4 v4, 0x1

    .line 2983
    const/16 v3, 0x54

    if-ne p1, v3, :cond_a

    move v2, v4

    .line 3040
    :goto_9
    return v2

    .line 2987
    :cond_a
    const/4 v2, 0x0

    .line 2988
    .local v2, lReturn:Z
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_13
    if-gez v1, :cond_33

    .line 3000
    :cond_15
    if-eqz v2, :cond_58

    .line 3001
    const-string v3, "PEA2"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3002
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationSubMode()I

    move-result v3

    if-eq v3, v6, :cond_31

    .line 3003
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationSubMode()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_86

    :cond_31
    move v2, v4

    .line 3004
    goto :goto_9

    .line 2992
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;

    invoke-interface {v3, p1, p2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_44

    move-result v2

    .line 2993
    if-nez v2, :cond_15

    .line 2988
    :goto_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 2995
    :catch_44
    move-exception v0

    .line 2996
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "This is After getting Excepion -->"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_41

    .line 3007
    .end local v0           #e:Ljava/lang/Exception;
    :cond_58
    if-ne p1, v6, :cond_86

    .line 3009
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 3016
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 3017
    const-string v3, "clone not null"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3018
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 3019
    const-string v3, "do nothing"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3020
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 3033
    :cond_86
    :goto_86
    if-eqz v2, :cond_9a

    .line 3034
    const-string v3, "PEA3"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3035
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->init()V

    goto/16 :goto_9

    .line 3022
    :cond_92
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_86

    .line 3025
    :cond_96
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_86

    .line 3040
    :cond_9a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_9
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/high16 v3, 0x10

    .line 1004
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1006
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inside onNewIntent of PEA getIntent is and operation is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_35

    .line 1016
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1017
    .local v0, lBundle:Landroid/os/Bundle;
    const-string v1, "editintent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->validateVideoEditIntent(Landroid/content/Intent;)V

    .line 1021
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1025
    .end local v0           #lBundle:Landroid/os/Bundle;
    :cond_35
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const v6, 0x7f080077

    const/16 v5, 0xb

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1125
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerPaused()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1127
    :cond_1c
    const-string v2, "Terminating the player during export"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1130
    :cond_28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_14e

    .line 1225
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_33
    :goto_33
    return v1

    .line 1132
    :pswitch_34
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1133
    const-string v2, "PEA:previous share/export operation not finished"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 1136
    :cond_46
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1137
    invoke-static {v6, v4, v3, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_33

    .line 1140
    :cond_50
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1141
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1144
    :cond_61
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    if-eqz v2, :cond_7d

    .line 1145
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isMusicPlaying()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1147
    const-string v2, "Pausing Music in case of export"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    .line 1150
    :cond_7d
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    if-eqz v2, :cond_33

    .line 1151
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_33

    .line 1160
    :pswitch_8c
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1161
    const-string v2, "PEA:previous share/export operation not finished"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_33

    .line 1164
    :cond_9e
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1165
    invoke-static {v6, v4, v3, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_33

    .line 1169
    :cond_a8
    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z

    .line 1170
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 1171
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1174
    :cond_bb
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    if-eqz v2, :cond_d7

    .line 1175
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->isMusicPlaying()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 1177
    const-string v2, "Pausing Music in case of export"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMusicAlbumSongsPickerView;->pauseFromOutSide()V

    .line 1181
    :cond_d7
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    if-eqz v2, :cond_33

    .line 1182
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 1193
    :pswitch_e8
    :try_start_e8
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    .line 1194
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    .line 1193
    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_f9
    .catch Ljava/io/FileNotFoundException; {:try_start_e8 .. :try_end_f9} :catch_fb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f9} :catch_101

    goto/16 :goto_33

    .line 1196
    :catch_fb
    move-exception v0

    .line 1197
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_33

    .line 1198
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_101
    move-exception v0

    .line 1199
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_33

    .line 1203
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_107
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_33

    .line 1206
    :pswitch_10f
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    if-eqz v2, :cond_13f

    .line 1207
    const-string v2, "clone not null"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v2

    if-eqz v2, :cond_13a

    .line 1209
    const-string v2, "do nothing"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    goto/16 :goto_33

    .line 1212
    :cond_13a
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 1215
    :cond_13f
    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 1220
    :pswitch_144
    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->createNew:Z

    .line 1221
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto/16 :goto_33

    .line 1130
    nop

    :pswitch_data_14e
    .packed-switch 0x7f0b0139
        :pswitch_144
        :pswitch_e8
        :pswitch_107
        :pswitch_10f
        :pswitch_34
        :pswitch_8c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1441
    const-string v1, "Stopping export while pressing home key"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1442
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 1443
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/ExportThread;->stopExport()V

    .line 1446
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mIsVideoViewed:Z

    .line 1448
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1449
    const-string v1, "Player playing...so stop it."

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1450
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1453
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_56

    .line 1459
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1460
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    if-eqz v1, :cond_55

    .line 1463
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->disable()V

    .line 1464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    .line 1466
    :cond_55
    return-void

    .line 1453
    :cond_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 1455
    .local v0, callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;
    const-string v2, "notifying keyEvents callaback listeners"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1457
    invoke-interface {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;->onActivityPaused()V

    goto :goto_39
.end method

.method protected onPostResume()V
    .registers 1

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1097
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1045
    iget-boolean v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mReCreateMenu:Z

    if-eqz v4, :cond_14

    .line 1046
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1047
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1048
    .local v1, mInflater:Landroid/view/MenuInflater;
    const/high16 v4, 0x7f0a

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1049
    iput-boolean v6, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mReCreateMenu:Z

    .line 1052
    .end local v1           #mInflater:Landroid/view/MenuInflater;
    :cond_14
    const-string v4, "LEDZEP::"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1063
    const v4, 0x7f0b013e

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1064
    .local v3, shareMenuItem:Landroid/view/MenuItem;
    const v4, 0x7f0b013d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1066
    .local v0, exportMenuItem:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    if-nez v4, :cond_6a

    .line 1067
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1068
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1076
    :goto_35
    const v4, 0x7f0b013a

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1077
    .local v2, saveItem:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 1078
    const-string v4, "clone not null"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1080
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1081
    const-string v4, "save disbled"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1090
    :goto_65
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    return v4

    .line 1071
    .end local v2           #saveItem:Landroid/view/MenuItem;
    :cond_6a
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1072
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_35

    .line 1083
    .restart local v2       #saveItem:Landroid/view/MenuItem;
    :cond_71
    const-string v4, "save enabled"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1084
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_65

    .line 1087
    :cond_7a
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_65
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 918
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 919
    invoke-static {p0}, Lcom/sec/android/app/ve/util/Utils;->isMediaNotMounted(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 920
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->finish()V

    .line 976
    :goto_c
    return-void

    .line 923
    :cond_d
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 928
    :try_start_10
    const-string v2, "/mnt/sdcard/Videomaker"

    .line 929
    .local v2, filepath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    .local v3, veDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_26

    .line 932
    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_5d

    .line 938
    .end local v2           #filepath:Ljava/lang/String;
    .end local v3           #veDir:Ljava/io/File;
    :cond_26
    :goto_26
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 940
    const-string v4, "This is inside PEA onResume"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 941
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_67

    .line 945
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 947
    const-string v4, "PEA onResume::Refresh"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 948
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    .line 952
    :cond_50
    new-instance v4, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;

    invoke-direct {v4, p0, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    .line 975
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->lEventListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v4}, Landroid/view/WindowOrientationListener;->enable()V

    goto :goto_c

    .line 934
    :catch_5d
    move-exception v1

    .line 935
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "**** VideoMaker folder is created Exception"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 941
    .end local v1           #e:Ljava/lang/Exception;
    :cond_67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;

    .line 942
    .local v0, callback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;
    const-string v5, "notifying onResume callaback "

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 943
    invoke-interface {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;->onActivityResumed()V

    goto :goto_38
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 606
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 607
    const-string v0, "onSaveInstanceState"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 608
    if-eqz p1, :cond_10

    .line 609
    const-string v0, "mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 693
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 695
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 884
    const-string v1, "PEA OnStop"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 885
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPlayerCreated()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 886
    const-string v1, "Stop the Player"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 888
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->pause()V

    .line 889
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->terminate()V

    .line 893
    :cond_2f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 894
    const-string v1, "PEA:handling save"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 895
    iget-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    if-eqz v1, :cond_51

    .line 896
    const-string v1, "dontSave false"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 898
    :try_start_40
    const-string v1, "Saving on pressing home"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 899
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mCurrentTranscodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 900
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_51} :catch_52

    .line 905
    :cond_51
    :goto_51
    return-void

    .line 901
    :catch_52
    move-exception v0

    .line 902
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51
.end method

.method public onVideoThumbCleared(Z)V
    .registers 4
    .parameter "aIsClear"

    .prologue
    .line 3621
    if-eqz p1, :cond_a

    .line 3623
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3629
    :goto_9
    return-void

    .line 3627
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method public onVideoThumbFetched(Ljava/lang/String;)V
    .registers 5
    .parameter "videoPath"

    .prologue
    .line 3633
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3634
    .local v0, lMsg:Landroid/os/Message;
    const/16 v1, 0x5c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3635
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3636
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3637
    return-void
.end method

.method public printAllKeyEventsCallbacks()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3395
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordFromCamcorder()V
    .registers 3

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3177
    return-void
.end method

.method public removeActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V
    .registers 3
    .parameter "aActivityEventsCallback"

    .prologue
    .line 3433
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3434
    return-void
.end method

.method public removeAllKeyEventsCallbacks()V
    .registers 3

    .prologue
    .line 3402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside removeAllKeyEventsCallbacks and callbacks -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->printAllKeyEventsCallbacks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3403
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3405
    return-void
.end method

.method public removeKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V
    .registers 3
    .parameter "aKeyEventsCallback"

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 3391
    return-void
.end method

.method public setActivityEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;)V
    .registers 3
    .parameter "aActivityEventsCallback"

    .prologue
    .line 3425
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3426
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mActivityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3427
    :cond_d
    return-void
.end method

.method public setKeyEventsCallback(Lcom/sec/android/app/ve/activity/ProjectEditActivity$KeyEventsCallback;)V
    .registers 3
    .parameter "aKeyEventsCallback"

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3382
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mKeyEventCallbacks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3383
    :cond_d
    return-void
.end method

.method public showDrawingDurationDialog()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    .line 1549
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 1551
    iput-object v14, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    .line 1554
    :cond_8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v10, resIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v3

    .line 1556
    .local v3, drawingparams:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getmCurrentElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 1558
    .local v0, curElement:Lcom/samsung/app/video/editor/external/Element;
    if-eqz v3, :cond_21

    if-nez v0, :cond_22

    .line 1647
    :cond_21
    :goto_21
    return-void

    .line 1561
    :cond_22
    const/4 v1, -0x1

    .line 1562
    .local v1, defaultCheck:I
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v11

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1563
    .local v6, nDrawDur:I
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v11

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v12

    sub-float v4, v11, v12

    .line 1568
    .local v4, fDrawDur:F
    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Element;->getTimeToNextDrawing(Lcom/samsung/app/video/editor/external/ClipartParams;)F

    move-result v11

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v12

    sub-float v8, v11, v12

    .line 1570
    .local v8, remainingTime:F
    const/high16 v11, 0x3f80

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_5e

    .line 1572
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080026

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    const/4 v11, 0x1

    if-ne v6, v11, :cond_5e

    .line 1575
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1578
    :cond_5e
    const/high16 v11, 0x4040

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_78

    .line 1580
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080021

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1581
    const/4 v11, 0x3

    if-ne v6, v11, :cond_78

    .line 1583
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1586
    :cond_78
    const/high16 v11, 0x40a0

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_92

    .line 1588
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080022

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    const/4 v11, 0x5

    if-ne v6, v11, :cond_92

    .line 1591
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1594
    :cond_92
    const/high16 v11, 0x4120

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_ad

    .line 1596
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080023

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    const/16 v11, 0xa

    if-ne v6, v11, :cond_ad

    .line 1599
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1602
    :cond_ad
    const/high16 v11, 0x41a0

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_c8

    .line 1604
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080024

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    const/16 v11, 0x14

    if-ne v6, v11, :cond_c8

    .line 1607
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1610
    :cond_c8
    const/high16 v11, 0x41f0

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_e3

    .line 1612
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080025

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    const/16 v11, 0x1e

    if-ne v6, v11, :cond_e3

    .line 1615
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1619
    :cond_e3
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f080089

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    if-ne v1, v13, :cond_102

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v11

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v12

    cmpl-float v11, v11, v12

    if-nez v11, :cond_102

    .line 1622
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1624
    :cond_102
    new-instance v11, Ljava/lang/Integer;

    const v12, 0x7f08008a

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    if-ne v1, v13, :cond_122

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v11

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v12

    sub-float/2addr v11, v12

    cmpl-float v11, v4, v11

    if-nez v11, :cond_122

    .line 1626
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 1628
    :cond_122
    iput-object v14, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    .line 1629
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1630
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1631
    .local v7, nSize:I
    new-array v11, v7, [Ljava/lang/String;

    iput-object v11, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    .line 1632
    const/4 v5, 0x0

    .local v5, i:I
    :goto_131
    if-lt v5, v7, :cond_156

    .line 1637
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1638
    const v12, 0x7f080095

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1639
    iget-object v12, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    iget-object v13, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawDurationListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v1, v13}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1640
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1642
    .local v2, drawDurDialog:Landroid/app/AlertDialog;
    if-eqz v2, :cond_150

    .line 1643
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1645
    :cond_150
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1646
    const/4 v10, 0x0

    .line 1647
    goto/16 :goto_21

    .line 1634
    .end local v2           #drawDurDialog:Landroid/app/AlertDialog;
    :cond_156
    iget-object v12, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDrawingDurationPopupItems:[Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v5

    .line 1632
    add-int/lit8 v5, v5, 0x1

    goto :goto_131
.end method

.method public showImageDurationDialog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;II)V
    .registers 9
    .parameter "callback"
    .parameter "aDialogType"
    .parameter "setduration"

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mDialogCallback:Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;

    .line 1500
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6b

    .line 1501
    new-instance v2, Lcom/sec/android/app/ve/ui/CamcoderPopup;

    const v3, 0x7f0b004f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/ve/ui/CamcoderPopup;-><init>(Landroid/view/View;)V

    .line 1502
    .local v2, cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;
    new-instance v0, Lcom/sec/android/app/ve/ui/PopupActionItem;

    invoke-direct {v0}, Lcom/sec/android/app/ve/ui/PopupActionItem;-><init>()V

    .line 1503
    .local v0, c1:Lcom/sec/android/app/ve/ui/PopupActionItem;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/ui/PopupActionItem;->setTitle(Ljava/lang/String;)V

    .line 1504
    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$12;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/sec/android/app/ve/ui/CamcoderPopup;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/ui/PopupActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    new-instance v1, Lcom/sec/android/app/ve/ui/PopupActionItem;

    invoke-direct {v1}, Lcom/sec/android/app/ve/ui/PopupActionItem;-><init>()V

    .line 1515
    .local v1, c2:Lcom/sec/android/app/ve/ui/PopupActionItem;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/ui/PopupActionItem;->setTitle(Ljava/lang/String;)V

    .line 1516
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/ui/PopupActionItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1517
    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$13;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Lcom/sec/android/app/ve/ui/CamcoderPopup;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/ve/ui/PopupActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    new-instance v3, Lcom/sec/android/app/ve/activity/ProjectEditActivity$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$14;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1535
    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->addActionItem(Lcom/sec/android/app/ve/ui/PopupActionItem;)V

    .line 1536
    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->addActionItem(Lcom/sec/android/app/ve/ui/PopupActionItem;)V

    .line 1537
    const/16 v3, 0x15e

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->show(II)V

    .line 1542
    .end local v0           #c1:Lcom/sec/android/app/ve/ui/PopupActionItem;
    .end local v1           #c2:Lcom/sec/android/app/ve/ui/PopupActionItem;
    .end local v2           #cp:Lcom/sec/android/app/ve/ui/CamcoderPopup;
    :cond_6a
    :goto_6a
    return-void

    .line 1538
    :cond_6b
    const/4 v3, 0x1

    if-ne p2, v3, :cond_6a

    .line 1540
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchImageDurDilaog(Lcom/sec/android/app/ve/activity/ProjectEditActivity$DialogCallbackInterface;I)V

    goto :goto_6a
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 909
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 910
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->save:Z

    .line 914
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 915
    return-void
.end method

.method public timeLineFinishInflate()V
    .registers 5

    .prologue
    .line 3710
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3711
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->timeLineFinishInflate()V

    .line 3713
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/ve/activity/ProjectEditActivity$59;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$59;-><init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)V

    .line 3724
    const-wide/16 v2, 0x64

    .line 3713
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3727
    return-void
.end method
