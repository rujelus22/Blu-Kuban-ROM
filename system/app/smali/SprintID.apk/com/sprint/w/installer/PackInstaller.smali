.class public Lcom/sprint/w/installer/PackInstaller;
.super Landroid/app/Activity;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/PackInstaller$31;,
        Lcom/sprint/w/installer/PackInstaller$Bookmark;,
        Lcom/sprint/w/installer/PackInstaller$Favorites;,
        Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;,
        Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;,
        Lcom/sprint/w/installer/PackInstaller$InstallObserver;
    }
.end annotation


# static fields
.field static final ACTION_ALLOCATE_AND_BIND_ALL:Ljava/lang/String; = "com.sprint.ACTION_ALLOCATE_AND_BIND_ALL"

.field static final ACTION_ALLOCATE_APPWIDGET_ID:Ljava/lang/String; = "com.sprint.ACTION_ALLOCATE_APPWIDGET_ID"

.field public static final ACTION_FINISH:Ljava/lang/String; = "com.sprint.w.installer.PackInstaller.ACTION_FINISH"

.field public static final ACTION_INSTALL_DEFAULT_PACK:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_DEFAULT_PACK"

.field public static final ACTION_INSTALL_FROM_BG_DOWNLOAD:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_BG_DL"

.field public static final ACTION_INSTALL_FROM_BG_DOWNLOAD_DELIVERY:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_BG_DL_DELIVERY"

.field public static final ACTION_INSTALL_FROM_D2C:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_D2C"

.field public static final ACTION_INSTALL_FROM_FILE:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_FILE"

.field public static final ACTION_INSTALL_FROM_PSI:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_PSI"

.field public static final ACTION_INSTALL_FROM_URL:Ljava/lang/String; = "com.sprint.ACTION_INSTALL_FROM_URL"

.field public static final AUTO_CLICK_DELAY:I = 0x1f40

.field private static final DIALOG_ERROR_NO_SPACE:I = 0x65

.field private static final DIALOG_ERROR_RETRY:I = 0x64

.field private static final DIALOG_INSTALL_ERROR_INVALID_CONTENT:I = 0x68

.field private static final DIALOG_INSTALL_ERROR_NO_SPACE:I = 0x67

.field private static final DIALOG_INSTALL_ERROR_RETRY:I = 0x66

.field private static final DIALOG_INSTALL_ERROR_ROLLBACK:I = 0x69

.field static final DOWNLOAD_BUFFER_SIZE:I = 0xc800

.field static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field static final EXTRA_APPWIDGET_URI:Ljava/lang/String; = "appWidgetUri"

.field static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final EXTRA_PACK_NAME:Ljava/lang/String; = "packName"

.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_REINSTALL_DEFAULT_PACK:Ljava/lang/String; = "reinstall"

.field static final EXTRA_RSS_TERMS_AND_CONDITIONS:Ljava/lang/String; = "terms"

.field static final EXTRA_RSS_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_SERVICE_PACK:Ljava/lang/String; = "sp"

.field public static final EXTRA_SKIP_TC:Ljava/lang/String; = "skipTc"

.field public static final EXTRA_USERID:Ljava/lang/String; = "userid"

.field static final REQUEST_FAILED_INSTALL_MAKE_ROOM:I = 0xe2

.field static final REQUEST_MAKE_ROOM:I = 0xe0

.field static final REQUEST_SHOW_RSS_TERMS_AND_CONDITIONS:I = 0xe1

.field static final REQUEST_SHOW_TERMS_AND_CONDITIONS:I = 0xdf

.field static final RINGTONES_DIR:Ljava/lang/String; = "ringtones"

.field private static final SERVICE_PACK_FILE:Ljava/lang/String; = null

.field private static final SERVICE_PACK_FILE_INT:Ljava/lang/String; = ".p4kt3mp"

.field private static final STATE_DOWNLOAD:I = 0x2

.field private static final STATE_INSTALL:I = 0x3

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_PREPARE_DOWNLOAD:I = 0x1

.field private static final STATE_USER_EXIT:I = 0x4

.field static final WALLPAPERS_DIR:Ljava/lang/String; = "wallpapers"

.field private static log:Lcom/sprint/id/logger/Logger;


# instance fields
.field private final BUFFER:[B

.field private final lock:Ljava/lang/Object;

.field mAbortInstall:Z

.field final mAllDone:Landroid/view/View$OnClickListener;

.field mAllDoneButton:Landroid/widget/Button;

.field mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mBC:Landroid/content/BroadcastReceiver;

.field mBlockBackKey:Z

.field final mCancel:Landroid/view/View$OnClickListener;

.field mCancelButton:Landroid/widget/Button;

.field mCenter:Landroid/widget/TextView;

.field mCenterBody:Landroid/widget/TextView;

.field mCenterWelcome:Landroid/widget/TextView;

.field final mClickAllDoneButton:Ljava/lang/Runnable;

.field final mClickCancelButton:Ljava/lang/Runnable;

.field private mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

.field mDefaultIcon:Landroid/graphics/Bitmap;

.field mDeliveryId:Ljava/lang/String;

.field mDownloaderThread:Ljava/lang/Thread;

.field mFileMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFromFile:Z

.field mFromPsi:Z

.field mHandler:Landroid/os/Handler;

.field mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mIDService:Lcom/sprint/id/ISprintIDService;

.field mInputStream:Ljava/io/InputStream;

.field final mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

.field mInstallerThread:Ljava/lang/Thread;

.field mIsDefaultPack:Z

.field mKeyGuard:Landroid/app/KeyguardManager;

.field mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field mLastFile:Z

.field mLayoutManager:Lcom/sprint/w/installer/LayoutManager;

.field mName:Ljava/lang/String;

.field mPack:Lcom/sprint/w/installer/psi/ServicePack;

.field mPackFilePath:Ljava/lang/String;

.field mPackIcon:Landroid/widget/ImageView;

.field mPackInfo:Lcom/sprint/w/installer/PackInfo;

.field mPackSrcUrl:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mPercentComplete:I

.field mPowerManager:Landroid/os/PowerManager;

.field mPreferredActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:Landroid/widget/RelativeLayout;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgressText:Landroid/widget/TextView;

.field mPsiId:Ljava/lang/String;

.field mRollbackInstall:Z

.field mSkipTc:Z

.field private mState:I

.field mStatusMessage:Ljava/lang/CharSequence;

.field mTitle:Landroid/widget/TextView;

.field mTopLayout:Landroid/widget/RelativeLayout;

.field mTopSubtext:Landroid/widget/TextView;

.field mTopText:Landroid/widget/TextView;

.field final mUpdateStatus:Ljava/lang/Runnable;

.field final mUpdateStatusPercent:Ljava/lang/Runnable;

.field final mUpdateVersion:Ljava/lang/Runnable;

.field mUrl:Ljava/lang/String;

.field mUserId:Ljava/lang/String;

.field mVersion:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 106
    const-class v0, Lcom/sprint/w/installer/PackInstaller;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".p4kt3mp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackInstaller;->SERVICE_PACK_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 170
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mFileMap:Ljava/util/Hashtable;

    .line 176
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPreferredActivities:Ljava/util/ArrayList;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 203
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$1;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mBC:Landroid/content/BroadcastReceiver;

    .line 758
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$7;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$7;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mAllDone:Landroid/view/View$OnClickListener;

    .line 803
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$8;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$8;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mCancel:Landroid/view/View$OnClickListener;

    .line 881
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$11;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$11;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mClickCancelButton:Ljava/lang/Runnable;

    .line 892
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$12;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$12;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mClickAllDoneButton:Ljava/lang/Runnable;

    .line 1527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;

    .line 1574
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$InstallObserver;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$InstallObserver;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    .line 2448
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$28;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$28;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateStatus:Ljava/lang/Runnable;

    .line 2454
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$29;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$29;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateStatusPercent:Ljava/lang/Runnable;

    .line 2474
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$30;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$30;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateVersion:Ljava/lang/Runnable;

    return-void
.end method

.method private abortThreads()V
    .registers 4

    .prologue
    .line 778
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    .line 779
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mDownloaderThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mDownloaderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1f

    .line 781
    :try_start_13
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Trying to abort downloader thread..."

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_3c

    .line 790
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3b

    .line 792
    :try_start_2f
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Trying to abort installer thread..."

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_45

    .line 801
    :cond_3b
    :goto_3b
    return-void

    .line 786
    :catch_3c
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Downloader thread interrupt failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 797
    .end local v0           #e:Ljava/lang/Exception;
    :catch_45
    move-exception v0

    .line 798
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Installer thread interrupt failed"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method static synthetic access$000()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/id/ISprintIDService;)Lcom/sprint/id/ISprintIDService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->saveCurrentLayout()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->updateVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sprint/w/installer/PackInstaller;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->hasEnoughStorage(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/CharSequence;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->installWallpaper(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->installRingtone(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sprint/w/installer/PackInstaller;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sprint/w/installer/PackInstaller;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;ZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/w/installer/PackInstaller;->installApk(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/PackInstaller;)Lcom/sprint/w/installer/service/SprintIDServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sprint/w/installer/PackInstaller;Ljava/util/jar/JarFile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sprint/w/installer/PackInstaller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->downloadServicePack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->cleanUpAfterFailedInstall()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/PackInstaller;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->handleNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->downloadPsiPack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->abortThreads()V

    return-void
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/PackInstaller;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->findDownloadTarget(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/PackInstaller;)Ljava/io/FileOutputStream;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->getTargetOutputStream()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->installServicePack()V

    return-void
.end method

.method private cleanUpAfterFailedInstall()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2141
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    if-eqz v1, :cond_2c

    .line 2142
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-static {p0, v1}, Lcom/sprint/w/installer/PackInfo;->savePackDetails(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;)Landroid/net/Uri;

    .line 2143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/PackRemover;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2144
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.w.installer.EXTRA_PACK_ID"

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2145
    const-string v1, "keepUserContent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2146
    const-string v1, "com.sprint.w.installer.EXTRA_LOAD_HOME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2147
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2148
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->startActivity(Landroid/content/Intent;)V

    .line 2150
    .end local v0           #i:Landroid/content/Intent;
    :cond_2c
    return-void
.end method

.method private configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V
    .registers 10
    .parameter "f"

    .prologue
    const/4 v7, 0x1

    .line 1595
    const/4 v3, 0x0

    iput v3, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 1596
    iget-boolean v3, p0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    if-eqz v3, :cond_9

    .line 1680
    :goto_8
    return-void

    .line 1600
    :cond_9
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->disableCancelButton()V

    .line 1602
    iget-boolean v3, p0, Lcom/sprint/w/installer/PackInstaller;->mRollbackInstall:Z

    if-eqz v3, :cond_19

    .line 1604
    new-instance v3, Lcom/sprint/w/installer/PackInstaller$16;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackInstaller$16;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 1615
    :cond_19
    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;)V

    .line 1616
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->wipeHomeScreen()V

    .line 1619
    :try_start_26
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->parseLayout(Ljava/util/jar/JarFile;)Lcom/sprint/w/installer/LayoutManager$Layout;

    move-result-object v2

    .line 1620
    .local v2, l:Lcom/sprint/w/installer/LayoutManager$Layout;
    if-nez v2, :cond_78

    .line 1621
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 1622
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    const-string v5, "Err parsing layout"

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 1624
    :cond_3a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing layout, no way to proceed!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_c2
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_42} :catch_42

    .line 1648
    .end local v2           #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :catch_42
    move-exception v1

    .line 1649
    .local v1, e:Ljava/lang/Throwable;
    :try_start_43
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error configuring Home Screen"

    invoke-virtual {v3, v4, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1650
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-eqz v3, :cond_58

    .line 1651
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    const-string v5, "Err config home screen"

    const/4 v6, 0x1

    invoke-static {p0, v3, v4, v5, v6}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_c2

    .line 1657
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_58
    :goto_58
    iget-boolean v3, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    if-eqz v3, :cond_63

    .line 1658
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v4, Lcom/sprint/w/installer/PsiCode;->SUCCESS:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v3, v4}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 1660
    :cond_63
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-eqz v3, :cond_6f

    .line 1661
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    sget-object v4, Lcom/sprint/w/installer/DeliveryState;->SUCESS_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5, v7}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 1664
    :cond_6f
    new-instance v3, Lcom/sprint/w/installer/PackInstaller$17;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackInstaller$17;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 1626
    .restart local v2       #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :cond_78
    const v3, 0x7f06002b

    :try_start_7b
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;)V

    .line 1627
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mLayoutManager:Lcom/sprint/w/installer/LayoutManager;

    invoke-virtual {v3, v2}, Lcom/sprint/w/installer/LayoutManager;->apply(Lcom/sprint/w/installer/LayoutManager$Layout;)V

    .line 1628
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->parseAndAddBookmarks(Ljava/util/jar/JarFile;)V

    .line 1629
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->parsePreferredActivities(Ljava/util/jar/JarFile;)V

    .line 1630
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->setPreferredActivities()V

    .line 1631
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    invoke-static {p0, v3}, Lcom/sprint/w/installer/PackInfo;->savePackDetails(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;)Landroid/net/Uri;

    .line 1632
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/sprint/w/installer/PackInfo;->saveActivePackInfo(Landroid/content/Context;Lcom/sprint/w/installer/PackInfo;Z)V

    .line 1636
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 1637
    .local v0, bn:Lcom/sprint/w/installer/BroadcastNotifier;
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackInstalled(Lcom/sprint/w/installer/PackInfo;Z)V

    .line 1638
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackActivated(Lcom/sprint/w/installer/PackInfo;Z)V

    .line 1639
    invoke-direct {p0, v2, p1}, Lcom/sprint/w/installer/PackInstaller;->setDefaultWallpaper(Lcom/sprint/w/installer/LayoutManager$Layout;Ljava/util/jar/JarFile;)V

    .line 1640
    iget-boolean v3, p0, Lcom/sprint/w/installer/PackInstaller;->mFromFile:Z

    if-nez v3, :cond_c4

    .line 1641
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Removing pack file"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_c1
    .catchall {:try_start_7b .. :try_end_c1} :catchall_c2
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_c1} :catch_42

    goto :goto_58

    .line 1653
    .end local v0           #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    .end local v2           #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :catchall_c2
    move-exception v3

    throw v3

    .line 1645
    .restart local v0       #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    .restart local v2       #l:Lcom/sprint/w/installer/LayoutManager$Layout;
    :cond_c4
    :try_start_c4
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keeping pack file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->getTargetFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_c4 .. :try_end_e4} :catchall_c2
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_e4} :catch_42

    goto/16 :goto_58
.end method

.method private disableCancelButton()V
    .registers 5

    .prologue
    .line 1577
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$15;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$15;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1586
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    monitor-enter v1

    .line 1588
    :try_start_b
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_12} :catch_17

    .line 1591
    :goto_12
    :try_start_12
    monitor-exit v1

    .line 1592
    return-void

    .line 1591
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v0

    .line 1589
    :catch_17
    move-exception v0

    goto :goto_12
.end method

.method private downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 6
    .parameter "sp"

    .prologue
    const/4 v3, 0x1

    .line 551
    iput v3, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.DOWNLOAD_FROM_PSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 554
    const-string v1, "extra.PSI_PRODUCT_ID"

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "extra.PACK_NAME"

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v1, "extra.IS_DEFAULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Starting service to download default pack"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 559
    return-void
.end method

.method private downloadPsiPack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 835
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f060053

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 836
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 839
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 841
    const v3, 0x7f06009d

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, body:Ljava/lang/String;
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v2

    .line 844
    .local v2, installedInfo:Lcom/sprint/w/installer/PackInfo;
    if-nez v2, :cond_a8

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br/><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f06009f

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_4e
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 853
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterWelcome:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/sprint/w/installer/PackInstaller$10;

    invoke-direct {v4, p0, v2}, Lcom/sprint/w/installer/PackInstaller$10;-><init>(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/PackInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    const v4, 0x7f0600a0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 869
    if-eqz v2, :cond_87

    .line 870
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sprint/w/installer/PackInstaller;->mClickCancelButton:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    :cond_87
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sprint.action.DOWNLOAD_FROM_PSI"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v1, i:Landroid/content/Intent;
    const-class v3, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 875
    const-string v3, "extra.PSI_PRODUCT_ID"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v3, "extra.PACK_NAME"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v3, "extra.IS_DEFAULT"

    iget-boolean v4, p0, Lcom/sprint/w/installer/PackInstaller;->mIsDefaultPack:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 878
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 879
    return-void

    .line 847
    .end local v1           #i:Landroid/content/Intent;
    :cond_a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br/><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f06009e

    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e
.end method

.method private downloadServicePack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "url"
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 904
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    .line 905
    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    .line 907
    if-nez p2, :cond_11

    .line 908
    const v0, 0x7f060052

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 911
    :cond_11
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 912
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTopLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    if-eqz v0, :cond_68

    .line 918
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 919
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTopSubtext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060048

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :cond_5d
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    :cond_68
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 924
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 927
    const/4 v0, 0x2

    iput v0, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 928
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$13;

    const-string v1, "SpDownloader"

    invoke-direct {v0, p0, v1, p1}, Lcom/sprint/w/installer/PackInstaller$13;-><init>(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mDownloaderThread:Ljava/lang/Thread;

    .line 995
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mDownloaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 996
    return-void
.end method

.method private extractRingtone(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .registers 12
    .parameter "f"
    .parameter "entry"

    .prologue
    .line 1299
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1301
    .local v2, name:Ljava/lang/String;
    :try_start_4
    sget-object v6, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracting ringtone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1303
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1304
    .local v1, is:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v6, v6, Lcom/sprint/w/installer/PackInfo;->namespacePrefix:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/sprint/w/installer/util/Util;->ringtonePathToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1305
    .local v5, target:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/sprint/w/installer/PackInstaller;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1307
    .local v3, os:Ljava/io/OutputStream;
    :goto_32
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, rc:I
    if-eq v6, v4, :cond_4b

    .line 1308
    iget-object v6, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_41} :catch_55

    goto :goto_32

    .line 1313
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #rc:I
    .end local v5           #target:Ljava/lang/String;
    :catch_42
    move-exception v0

    .line 1314
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error extracting ringtone"

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1318
    .end local v0           #e:Ljava/io/IOException;
    :goto_4a
    return-void

    .line 1310
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #rc:I
    .restart local v5       #target:Ljava/lang/String;
    :cond_4b
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1311
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1312
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_54} :catch_55

    goto :goto_4a

    .line 1315
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #rc:I
    .end local v5           #target:Ljava/lang/String;
    :catch_55
    move-exception v0

    .line 1316
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v6, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error while extracting ringtone"

    invoke-virtual {v6, v7, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a
.end method

.method private fillPackDetails(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 4
    .parameter "values"

    .prologue
    .line 1974
    const-string v0, "packId"

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v0, "packName"

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    const-string v0, "packVersion"

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget v1, v1, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1977
    return-object p1
.end method

.method private findDownloadTarget(I)Z
    .registers 10
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1009
    sget-object v6, Lcom/sprint/w/installer/PackInstaller;->SERVICE_PACK_FILE:Ljava/lang/String;

    iput-object v6, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    .line 1010
    if-lez p1, :cond_59

    .line 1011
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/sprint/w/installer/PackInstaller;->SERVICE_PACK_FILE:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1012
    new-instance v6, Ljava/io/File;

    const-string v7, ".p4kt3mp"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1013
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v3, sfs:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    mul-int/2addr v6, v7

    if-le v6, p1, :cond_5a

    move v2, v4

    .line 1015
    .local v2, sdGood:Z
    :goto_35
    new-instance v3, Landroid/os/StatFs;

    .end local v3           #sfs:Landroid/os/StatFs;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1016
    .restart local v3       #sfs:Landroid/os/StatFs;
    div-int/lit8 v6, p1, 0x2

    add-int v1, p1, v6

    .line 1018
    .local v1, neededInternal:I
    if-nez v2, :cond_49

    .line 1019
    add-int/2addr v1, p1

    .line 1022
    :cond_49
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    mul-int/2addr v6, v7

    if-le v6, v1, :cond_5c

    move v0, v4

    .line 1023
    .local v0, internalGood:Z
    :goto_55
    if-eqz v0, :cond_63

    .line 1024
    if-eqz v2, :cond_5e

    .line 1033
    .end local v0           #internalGood:Z
    .end local v1           #neededInternal:I
    .end local v2           #sdGood:Z
    .end local v3           #sfs:Landroid/os/StatFs;
    :cond_59
    :goto_59
    return v4

    .restart local v3       #sfs:Landroid/os/StatFs;
    :cond_5a
    move v2, v5

    .line 1014
    goto :goto_35

    .restart local v1       #neededInternal:I
    .restart local v2       #sdGood:Z
    :cond_5c
    move v0, v5

    .line 1022
    goto :goto_55

    .line 1027
    .restart local v0       #internalGood:Z
    :cond_5e
    const-string v5, ".p4kt3mp"

    iput-object v5, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    goto :goto_59

    :cond_63
    move v4, v5

    .line 1031
    goto :goto_59
.end method

.method private getTargetFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v0, f:Ljava/io/File;
    :goto_17
    return-object v0

    .line 1004
    .end local v0           #f:Ljava/io/File;
    :cond_18
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_17
.end method

.method private getTargetOutputStream()Ljava/io/FileOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 999
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, fos:Ljava/io/FileOutputStream;
    :goto_17
    return-object v0

    .line 999
    .end local v0           #fos:Ljava/io/FileOutputStream;
    :cond_18
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    goto :goto_17
.end method

.method private handleNewIntent(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 305
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 306
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->invalidate()V

    .line 308
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, action:Ljava/lang/String;
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_91

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    .line 312
    const-string v9, "packName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    .line 313
    const-string v9, "userid"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mUserId:Ljava/lang/String;

    .line 314
    const-string v9, "password"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPassword:Ljava/lang/String;

    .line 317
    const-string v9, "extra.IS_DEFAULT"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sprint/w/installer/PackInstaller;->mIsDefaultPack:Z

    .line 319
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 321
    .local v8, uri:Landroid/net/Uri;
    const-string v9, "psi"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 324
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 325
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, psiId:Ljava/lang/String;
    new-instance v7, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v7}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 327
    .local v7, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-virtual {v7, v6}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 328
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 329
    iget-boolean v9, p0, Lcom/sprint/w/installer/PackInstaller;->mSkipTc:Z

    if-eqz v9, :cond_6b

    .line 330
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    .line 418
    .end local v6           #psiId:Ljava/lang/String;
    .end local v7           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .end local v8           #uri:Landroid/net/Uri;
    :goto_6a
    return-void

    .line 332
    .restart local v6       #psiId:Ljava/lang/String;
    .restart local v7       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    .restart local v8       #uri:Landroid/net/Uri;
    :cond_6b
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->showTermsAndConditions(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto :goto_6a

    .line 335
    .end local v6           #psiId:Ljava/lang/String;
    .end local v7           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_6f
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "terms"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, mRssTc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "title"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, mTitle:Ljava/lang/String;
    if-eqz v2, :cond_89

    .line 338
    invoke-direct {p0, v2, v3}, Lcom/sprint/w/installer/PackInstaller;->showRssTermsAndConditions(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 340
    :cond_89
    const/16 v9, 0xe1

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/sprint/w/installer/PackInstaller;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6a

    .line 343
    .end local v2           #mRssTc:Ljava/lang/String;
    .end local v3           #mTitle:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_91
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_FILE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 344
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromFile:Z

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    .line 346
    const-string v9, "packName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    const v10, 0x7f060024

    invoke-virtual {p0, v10}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 353
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->installServicePack()V

    goto :goto_6a

    .line 355
    .end local v4           #name:Ljava/lang/String;
    :cond_d3
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_PSI"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 356
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 357
    const-string v9, "sp"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sprint/w/installer/psi/ServicePack;

    .line 358
    .restart local v7       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    iget-boolean v9, p0, Lcom/sprint/w/installer/PackInstaller;->mSkipTc:Z

    if-eqz v9, :cond_ee

    .line 359
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto/16 :goto_6a

    .line 361
    :cond_ee
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->showTermsAndConditions(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto/16 :goto_6a

    .line 363
    .end local v7           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_f3
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_D2C"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10a

    .line 364
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 365
    const-string v9, "sp"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/sprint/w/installer/psi/ServicePack;

    .line 366
    .restart local v7       #sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->preparePsiD2cDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto/16 :goto_6a

    .line 367
    .end local v7           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_10a
    const-string v9, "com.sprint.ACTION_INSTALL_DEFAULT_PACK"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_147

    .line 368
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 369
    const-string v9, "sp"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/sprint/w/installer/psi/ServicePack;

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 370
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9, v11}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 372
    const-string v9, "reinstall"

    invoke-virtual {p1, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_139

    .line 373
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Preparing for pack reinstall"

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->prepareDefaultPackReInstall(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto/16 :goto_6a

    .line 376
    :cond_139
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "preparing for default pack download."

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 377
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->prepareDefaultPackDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto/16 :goto_6a

    .line 380
    :cond_147
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_BG_DL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1fc

    .line 381
    iput-boolean v11, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 382
    const-string v9, "extra.PACK"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/sprint/w/installer/psi/ServicePack;

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 383
    const-string v9, "extra.FILE_PATH"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, filePath:Ljava/lang/String;
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    if-nez v9, :cond_1d6

    .line 385
    new-instance v9, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v9}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 386
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 388
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "notify"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setNotifyUrl(Ljava/lang/String;)V

    .line 389
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "isDefault"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setDefaultPack(Z)V

    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "path"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v9, "true"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "fromUrl"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d6

    .line 393
    iput-boolean v12, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 394
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "url"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPackSrcUrl:Ljava/lang/String;

    .line 398
    :cond_1d6
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 399
    .local v5, nm:Landroid/app/NotificationManager;
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 401
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v10}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10, v1}, Lcom/sprint/w/installer/PackInstaller;->installFromBgDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 402
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #nm:Landroid/app/NotificationManager;
    :cond_1fc
    const-string v9, "com.sprint.ACTION_INSTALL_FROM_BG_DL_DELIVERY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_263

    .line 403
    iput-boolean v12, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    .line 404
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "path"

    invoke-virtual {v9, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1       #filePath:Ljava/lang/String;
    new-instance v9, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v9}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 406
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "id"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 407
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sprint/w/installer/psi/ServicePack;->setTitle(Ljava/lang/String;)V

    .line 409
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 410
    .restart local v5       #nm:Landroid/app/NotificationManager;
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sprint/w/installer/DownloadService;->getNotificationId(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 412
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    .line 413
    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v9}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v10}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10, v1}, Lcom/sprint/w/installer/PackInstaller;->installFromBgDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 415
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #nm:Landroid/app/NotificationManager;
    :cond_263
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Unsupported action"

    invoke-virtual {v9, v10}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto/16 :goto_6a
.end method

.method private hasEnoughStorage(J)Z
    .registers 11
    .parameter "len"

    .prologue
    .line 1284
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1285
    .local v0, path:Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1286
    .local v1, sfs:Landroid/os/StatFs;
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackInstaller.hasEnoughStorage(): available internal storage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    invoke-static {p0, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_45

    const/4 v2, 0x1

    :goto_44
    return v2

    :cond_45
    const/4 v2, 0x0

    goto :goto_44
.end method

.method private initD2CForReInstall()V
    .registers 8

    .prologue
    .line 576
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Updating D2C view for Default pack re-install"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 577
    const v3, 0x7f0c0069

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 578
    .local v2, title:Landroid/widget/TextView;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    const v3, 0x7f0c006a

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 580
    .local v1, bodyText:Landroid/widget/TextView;
    const v3, 0x7f0600fc

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v6}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    return-void
.end method

.method private initD2CView()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 585
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "-------- Entering initD2CView() --------"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 586
    const v8, 0x7f030034

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->setContentView(I)V

    .line 587
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 589
    const v8, 0x7f0c0032

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 590
    .local v5, packIcon:Landroid/widget/ImageView;
    const v8, 0x7f0c0091

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 591
    .local v6, packTitle:Landroid/widget/TextView;
    const v8, 0x7f0c0069

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 592
    .local v7, title:Landroid/widget/TextView;
    const v8, 0x7f0c006a

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 593
    .local v1, bodyText:Landroid/widget/TextView;
    const v8, 0x7f0c006b

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 595
    .local v2, button:Landroid/widget/Button;
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v8}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v8}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v5, v8, v9}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 598
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0600de

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v11}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    const v8, 0x7f06009d

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v10}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, body:Ljava/lang/String;
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    .line 603
    .local v4, installedInfo:Lcom/sprint/w/installer/PackInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<br/><br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f06009e

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, extra:Ljava/lang/String;
    if-nez v4, :cond_e0

    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<br/><br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f06009f

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    :cond_e0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    new-instance v8, Lcom/sprint/w/installer/PackInstaller$4;

    invoke-direct {v8, p0, v4}, Lcom/sprint/w/installer/PackInstaller$4;-><init>(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/PackInfo;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    if-eqz v4, :cond_12c

    .line 624
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installedInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 625
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/sprint/w/installer/PackInstaller$5;

    invoke-direct {v9, p0, v2}, Lcom/sprint/w/installer/PackInstaller$5;-><init>(Lcom/sprint/w/installer/PackInstaller;Landroid/widget/Button;)V

    const-wide/16 v10, 0x1f40

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 638
    :cond_12c
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "-------- Exiting initD2CView() --------"

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method private initHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 4

    .prologue
    const/16 v2, 0x7530

    .line 505
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 506
    .local v0, c:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 507
    .local v1, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 508
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 509
    return-object v0
.end method

.method private installApk(Ljava/lang/String;ZI)Z
    .registers 16
    .parameter "filePath"
    .parameter "force"
    .parameter "percentComplete"

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1487
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1488
    .local v3, infoNew:Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_f0

    const/4 v2, 0x2

    .line 1489
    .local v2, flags:I
    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1490
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1491
    .local v7, uri:Landroid/net/Uri;
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Installing package: pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1494
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1495
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f060023

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;I)V

    .line 1501
    :try_start_86
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1502
    .local v4, infoOld:Landroid/content/pm/PackageInfo;
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " new versionCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - installed versionCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1504
    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_c3} :catch_129
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_c3} :catch_14c

    if-ge v8, v9, :cond_f3

    .line 1505
    or-int/lit8 v2, v2, 0x2

    .line 1515
    .end local v4           #infoOld:Landroid/content/pm/PackageInfo;
    :goto_c7
    :try_start_c7
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 1516
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mFileMap:Ljava/util/Hashtable;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/sprint/w/installer/PackInstaller;->registerApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ee} :catch_14c

    .line 1524
    const/4 v8, 0x1

    :goto_ef
    return v8

    .line 1488
    .end local v2           #flags:I
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_f0
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1507
    .restart local v2       #flags:I
    .restart local v4       #infoOld:Landroid/content/pm/PackageInfo;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_f3
    :try_start_f3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f060025

    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lcom/sprint/w/installer/PackInstaller;->updateStatus(Ljava/lang/CharSequence;I)V
    :try_end_128
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f3 .. :try_end_128} :catch_129
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_128} :catch_14c

    goto :goto_c7

    .line 1510
    .end local v4           #infoOld:Landroid/content/pm/PackageInfo;
    :catch_129
    move-exception v1

    .line 1512
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_12a
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - not yet installed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_14a} :catch_14c

    goto/16 :goto_c7

    .line 1518
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_14c
    move-exception v0

    .line 1519
    .local v0, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Failed to invoke installPackage"

    invoke-virtual {v8, v9, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1520
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 1521
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1522
    const/4 v8, 0x0

    goto/16 :goto_ef
.end method

.method private installFromBgDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "name"
    .parameter "path"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1056
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sprint/w/installer/DownloadService;->clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V

    .line 1057
    iput-object p3, p0, Lcom/sprint/w/installer/PackInstaller;->mPackFilePath:Ljava/lang/String;

    .line 1058
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    .line 1059
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-nez v1, :cond_25

    .line 1061
    new-instance v0, Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {v0}, Lcom/sprint/w/installer/psi/ServicePack;-><init>()V

    .line 1062
    .local v0, sp:Lcom/sprint/w/installer/psi/ServicePack;
    invoke-virtual {v0, p1}, Lcom/sprint/w/installer/psi/ServicePack;->setId(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1065
    .end local v0           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_25
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1069
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1073
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1074
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterWelcome:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->isDefaultPack()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1078
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1081
    :cond_68
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->installServicePack()V

    .line 1082
    return-void
.end method

.method private installRingtone(Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;)V
    .registers 15
    .parameter "rt"

    .prologue
    .line 1355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ringtones_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v9, v9, Lcom/sprint/w/installer/PackInfo;->namespacePrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/sprint/w/installer/util/Util;->ringtonePathToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1356
    .local v4, path:Ljava/lang/String;
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->mimeType:Ljava/lang/String;

    if-eqz v8, :cond_56

    iget-object v2, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->mimeType:Ljava/lang/String;

    .line 1357
    .local v2, mimeType:Ljava/lang/String;
    :goto_23
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->title:Ljava/lang/String;

    if-eqz v8, :cond_59

    iget-object v6, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->title:Ljava/lang/String;

    .line 1359
    .local v6, title:Ljava/lang/String;
    :goto_29
    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/PackInstaller;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1360
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5c

    .line 1361
    :cond_3d
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping invalid ringtone file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    .line 1408
    :goto_55
    return-void

    .line 1356
    .end local v1           #file:Ljava/io/File;
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_56
    const-string v2, "audio/mp3"

    goto :goto_23

    .line 1357
    .restart local v2       #mimeType:Ljava/lang/String;
    :cond_59
    const-string v6, "AppPack Untitled Ringtone"

    goto :goto_29

    .line 1364
    .restart local v1       #file:Ljava/io/File;
    .restart local v6       #title:Ljava/lang/String;
    :cond_5c
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1365
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const-string v8, "title"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v8, "mime_type"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isRingtone:Z

    if-eqz v8, :cond_82

    .line 1369
    const-string v8, "is_ringtone"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1371
    :cond_82
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isAlarm:Z

    if-eqz v8, :cond_90

    .line 1372
    const-string v8, "is_alarm"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1374
    :cond_90
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isNotification:Z

    if-eqz v8, :cond_9e

    .line 1375
    const-string v8, "is_notification"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1377
    :cond_9e
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inserting values: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1382
    .local v0, cpUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "_data=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v0, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1387
    .local v3, n:I
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Removed %d old records for %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 1392
    .local v5, ringtoneUri:Landroid/net/Uri;
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultRingtone:Z

    if-eqz v8, :cond_11d

    .line 1393
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting default ringtone: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1395
    const/4 v8, 0x1

    invoke-static {p0, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1397
    :cond_11d
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultAlarm:Z

    if-eqz v8, :cond_13a

    .line 1398
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Setting default alarm: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1400
    const/4 v8, 0x4

    invoke-static {p0, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1402
    :cond_13a
    iget-boolean v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultNotification:Z

    if-eqz v8, :cond_157

    .line 1403
    sget-object v8, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Setting default notification: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1405
    const/4 v8, 0x2

    invoke-static {p0, v8, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1407
    :cond_157
    iget-object v8, p1, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/sprint/w/installer/PackInstaller;->registerRingtone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55
.end method

.method private installRingtone(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 5
    .parameter "f"
    .parameter "entry"

    .prologue
    .line 1291
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ringtones/ringtones.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->parseRingtones(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    .line 1296
    :goto_f
    return-void

    .line 1294
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/sprint/w/installer/PackInstaller;->extractRingtone(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    goto :goto_f
.end method

.method private installServicePack()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1085
    iput-boolean v1, p0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    .line 1086
    iput-boolean v1, p0, Lcom/sprint/w/installer/PackInstaller;->mRollbackInstall:Z

    .line 1087
    const/4 v0, 0x3

    iput v0, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 1088
    iput-boolean v2, p0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    .line 1089
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1091
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1092
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$14;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$14;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallerThread:Ljava/lang/Thread;

    .line 1280
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mInstallerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1281
    return-void
.end method

.method private installWallpaper(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 18
    .parameter "f"
    .parameter "entry"

    .prologue
    .line 1441
    invoke-virtual/range {p2 .. p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, src:Ljava/lang/String;
    const-string v12, ".jpg"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    const-string v12, ".png"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 1483
    :cond_14
    :goto_14
    return-void

    .line 1445
    :cond_15
    sget-object v12, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extracting wallpaper "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1447
    new-instance v11, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "wallpapers"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1448
    .local v11, wpDir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5d

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_5d

    .line 1449
    sget-object v12, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error creating directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 1453
    :cond_5d
    new-instance v10, Ljava/io/File;

    const-string v12, "thumbs"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1454
    .local v10, thumbDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_89

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v12

    if-nez v12, :cond_89

    .line 1455
    sget-object v12, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error creating directory: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_14

    .line 1458
    :cond_89
    move-object v5, v11

    .line 1459
    .local v5, parentDir:Ljava/io/File;
    const/4 v3, 0x0

    .line 1460
    .local v3, isThumb:Z
    const-string v12, "/thumbs/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_95

    .line 1461
    move-object v5, v10

    .line 1462
    const/4 v3, 0x1

    .line 1464
    :cond_95
    const/16 v12, 0x2f

    invoke-virtual {v8, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 1465
    .local v6, pos:I
    const/4 v12, -0x1

    if-le v6, v12, :cond_14

    .line 1466
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v13, v13, Lcom/sprint/w/installer/PackInfo;->namespacePrefix:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/sprint/w/installer/util/Util;->fileNameToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, dest:Ljava/lang/String;
    :try_start_ac
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1469
    .local v9, target:Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1470
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1472
    .local v4, os:Ljava/io/OutputStream;
    :goto_c4
    const/4 v12, -0x1

    iget-object v13, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    invoke-virtual {v2, v13}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, r:I
    if-eq v12, v7, :cond_ef

    .line 1473
    iget-object v12, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_d3} :catch_d4

    goto :goto_c4

    .line 1479
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v7           #r:I
    .end local v9           #target:Ljava/io/File;
    :catch_d4
    move-exception v1

    .line 1480
    .local v1, e:Ljava/io/IOException;
    sget-object v12, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error extracting wallpaper "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1475
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v7       #r:I
    .restart local v9       #target:Ljava/io/File;
    :cond_ef
    :try_start_ef
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1476
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1477
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1478
    if-eqz v3, :cond_105

    const/4 v12, 0x3

    :goto_fb
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {p0, v12, v13, v14}, Lcom/sprint/w/installer/PackInstaller;->registerFile(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_103} :catch_d4

    goto/16 :goto_14

    :cond_105
    const/4 v12, 0x2

    goto :goto_fb
.end method

.method private notifyUserCanceled()V
    .registers 3

    .prologue
    .line 816
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getNotifyUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 817
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$9;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackInstaller$9;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    .line 826
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 828
    .end local v0           #t:Ljava/lang/Thread;
    :cond_14
    return-void
.end method

.method private parseAndAddBookmarks(Ljava/util/jar/JarFile;)V
    .registers 30
    .parameter "f"

    .prologue
    .line 2380
    const-string v2, "bookmarks.xml"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v16

    .line 2381
    .local v16, entry:Ljava/util/jar/JarEntry;
    if-eqz v16, :cond_12c

    .line 2383
    :try_start_a
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 2384
    .local v12, db:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 2385
    .local v13, doc:Lorg/w3c/dom/Document;
    const-string v2, "bookmark"

    invoke-interface {v13, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 2386
    .local v20, nl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 2387
    .local v8, N:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    .local v10, bmks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInstaller$Bookmark;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2f
    move/from16 v0, v17

    if-ge v0, v8, :cond_68

    .line 2389
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    .line 2390
    .local v15, elem:Lorg/w3c/dom/Element;
    const-string v2, "title"

    invoke-interface {v15, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2391
    .local v23, p:Ljava/lang/String;
    const-string v2, "url"

    invoke-interface {v15, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2392
    .local v24, u:Ljava/lang/String;
    if-eqz v23, :cond_65

    if-eqz v24, :cond_65

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_65

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_65

    .line 2393
    new-instance v2, Lcom/sprint/w/installer/PackInstaller$Bookmark;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v2, v0, v1}, Lcom/sprint/w/installer/PackInstaller$Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    :cond_65
    add-int/lit8 v17, v17, 0x1

    goto :goto_2f

    .line 2397
    .end local v15           #elem:Lorg/w3c/dom/Element;
    .end local v23           #p:Ljava/lang/String;
    .end local v24           #u:Ljava/lang/String;
    :cond_68
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "url"

    aput-object v5, v4, v2

    .line 2400
    .local v4, projection:[Ljava/lang/String;
    const-string v2, "content://browser/bookmarks"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2401
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "bookmark=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v27, "1"

    aput-object v27, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2404
    .local v11, cur:Landroid/database/Cursor;
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 2405
    .local v25, urlSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "url"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2406
    .local v19, index:I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2408
    :cond_9a
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2409
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9a

    .line 2412
    :cond_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 2413
    .local v21, now:J
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_b3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sprint/w/installer/PackInstaller$Bookmark;

    .line 2414
    .local v9, b:Lcom/sprint/w/installer/PackInstaller$Bookmark;
    iget-object v2, v9, Lcom/sprint/w/installer/PackInstaller$Bookmark;->url:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 2415
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 2416
    .local v26, values:Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v5, v9, Lcom/sprint/w/installer/PackInstaller$Bookmark;->title:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    const-string v2, "url"

    iget-object v5, v9, Lcom/sprint/w/installer/PackInstaller$Bookmark;->url:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v2, "bookmark"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2419
    const-string v2, "created"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2420
    const-string v2, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2421
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2422
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding bookmark: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_123} :catch_124

    goto :goto_b3

    .line 2428
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v8           #N:I
    .end local v9           #b:Lcom/sprint/w/installer/PackInstaller$Bookmark;
    .end local v10           #bmks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInstaller$Bookmark;>;"
    .end local v11           #cur:Landroid/database/Cursor;
    .end local v12           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v13           #doc:Lorg/w3c/dom/Document;
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #index:I
    .end local v20           #nl:Lorg/w3c/dom/NodeList;
    .end local v21           #now:J
    .end local v25           #urlSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26           #values:Landroid/content/ContentValues;
    :catch_124
    move-exception v14

    .line 2429
    .local v14, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v5, "Error processing bookmarks"

    invoke-virtual {v2, v5, v14}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2432
    .end local v14           #e:Ljava/lang/Exception;
    :cond_12c
    return-void

    .line 2425
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v8       #N:I
    .restart local v9       #b:Lcom/sprint/w/installer/PackInstaller$Bookmark;
    .restart local v10       #bmks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInstaller$Bookmark;>;"
    .restart local v11       #cur:Landroid/database/Cursor;
    .restart local v12       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v13       #doc:Lorg/w3c/dom/Document;
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v19       #index:I
    .restart local v20       #nl:Lorg/w3c/dom/NodeList;
    .restart local v21       #now:J
    .restart local v25       #urlSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_12d
    :try_start_12d
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bookmark (exists): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_145} :catch_124

    goto/16 :goto_b3
.end method

.method private static parseIntentFilter(Lorg/w3c/dom/Element;)Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    .registers 27
    .parameter "elem"

    .prologue
    .line 2194
    new-instance v18, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;

    invoke-direct/range {v18 .. v18}, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;-><init>()V

    .line 2195
    .local v18, pif:Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    .line 2197
    const-string v23, "action"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2198
    .local v13, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2199
    .local v3, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1f
    if-ge v11, v3, :cond_3f

    .line 2200
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 2201
    .local v4, a:Lorg/w3c/dom/Element;
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2202
    .local v5, action:Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 2203
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2199
    :cond_3c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 2207
    .end local v4           #a:Lorg/w3c/dom/Element;
    .end local v5           #action:Ljava/lang/String;
    :cond_3f
    const-string v23, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2208
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2209
    const/4 v11, 0x0

    :goto_4e
    if-ge v11, v3, :cond_6e

    .line 2210
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 2211
    .local v6, c:Lorg/w3c/dom/Element;
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2212
    .local v7, cat:Ljava/lang/String;
    if-eqz v7, :cond_6b

    .line 2213
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2209
    :cond_6b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    .line 2223
    .end local v6           #c:Lorg/w3c/dom/Element;
    .end local v7           #cat:Ljava/lang/String;
    :cond_6e
    const-string v23, "data"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2224
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2225
    const/4 v11, 0x0

    :goto_7d
    if-ge v11, v3, :cond_170

    .line 2226
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 2227
    .local v8, d:Lorg/w3c/dom/Element;
    const-string v23, "mimeType"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2228
    .local v12, mimeType:Ljava/lang/String;
    if-eqz v12, :cond_a0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_a0

    .line 2230
    :try_start_95
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_a0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_95 .. :try_end_a0} :catch_153

    .line 2235
    :cond_a0
    :goto_a0
    const-string v23, "host"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2236
    .local v10, host:Ljava/lang/String;
    const-string v23, "port"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2237
    .local v14, p:Ljava/lang/String;
    if-eqz v10, :cond_d1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_d1

    .line 2238
    const-string v19, "0"

    .line 2239
    .local v19, port:Ljava/lang/String;
    if-eqz v14, :cond_c4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_c4

    .line 2240
    move-object/from16 v19, v14

    .line 2242
    :cond_c4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    .end local v19           #port:Ljava/lang/String;
    :cond_d1
    const-string v23, "path"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2245
    .local v15, path:Ljava/lang/String;
    if-eqz v15, :cond_f0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_f0

    .line 2246
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2248
    :cond_f0
    const-string v23, "pathPrefix"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2249
    .local v17, pathPrefix:Ljava/lang/String;
    if-eqz v17, :cond_111

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_111

    .line 2250
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2252
    :cond_111
    const-string v23, "pathPattern"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2253
    .local v16, pathPattern:Ljava/lang/String;
    if-eqz v16, :cond_132

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_132

    .line 2254
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 2256
    :cond_132
    const-string v23, "scheme"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2257
    .local v20, scheme:Ljava/lang/String;
    if-eqz v20, :cond_14f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_14f

    .line 2258
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2225
    :cond_14f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7d

    .line 2231
    .end local v10           #host:Ljava/lang/String;
    .end local v14           #p:Ljava/lang/String;
    .end local v15           #path:Ljava/lang/String;
    .end local v16           #pathPattern:Ljava/lang/String;
    .end local v17           #pathPrefix:Ljava/lang/String;
    .end local v20           #scheme:Ljava/lang/String;
    :catch_153
    move-exception v9

    .line 2232
    .local v9, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    sget-object v23, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error adding mimeType: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 2262
    .end local v8           #d:Lorg/w3c/dom/Element;
    .end local v9           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_170
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->sampleIntents:Ljava/util/ArrayList;

    .line 2263
    const-string v23, "sample-intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2264
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2265
    const/4 v11, 0x0

    :goto_18a
    if-ge v11, v3, :cond_1dc

    .line 2266
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 2267
    .local v21, si:Lorg/w3c/dom/Element;
    const-string v23, "uri"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2268
    .local v22, uri:Ljava/lang/String;
    if-eqz v22, :cond_1b7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_1b7

    .line 2270
    :try_start_1a4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->sampleIntents:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b7
    .catch Ljava/net/URISyntaxException; {:try_start_1a4 .. :try_end_1b7} :catch_1ba

    .line 2265
    :cond_1b7
    :goto_1b7
    add-int/lit8 v11, v11, 0x1

    goto :goto_18a

    .line 2271
    :catch_1ba
    move-exception v9

    .line 2272
    .local v9, e:Ljava/net/URISyntaxException;
    sget-object v23, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing sample intent: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b7

    .line 2276
    .end local v9           #e:Ljava/net/URISyntaxException;
    .end local v21           #si:Lorg/w3c/dom/Element;
    .end local v22           #uri:Ljava/lang/String;
    :cond_1dc
    return-object v18
.end method

.method private parseLayout(Ljava/util/jar/JarFile;)Lcom/sprint/w/installer/LayoutManager$Layout;
    .registers 11
    .parameter "f"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1907
    const-string v2, "layout.xml"

    .line 1909
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1910
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1911
    .local v6, width:I
    const/4 v1, 0x0

    .line 1912
    .local v1, e:Ljava/util/jar/JarEntry;
    const/16 v7, 0x258

    if-lt v6, v7, :cond_1d

    .line 1913
    const-string v7, "layout-large.xml"

    invoke-virtual {p1, v7}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 1915
    :cond_1d
    if-nez v1, :cond_23

    .line 1916
    invoke-virtual {p1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 1918
    :cond_23
    invoke-virtual {p1, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 1919
    .local v3, is:Ljava/io/InputStream;
    new-instance v5, Lcom/sprint/w/installer/LayoutManager;

    invoke-direct {v5, p0}, Lcom/sprint/w/installer/LayoutManager;-><init>(Landroid/app/Activity;)V

    .line 1920
    .local v5, lm:Lcom/sprint/w/installer/LayoutManager;
    invoke-virtual {v5, v3}, Lcom/sprint/w/installer/LayoutManager;->parse(Ljava/io/InputStream;)Lcom/sprint/w/installer/LayoutManager$Layout;

    move-result-object v4

    .line 1921
    .local v4, l:Lcom/sprint/w/installer/LayoutManager$Layout;
    if-eqz v4, :cond_35

    .line 1922
    invoke-direct {p0, p1, v1}, Lcom/sprint/w/installer/PackInstaller;->saveAndRegisterLayout(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    .line 1924
    :cond_35
    return-object v4
.end method

.method private parsePreferredActivities(Ljava/util/jar/JarFile;)V
    .registers 23
    .parameter "f"

    .prologue
    .line 2153
    const-string v18, "preferred-activities.xml"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v9

    .line 2154
    .local v9, entry:Ljava/util/jar/JarEntry;
    if-eqz v9, :cond_114

    .line 2156
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPreferredActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 2157
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 2158
    .local v5, db:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 2159
    .local v6, doc:Lorg/w3c/dom/Document;
    const-string v18, "preferred-activity"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 2160
    .local v15, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 2161
    .local v3, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_36
    if-ge v11, v3, :cond_114

    .line 2162
    invoke-interface {v15, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 2163
    .local v8, elem:Lorg/w3c/dom/Element;
    const-string v18, "package"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2164
    .local v16, p:Ljava/lang/String;
    const-string v18, "class"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2165
    .local v4, c:Ljava/lang/String;
    if-eqz v16, :cond_104

    if-eqz v4, :cond_104

    .line 2166
    const-string v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_73

    .line 2167
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2169
    :cond_73
    new-instance v17, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;

    invoke-direct/range {v17 .. v17}, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;-><init>()V

    .line 2170
    .local v17, pfm:Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->activity:Landroid/content/ComponentName;

    .line 2171
    sget-object v18, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found preferred-activity: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->activity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2173
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->intentFilters:Ljava/util/ArrayList;

    .line 2175
    const-string v18, "intent-filter"

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 2176
    .local v13, ifnl:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 2177
    .local v2, M:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_c1
    if-ge v14, v2, :cond_f7

    .line 2178
    invoke-interface {v13, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 2179
    .local v12, ifel:Lorg/w3c/dom/Element;
    invoke-static {v12}, Lcom/sprint/w/installer/PackInstaller;->parseIntentFilter(Lorg/w3c/dom/Element;)Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;

    move-result-object v10

    .line 2180
    .local v10, flt:Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    sget-object v18, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found intent-filter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2182
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->intentFilters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    add-int/lit8 v14, v14, 0x1

    goto :goto_c1

    .line 2184
    .end local v10           #flt:Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    .end local v12           #ifel:Lorg/w3c/dom/Element;
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPreferredActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_104} :catch_108

    .line 2161
    .end local v2           #M:I
    .end local v13           #ifnl:Lorg/w3c/dom/NodeList;
    .end local v14           #j:I
    .end local v17           #pfm:Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;
    :cond_104
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_36

    .line 2187
    .end local v3           #N:I
    .end local v4           #c:Ljava/lang/String;
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v8           #elem:Lorg/w3c/dom/Element;
    .end local v11           #i:I
    .end local v15           #nl:Lorg/w3c/dom/NodeList;
    .end local v16           #p:Ljava/lang/String;
    :catch_108
    move-exception v7

    .line 2188
    .local v7, e:Ljava/lang/Exception;
    sget-object v18, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v19, "Error parsing preferred-activities.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2191
    .end local v7           #e:Ljava/lang/Exception;
    :cond_114
    return-void
.end method

.method private parseRingtones(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .registers 14
    .parameter "f"
    .parameter "entry"

    .prologue
    .line 1322
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 1323
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 1324
    .local v1, doc:Lorg/w3c/dom/Document;
    const-string v9, "ringtone"

    invoke-interface {v1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1325
    .local v6, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 1326
    .local v5, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1b
    if-ge v4, v5, :cond_a8

    .line 1327
    new-instance v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;

    invoke-direct {v7}, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;-><init>()V

    .line 1328
    .local v7, rt:Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;
    invoke-interface {v6, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 1329
    .local v3, elem:Lorg/w3c/dom/Element;
    const-string v9, "src"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->path:Ljava/lang/String;

    .line 1330
    const-string v9, "title"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->title:Ljava/lang/String;

    .line 1331
    const-string v9, "mimeType"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->mimeType:Ljava/lang/String;

    .line 1333
    const-string v9, "isRingtone"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1334
    .local v8, value:Ljava/lang/String;
    const-string v9, "false"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    const/4 v9, 0x0

    :goto_4f
    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isRingtone:Z

    .line 1335
    const-string v9, "true"

    const-string v10, "default"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultRingtone:Z

    .line 1337
    const-string v9, "true"

    const-string v10, "isAlarm"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isAlarm:Z

    .line 1338
    const-string v9, "true"

    const-string v10, "isDefaultAlarm"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultAlarm:Z

    .line 1339
    const-string v9, "true"

    const-string v10, "isNotification"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isNotification:Z

    .line 1340
    const-string v9, "true"

    const-string v10, "isDefaultNotification"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;->isDefaultNotification:Z

    .line 1341
    invoke-direct {p0, v7}, Lcom/sprint/w/installer/PackInstaller;->installRingtone(Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;)V
    :try_end_9a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_9a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9a} :catch_a9
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_9a} :catch_b2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9a} :catch_bb

    .line 1326
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 1334
    :cond_9e
    const/4 v9, 0x1

    goto :goto_4f

    .line 1343
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #elem:Lorg/w3c/dom/Element;
    .end local v4           #i:I
    .end local v5           #n:I
    .end local v6           #nl:Lorg/w3c/dom/NodeList;
    .end local v7           #rt:Lcom/sprint/w/installer/LayoutManager$RingtoneMeta;
    .end local v8           #value:Ljava/lang/String;
    :catch_a0
    move-exception v2

    .line 1344
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error installing ringtones"

    invoke-virtual {v9, v10, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1352
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_a8
    :goto_a8
    return-void

    .line 1345
    :catch_a9
    move-exception v2

    .line 1346
    .local v2, e:Ljava/io/IOException;
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error installing ringtones"

    invoke-virtual {v9, v10, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 1347
    .end local v2           #e:Ljava/io/IOException;
    :catch_b2
    move-exception v2

    .line 1348
    .local v2, e:Lorg/xml/sax/SAXException;
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error installing ringtones"

    invoke-virtual {v9, v10, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8

    .line 1349
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_bb
    move-exception v2

    .line 1350
    .local v2, e:Ljava/lang/RuntimeException;
    sget-object v9, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error installing ringtones"

    invoke-virtual {v9, v10, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a8
.end method

.method private prepareDefaultPackDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 3
    .parameter "sp"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 531
    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initD2CView()V

    .line 536
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;)V

    .line 537
    return-void
.end method

.method private prepareDefaultPackReInstall(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 3
    .parameter "sp"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 541
    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    .line 544
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initD2CView()V

    .line 545
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initD2CForReInstall()V

    .line 547
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->downloadDefaultPack(Lcom/sprint/w/installer/psi/ServicePack;)V

    .line 548
    return-void
.end method

.method private preparePsiD2cDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 5
    .parameter "sp"

    .prologue
    .line 562
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 563
    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    .line 565
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initD2CView()V

    .line 567
    const/4 v1, 0x1

    iput v1, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.DOWNLOAD_FROM_PSI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 570
    const-string v1, "extra.PSI_PRODUCT_ID"

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v1, "extra.PACK_NAME"

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 573
    return-void
.end method

.method private preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 9
    .parameter "sp"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 642
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 644
    iput-boolean v4, p0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    .line 645
    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPsiId:Ljava/lang/String;

    .line 647
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 648
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPackIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 651
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 653
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mTopSubtext:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f060048

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_5c
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 657
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 659
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterWelcome:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    iput v4, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 665
    new-instance v0, Lcom/sprint/w/installer/PackInstaller$6;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/PackInstaller$6;-><init>(Lcom/sprint/w/installer/PackInstaller;Lcom/sprint/w/installer/psi/ServicePack;)V

    .line 693
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 694
    return-void
.end method

.method private registerApp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "title"
    .parameter "packageName"

    .prologue
    .line 1981
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1982
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->fillPackDetails(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1983
    const-string v2, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1984
    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1987
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-direct {p0, p2}, Lcom/sprint/w/installer/PackInstaller;->unRegisterApp(Ljava/lang/String;)V

    .line 1988
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1989
    return-void
.end method

.method private registerFile(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "type"
    .parameter "path"
    .parameter "title"

    .prologue
    .line 2014
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2015
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->fillPackDetails(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 2016
    const-string v2, "itemType"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2017
    const-string v2, "path"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    if-nez p3, :cond_20

    .line 2019
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    .line 2021
    :cond_20
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2023
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-direct {p0, p2}, Lcom/sprint/w/installer/PackInstaller;->unRegisterFile(Ljava/lang/String;)V

    .line 2024
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2025
    return-void
.end method

.method private registerRingtone(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "title"
    .parameter "path"

    .prologue
    .line 1999
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2000
    .local v1, values:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->fillPackDetails(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 2001
    const-string v2, "itemType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v2, "path"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2005
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-direct {p0, p2}, Lcom/sprint/w/installer/PackInstaller;->unRegisterRingtone(Ljava/lang/String;)V

    .line 2006
    sget-object v2, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2007
    return-void
.end method

.method private saveAndRegisterLayout(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .registers 13
    .parameter "f"
    .parameter "e"

    .prologue
    .line 1928
    const/4 v1, 0x0

    .line 1929
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1931
    .local v3, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 1932
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->namespacePrefix:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sprint/w/installer/util/Util;->fileNameToLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1933
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1934
    .local v6, target:Ljava/io/File;
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lcom/sprint/w/installer/PackInstaller;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_60
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_20} :catch_79

    .line 1936
    .end local v3           #os:Ljava/io/OutputStream;
    .local v4, os:Ljava/io/OutputStream;
    :goto_20
    const/4 v7, -0x1

    :try_start_21
    iget-object v8, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, r:I
    if-eq v7, v5, :cond_44

    .line 1937
    iget-object v7, p0, Lcom/sprint/w/installer/PackInstaller;->BUFFER:[B

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_76
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_30

    goto :goto_20

    .line 1941
    .end local v5           #r:I
    :catch_30
    move-exception v0

    move-object v3, v4

    .line 1942
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v6           #target:Ljava/io/File;
    .local v0, ex:Ljava/io/IOException;
    .restart local v3       #os:Ljava/io/OutputStream;
    :goto_32
    :try_start_32
    sget-object v7, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error reading layout file from the pack"

    invoke-virtual {v7, v8, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_60

    .line 1944
    if-eqz v1, :cond_3e

    .line 1946
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_6e

    .line 1950
    :cond_3e
    :goto_3e
    if-eqz v3, :cond_43

    .line 1952
    :try_start_40
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_70

    .line 1957
    .end local v0           #ex:Ljava/io/IOException;
    :cond_43
    :goto_43
    return-void

    .line 1939
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #r:I
    .restart local v6       #target:Ljava/io/File;
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1940
    const/4 v7, 0x4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Layout"

    invoke-direct {p0, v7, v8, v9}, Lcom/sprint/w/installer/PackInstaller;->registerFile(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_76
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_51} :catch_30

    .line 1944
    if-eqz v1, :cond_56

    .line 1946
    :try_start_53
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_6c

    .line 1950
    :cond_56
    :goto_56
    if-eqz v4, :cond_7b

    .line 1952
    :try_start_58
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5d

    move-object v3, v4

    .line 1954
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_43

    .line 1953
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v4       #os:Ljava/io/OutputStream;
    :catch_5d
    move-exception v7

    move-object v3, v4

    .line 1954
    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_43

    .line 1944
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #r:I
    .end local v6           #target:Ljava/io/File;
    :catchall_60
    move-exception v7

    :goto_61
    if-eqz v1, :cond_66

    .line 1946
    :try_start_63
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_72

    .line 1950
    :cond_66
    :goto_66
    if-eqz v3, :cond_6b

    .line 1952
    :try_start_68
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_74

    .line 1954
    :cond_6b
    :goto_6b
    throw v7

    .line 1947
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #r:I
    .restart local v6       #target:Ljava/io/File;
    :catch_6c
    move-exception v7

    goto :goto_56

    .end local v2           #name:Ljava/lang/String;
    .end local v4           #os:Ljava/io/OutputStream;
    .end local v5           #r:I
    .end local v6           #target:Ljava/io/File;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_6e
    move-exception v7

    goto :goto_3e

    .line 1953
    :catch_70
    move-exception v7

    goto :goto_43

    .line 1947
    .end local v0           #ex:Ljava/io/IOException;
    :catch_72
    move-exception v8

    goto :goto_66

    .line 1953
    :catch_74
    move-exception v8

    goto :goto_6b

    .line 1944
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v6       #target:Ljava/io/File;
    :catchall_76
    move-exception v7

    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_61

    .line 1941
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #target:Ljava/io/File;
    :catch_79
    move-exception v0

    goto :goto_32

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v4       #os:Ljava/io/OutputStream;
    .restart local v5       #r:I
    .restart local v6       #target:Ljava/io/File;
    :cond_7b
    move-object v3, v4

    .end local v4           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    goto :goto_43
.end method

.method private saveCurrentLayout()V
    .registers 5

    .prologue
    .line 1038
    :try_start_0
    invoke-static {p0}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    .line 1039
    .local v0, currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    if-nez v0, :cond_e

    .line 1040
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;

    const-string v3, "HOME"

    invoke-static {v2, p0, v3}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveHomeScreenConfig(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1053
    .end local v0           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    :goto_d
    return-void

    .line 1042
    .restart local v0       #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    :cond_e
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;

    iget-object v3, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {v2, p0, v3}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveHomeScreenConfig(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V

    .line 1047
    iget-object v2, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 1048
    iget-object v2, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_d

    .line 1050
    .end local v0           #currentPackInfo:Lcom/sprint/w/installer/PackInfo;
    :catch_20
    move-exception v1

    .line 1051
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "PackSwitcherLoader error"

    invoke-virtual {v2, v3, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public static setAsPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;Z)V
    .registers 23
    .parameter "context"
    .parameter "pm"
    .parameter "filter"
    .parameter "sampleIntent"
    .parameter "newHandler"
    .parameter "start"

    .prologue
    .line 2298
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Setting preferred Home"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->i(Ljava/lang/String;)V

    .line 2299
    const/high16 v14, 0x40

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2300
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-lt v14, v15, :cond_8c

    .line 2303
    const/4 v6, 0x0

    .line 2305
    .local v6, hasService:Z
    :try_start_15
    const-string v14, "com.sprint.w.prefact"

    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 2306
    .local v11, pi:Landroid/content/pm/PackageInfo;
    iget-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_2f

    iget-object v14, v11, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v14, v14

    if-lez v14, :cond_2f

    .line 2307
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "PrefAct.apk has the new Service."

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_2e} :catch_66

    .line 2308
    const/4 v6, 0x1

    .line 2314
    .end local v11           #pi:Landroid/content/pm/PackageInfo;
    :cond_2f
    :goto_2f
    new-instance v7, Landroid/content/Intent;

    const-string v14, "com.sprint.action.SET_PREFERRED_APPLICATION"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2315
    .local v7, i:Landroid/content/Intent;
    const/high16 v14, 0x1000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2316
    const-string v14, "sampleIntent"

    move-object/from16 v0, p3

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2317
    const-string v14, "filter"

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2318
    const-string v14, "newHandler"

    move-object/from16 v0, p4

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2319
    const-string v14, "start"

    move/from16 v0, p5

    invoke-virtual {v7, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2320
    if-eqz v6, :cond_6f

    .line 2321
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Starting Service"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2323
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2361
    .end local v6           #hasService:Z
    .end local v7           #i:Landroid/content/Intent;
    :goto_65
    return-void

    .line 2310
    .restart local v6       #hasService:Z
    :catch_66
    move-exception v5

    .line 2311
    .local v5, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Could not find the package com.sprint.w.prefact, Please add PrefAct.apk as a pre-load"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_2f

    .line 2325
    .end local v5           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #i:Landroid/content/Intent;
    :cond_6f
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Starting Activity"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2330
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.sprint.w.prefact"

    const-string v16, "com.sprint.w.prefact.PreferredSetter"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2332
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_65

    .line 2337
    .end local v6           #hasService:Z
    .end local v7           #i:Landroid/content/Intent;
    :cond_8c
    const v14, 0x10040

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 2338
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    new-array v4, v14, [Landroid/content/ComponentName;

    .line 2339
    .local v4, cns:[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 2340
    .local v7, i:I
    const/4 v3, 0x0

    .line 2341
    .local v3, bestMatch:I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ee

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 2342
    .local v13, ri:Landroid/content/pm/ResolveInfo;
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v4, v7

    .line 2343
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Matching activity "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2345
    iget v14, v13, Landroid/content/pm/ResolveInfo;->match:I

    if-le v14, v3, :cond_ec

    .line 2346
    iget v3, v13, Landroid/content/pm/ResolveInfo;->match:I

    :cond_ec
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_a3

    .line 2350
    .end local v13           #ri:Landroid/content/pm/ResolveInfo;
    :cond_ee
    const/high16 v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 2351
    .local v12, prf:Landroid/content/pm/ResolveInfo;
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Before: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 2353
    if-eqz v12, :cond_11b

    .line 2354
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2357
    :cond_11b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 2359
    sget-object v14, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "After: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/high16 v16, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_65
.end method

.method private setDefaultWallpaper(Lcom/sprint/w/installer/LayoutManager$Layout;Ljava/util/jar/JarFile;)V
    .registers 8
    .parameter "l"
    .parameter "f"

    .prologue
    .line 1413
    const/4 v2, 0x0

    .line 1414
    .local v2, success:Z
    :try_start_1
    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$Layout;->mDefaultWallpaper:Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 1415
    iget-object v3, p1, Lcom/sprint/w/installer/LayoutManager$Layout;->mDefaultWallpaper:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 1416
    .local v1, entry:Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_19

    .line 1417
    invoke-static {p2, v1}, Lcom/sprint/w/installer/util/Util;->findBestResourceMatch(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/util/jar/JarEntry;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_34

    move-result-object v1

    .line 1419
    :try_start_11
    invoke-virtual {p2, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_2b

    .line 1420
    const/4 v2, 0x1

    .line 1429
    .end local v1           #entry:Ljava/util/jar/JarEntry;
    :cond_19
    :goto_19
    if-nez v2, :cond_2a

    .line 1430
    :try_start_1b
    const-string v3, "wallpaper.jpg"

    invoke-virtual {p2, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 1431
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_2a

    .line 1432
    invoke-virtual {p2, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/PackInstaller;->setWallpaper(Ljava/io/InputStream;)V

    .line 1438
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_2a
    :goto_2a
    return-void

    .line 1421
    .local v1, entry:Ljava/util/jar/JarEntry;
    :catch_2b
    move-exception v0

    .line 1422
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error setting wallpaper"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_33} :catch_34

    goto :goto_19

    .line 1435
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entry:Ljava/util/jar/JarEntry;
    :catch_34
    move-exception v0

    .line 1436
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Error setting wallpaper"

    invoke-virtual {v3, v4, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 1426
    .end local v0           #e:Ljava/io/IOException;
    :cond_3d
    :try_start_3d
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "No default wallpaper specified in layout.xml"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_34

    goto :goto_19
.end method

.method private setPreferredActivities()V
    .registers 13

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPreferredActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    .line 2281
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2282
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mPreferredActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;

    .line 2284
    .local v11, pa:Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;
    :try_start_1a
    iget-object v0, v11, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->intentFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_20
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;

    .line 2285
    .local v7, flt:Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    iget-object v0, v7, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->sampleIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2286
    .local v3, i:Landroid/content/Intent;
    iget-object v2, v7, Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;->filter:Landroid/content/IntentFilter;

    iget-object v4, v11, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->activity:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sprint/w/installer/PackInstaller;->setAsPreferred(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;Landroid/content/Intent;Landroid/content/ComponentName;Z)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_32

    .line 2289
    .end local v3           #i:Landroid/content/Intent;
    .end local v7           #flt:Lcom/sprint/w/installer/PackInstaller$PreferredIntentFilter;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_48
    move-exception v6

    .line 2290
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed setting preferred activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;->activity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 2294
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #pa:Lcom/sprint/w/installer/PackInstaller$PreferredActivityMeta;
    :cond_68
    return-void
.end method

.method private showRssTermsAndConditions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "Tc"
    .parameter "title"

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/delivery/TermsAndConditions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, i:Landroid/content/Intent;
    const-string v1, "terms"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const/16 v1, 0xe1

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/PackInstaller;->startActivityForResult(Landroid/content/Intent;I)V

    .line 517
    return-void
.end method

.method private showTermsAndConditions(Lcom/sprint/w/installer/psi/ServicePack;)V
    .registers 5
    .parameter "sp"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .local v0, i:Landroid/content/Intent;
    const-string v1, "packId"

    invoke-virtual {p1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const/16 v1, 0xdf

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/PackInstaller;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    return-void
.end method

.method private unRegisterApp(Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1993
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v2, "package=? AND packId=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sprint/w/installer/PackInstaller;->mPackInfo:Lcom/sprint/w/installer/PackInfo;

    iget-object v5, v5, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1996
    return-void
.end method

.method private unRegisterFile(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 2028
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2029
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sprint/w/installer/ContentProvider;->URI:Landroid/net/Uri;

    const-string v2, "path=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2032
    return-void
.end method

.method private unRegisterRingtone(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 2010
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/PackInstaller;->unRegisterFile(Ljava/lang/String;)V

    .line 2011
    return-void
.end method

.method private updateStatus(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mStatusMessage:Ljava/lang/CharSequence;

    .line 2439
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2440
    return-void
.end method

.method private updateStatus(Ljava/lang/CharSequence;I)V
    .registers 5
    .parameter "message"
    .parameter "percentComplete"

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mStatusMessage:Ljava/lang/CharSequence;

    .line 2444
    iput p2, p0, Lcom/sprint/w/installer/PackInstaller;->mPercentComplete:I

    .line 2445
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateStatusPercent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2446
    return-void
.end method

.method private updateVersion(Ljava/lang/String;)V
    .registers 4
    .parameter "version"

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller;->mVersion:Ljava/lang/String;

    .line 2471
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mUpdateVersion:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2472
    return-void
.end method

.method private wipeHomeScreen()V
    .registers 4

    .prologue
    .line 1960
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Deleting all home screen items"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1962
    :try_start_7
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;

    invoke-interface {v1}, Lcom/sprint/id/ISprintIDService;->wipeDesktopContainer()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1967
    :goto_c
    return-void

    .line 1963
    :catch_d
    move-exception v0

    .line 1965
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error from the service while wiping the home screen"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x4

    .line 452
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v2, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 453
    :cond_e
    iput v2, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    .line 455
    :cond_10
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 704
    const/4 v1, -0x1

    if-ne v1, p2, :cond_90

    .line 705
    packed-switch p1, :pswitch_data_a2

    .line 756
    :goto_6
    return-void

    .line 712
    :pswitch_7
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->downloadPsiPack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 717
    :pswitch_17
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprint.action.DOWNLOAD_FROM_URL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 721
    const-string v1, "extra.PACK_URL"

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v1, "extra.PACK_NAME"

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "extra.USERID"

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    const-string v1, "extra.PASSWORD"

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/PackInstaller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto :goto_6

    .line 729
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_6c
    iget-boolean v1, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    if-eqz v1, :cond_7a

    .line 730
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-direct {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->preparePsiDownload(Lcom/sprint/w/installer/psi/ServicePack;)V

    goto :goto_6

    .line 731
    :cond_7a
    iget-boolean v1, p0, Lcom/sprint/w/installer/PackInstaller;->mFromFile:Z

    if-nez v1, :cond_86

    .line 732
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->downloadServicePack(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 734
    :cond_86
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto/16 :goto_6

    .line 738
    :pswitch_8b
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->installServicePack()V

    goto/16 :goto_6

    .line 742
    :cond_90
    packed-switch p1, :pswitch_data_ae

    goto/16 :goto_6

    .line 752
    :pswitch_95
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto/16 :goto_6

    .line 746
    :pswitch_9a
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->cleanUpAfterFailedInstall()V

    .line 747
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    goto/16 :goto_6

    .line 705
    :pswitch_data_a2
    .packed-switch 0xdf
        :pswitch_7
        :pswitch_6c
        :pswitch_17
        :pswitch_8b
    .end packed-switch

    .line 742
    :pswitch_data_ae
    .packed-switch 0xdf
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_9a
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 423
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sprint.ACTION_INSTALL_FROM_D2C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 424
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initD2CView()V

    .line 426
    :cond_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Entered onCreate"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackInstaller;->requestWindowFeature(I)Z

    .line 220
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->setContentView(I)V

    .line 222
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 223
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "skipTc"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sprint/w/installer/PackInstaller;->mSkipTc:Z

    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, initUI:Z
    const-string v2, "com.sprint.ACTION_INSTALL_FROM_PSI"

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 227
    iget-boolean v2, p0, Lcom/sprint/w/installer/PackInstaller;->mSkipTc:Z

    if-nez v2, :cond_40

    .line 228
    const/4 v0, 0x0

    .line 242
    :cond_40
    :goto_40
    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPackIcon:Landroid/widget/ImageView;

    .line 243
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 245
    const v2, 0x7f0c0049

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 246
    const v2, 0x7f0c000b

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    .line 247
    const v2, 0x7f0c004a

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mTopText:Landroid/widget/TextView;

    .line 248
    const v2, 0x7f0c004b

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mTopSubtext:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f0c004e

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterWelcome:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f0c004f

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mCenterBody:Landroid/widget/TextView;

    .line 251
    const v2, 0x7f0c0050

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    .line 253
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    .line 254
    const v2, 0x7f0c004c

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    .line 255
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 256
    const v2, 0x7f0c004d

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mProgressText:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f0c0052

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mAllDoneButton:Landroid/widget/Button;

    .line 259
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mAllDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mAllDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v2, 0x7f0c0051

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    .line 261
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v2, Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-direct {v2}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;-><init>()V

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    .line 264
    if-eqz v0, :cond_1aa

    .line 266
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    new-instance v3, Lcom/sprint/w/installer/PackInstaller$2;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackInstaller$2;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {p0, v2, v3, v5}, Lcom/sprint/w/installer/PackInstaller;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 285
    :goto_10e
    new-instance v2, Lcom/sprint/w/installer/LayoutManager;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/LayoutManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mLayoutManager:Lcom/sprint/w/installer/LayoutManager;

    .line 286
    iput-boolean v6, p0, Lcom/sprint/w/installer/PackInstaller;->mAbortInstall:Z

    .line 288
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->initHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 289
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v2, Landroid/appwidget/AppWidgetHost;

    const/16 v3, 0x400

    invoke-direct {v2, p0, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 292
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 294
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mKeyGuard:Landroid/app/KeyguardManager;

    .line 295
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mKeyGuard:Landroid/app/KeyguardManager;

    invoke-static {}, Lcom/sprint/id/logger/Logger;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 297
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPowerManager:Landroid/os/PowerManager;

    .line 298
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x6

    invoke-static {}, Lcom/sprint/id/logger/Logger;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 300
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mBC:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sprint.w.installer.PackInstaller.ACTION_FINISH"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sprint/w/installer/PackInstaller;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    sget-object v2, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Registered Receiver"

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 302
    return-void

    .line 230
    :cond_174
    const-string v2, "com.sprint.ACTION_INSTALL_FROM_URL"

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 231
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "psi"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a7

    iget-boolean v2, p0, Lcom/sprint/w/installer/PackInstaller;->mSkipTc:Z

    if-nez v2, :cond_1a7

    .line 236
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 238
    :cond_1a7
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 275
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1aa
    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    new-instance v3, Lcom/sprint/w/installer/PackInstaller$3;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/PackInstaller$3;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/service/SprintIDServiceConnection;->setOnConnectedCallback(Ljava/lang/Runnable;)V

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sprint.id.BIND_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {p0, v2, v3, v5}, Lcom/sprint/w/installer/PackInstaller;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 282
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sprint/w/installer/PackInstaller;->handleNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_10e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f060078

    const v1, 0x7f060075

    const v4, 0x7f060047

    const v3, 0x7f060031

    const/high16 v2, 0x104

    .line 2051
    packed-switch p1, :pswitch_data_130

    .line 2136
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_15
    return-object v0

    .line 2053
    :pswitch_16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$19;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$19;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$18;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$18;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_15

    .line 2076
    :pswitch_45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060077

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$21;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$21;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$20;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$20;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_15

    .line 2090
    :pswitch_79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$23;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$23;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$22;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$22;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_15

    .line 2103
    :pswitch_a9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$25;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$25;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$24;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$24;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_15

    .line 2119
    :pswitch_d9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06007a

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/PackInstaller$26;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/PackInstaller$26;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_15

    .line 2128
    :pswitch_103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06007a

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sprint/w/installer/PackInstaller$27;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/PackInstaller$27;-><init>(Lcom/sprint/w/installer/PackInstaller;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_15

    .line 2051
    :pswitch_data_130
    .packed-switch 0x64
        :pswitch_16
        :pswitch_79
        :pswitch_45
        :pswitch_a9
        :pswitch_103
        :pswitch_d9
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 492
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "onDestroy called"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 494
    :try_start_a
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mBC:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Unregistered Receiver"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1f

    .line 500
    :goto_16
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mConn:Lcom/sprint/w/installer/service/SprintIDServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/PackInstaller;->unbindService(Landroid/content/ServiceConnection;)V

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mIDService:Lcom/sprint/id/ISprintIDService;

    .line 502
    return-void

    .line 496
    :catch_1f
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Error unregistering receiver"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2037
    iget-boolean v0, p0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 2038
    const/4 v0, 0x1

    .line 2040
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 460
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 461
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "onPause called"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 463
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->abortThreads()V

    .line 464
    iget-boolean v3, p0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    if-eqz v3, :cond_2f

    iget v3, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22

    iget v3, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2f

    .line 465
    :cond_22
    const v3, 0x7f0600b1

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 466
    invoke-direct {p0}, Lcom/sprint/w/installer/PackInstaller;->notifyUserCanceled()V

    .line 469
    :cond_2f
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v3}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 471
    :try_start_34
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 472
    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_41} :catch_61

    .line 479
    :goto_41
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/w/installer/DownloadService;->getReadyToInstallPacks(Landroid/content/Context;)[Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v2

    .line 480
    .local v2, rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    array-length v3, v2

    if-lez v3, :cond_6a

    .line 481
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, bn:Lcom/sprint/w/installer/BroadcastNotifier;
    invoke-virtual {v0, v5}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackToBeInstalled(Z)V

    .line 487
    :goto_58
    return-void

    .line 474
    .end local v0           #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    .end local v2           #rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    :cond_59
    :try_start_59
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Tried to release wakelock that is not held!"

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_60} :catch_61

    goto :goto_41

    .line 476
    :catch_61
    move-exception v1

    .line 477
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v4, "Failed to release wakelock"

    invoke-virtual {v3, v4, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 484
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v2       #rtiPacks:[Lcom/sprint/w/installer/psi/ServicePack;
    :cond_6a
    new-instance v0, Lcom/sprint/w/installer/BroadcastNotifier;

    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sprint/w/installer/BroadcastNotifier;-><init>(Landroid/content/Context;)V

    .line 485
    .restart local v0       #bn:Lcom/sprint/w/installer/BroadcastNotifier;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sprint/w/installer/BroadcastNotifier;->notifyPackToBeInstalled(Z)V

    goto :goto_58
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 431
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Entered onResume"

    invoke-virtual {v1, v2}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 434
    :try_start_f
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    .line 438
    :goto_14
    return-void

    .line 435
    :catch_15
    move-exception v0

    .line 436
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller;->log:Lcom/sprint/id/logger/Logger;

    const-string v2, "Failed to acquire wakelock"

    invoke-virtual {v1, v2, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 443
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 444
    iget v0, p0, Lcom/sprint/w/installer/PackInstaller;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 445
    invoke-virtual {p0}, Lcom/sprint/w/installer/PackInstaller;->finish()V

    .line 448
    :cond_11
    return-void
.end method
