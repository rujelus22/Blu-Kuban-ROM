.class Lcom/google/android/picasasync/UploadsManager;
.super Ljava/lang/Object;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;,
        Lcom/google/android/picasasync/UploadsManager$ExistingMediaUploadTaskProvider;,
        Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;,
        Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;,
        Lcom/google/android/picasasync/UploadsManager$UploadTask;
    }
.end annotation


# static fields
.field private static EXIF_TAG_APERTURE:Ljava/lang/reflect/Field;

.field private static EXIF_TAG_EXPOSURE_TIME:Ljava/lang/reflect/Field;

.field private static EXIF_TAG_ISO:Ljava/lang/reflect/Field;

.field private static final EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

.field private static final PROJECTION_FINGERPRINT:[Ljava/lang/String;

.field private static final QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/UploadsManager;

.field private static final sLatlon:[F


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

.field private mExternalStorageFsId:I

.field private final mFingerprintManager:Lcom/google/android/picasasync/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsExternalStorageFsIdReady:Z

.field private mLastReportTime:J

.field private mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

.field private final mOldPhotoTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/picasasync/PhotoTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

.field private mProblematicAccounts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/content/SharedPreferences;

.field private final mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

.field private mSyncOnBattery:Z

.field private mSyncOnRoaming:Z

.field private mSyncedAccountAlbumPairs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUrl:Ljava/lang/String;

.field private final mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

.field private mWifiOnlyPhoto:Z

.field private mWifiOnlyVideo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    const-class v0, Lcom/google/android/picasasync/UploadsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "fingerprint"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto_upload_enabled"

    aput-object v1, v0, v3

    const-string v1, "auto_upload_account_name"

    aput-object v1, v0, v4

    const-string v1, "sync_on_wifi_only"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "video_upload_wifi_only"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_on_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync_on_battery"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    .line 125
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select MAX(display_index) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

    .line 133
    sput-object v5, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_APERTURE:Ljava/lang/reflect/Field;

    .line 134
    sput-object v5, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_EXPOSURE_TIME:Ljava/lang/reflect/Field;

    .line 135
    sput-object v5, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_ISO:Ljava/lang/reflect/Field;

    .line 139
    :try_start_71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_95

    .line 140
    const-class v0, Landroid/media/ExifInterface;

    const-string v1, "TAG_APERTURE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_APERTURE:Ljava/lang/reflect/Field;

    .line 141
    const-class v0, Landroid/media/ExifInterface;

    const-string v1, "TAG_EXPOSURE_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_EXPOSURE_TIME:Ljava/lang/reflect/Field;

    .line 142
    const-class v0, Landroid/media/ExifInterface;

    const-string v1, "TAG_ISO"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_ISO:Ljava/lang/reflect/Field;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_95} :catch_9a

    .line 912
    :cond_95
    :goto_95
    new-array v0, v6, [F

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->sLatlon:[F

    return-void

    .line 144
    :catch_9a
    move-exception v0

    .line 145
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "get exif fields"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    .line 181
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    .line 184
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/picasasync/UploadsManager;->mLastReportTime:J

    .line 192
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    .line 201
    iput-boolean v5, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 204
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 206
    new-instance v1, Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    .line 207
    new-instance v1, Lcom/google/android/picasasync/FingerprintManager;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-direct {v1, p1, v2}, Lcom/google/android/picasasync/FingerprintManager;-><init>(Landroid/content/Context;Lcom/google/android/picasasync/UploadsDatabaseHelper;)V

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mFingerprintManager:Lcom/google/android/picasasync/FingerprintManager;

    .line 208
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    .line 209
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    .line 210
    invoke-static {p1}, Lcom/google/android/picasasync/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    .line 212
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "picasa-uploads-manager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 214
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 215
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    .line 217
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->loadSavedStates()V

    .line 218
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/picasasync/UploadsManager$1;

    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/google/android/picasasync/UploadsManager$1;-><init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 231
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaSyncHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/picasasync/UploadsManager;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->doTask(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/picasasync/UploadsManager;I)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->getNextTaskFromDb(I)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->sendUploadCompleteEvent(Lcom/google/android/picasasync/UploadTaskEntry;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/FingerprintManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mFingerprintManager:Lcom/google/android/picasasync/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PicasaDatabaseHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/picasasync/UploadsManager;->getFsId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/picasasync/UploadsManager;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/picasasync/UploadsManager;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->collectAutoUploadNewPhotoTasks(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/picasasync/UploadsManager;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->collectAutoUploadOldPhotoTasks(Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/picasasync/UploadsManager;)Lcom/google/android/picasasync/PhotoTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/picasasync/UploadsManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/picasasync/UploadsManager;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)Ljava/util/HashSet;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->retrieveAllFingerprints(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/google/android/picasasync/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/picasasync/UploadsManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/picasasync/UploadsManager;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->cancelTaskInternal(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->uploadExistingPhotosInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->cancelUploadExistingPhotosInternal(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized cancelTaskInternal(J)V
    .registers 4
    .parameter "taskId"

    .prologue
    .line 523
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    .line 524
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    if-eqz v0, :cond_d

    .line 526
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/picasasync/UploadsManager$UploadTask;->cancelTask(J)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 528
    :cond_d
    monitor-exit p0

    return-void

    .line 523
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cancelUploadExistingPhotosInternal(Ljava/lang/String;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable existing photos upload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PhotoTracker;

    .line 570
    .local v0, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    if-eqz v0, :cond_41

    .line 571
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    instance-of v1, v1, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    check-cast v1, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->getMediaTracker()Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v1

    if-ne v0, v1, :cond_3e

    .line 573
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    check-cast v1, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->cancel()V

    .line 575
    :cond_3e
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 577
    :cond_41
    monitor-exit p0

    return-void

    .line 567
    .end local v0           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized collectAutoUploadNewPhotoTasks(Ljava/util/Collection;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 967
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    if-eqz v0, :cond_4f

    .line 968
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collect new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v0

    .line 970
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->isValidAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v1, p2}, Lcom/google/android/picasasync/PhotoTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 973
    new-instance v1, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 976
    :cond_4f
    monitor-exit p0

    return-void

    .line 967
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized collectAutoUploadOldPhotoTasks(Ljava/util/Collection;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/picasasync/SyncTask;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 982
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PhotoTracker;

    .line 983
    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v3

    .line 984
    invoke-direct {p0, v3}, Lcom/google/android/picasasync/UploadsManager;->isValidAccount(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 985
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2a

    goto :goto_10

    .line 981
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 988
    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 989
    sget-object v4, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collect old "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v0, p2}, Lcom/google/android/picasasync/PhotoTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 991
    new-instance v1, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    invoke-direct {v1, p0, v3, v0, p2}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;Lcom/google/android/picasasync/PhotoTracker;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catchall {:try_start_2d .. :try_end_65} :catchall_2a

    .line 1000
    :cond_65
    monitor-exit p0

    return-void

    .line 999
    :cond_67
    :try_start_67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/PhotoTracker;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_2a

    goto :goto_6b
.end method

.method private completeTask(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;)V
    .registers 6
    .parameter "task"
    .parameter "result"

    .prologue
    .line 782
    iget-wide v1, p1, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    .line 785
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 786
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUid()I

    move-result v1

    iput v1, p2, Lcom/google/android/picasasync/UploadedEntry;->uid:I

    .line 787
    sget-object v1, Lcom/google/android/picasasync/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, v0, p2}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 788
    return-void
.end method

.method private doTask(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)I
    .registers 11
    .parameter "task"
    .parameter "progressListener"
    .parameter "syncResult"

    .prologue
    const-wide/16 v5, 0x1

    const/4 v1, 0x2

    .line 636
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/UploadsManager;->doUpload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;

    move-result-object v0

    .line 638
    .local v0, result:Lcom/google/android/picasasync/UploadedEntry;
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DONE uploading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-nez v0, :cond_9e

    .line 642
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_bc

    .line 663
    :pswitch_40
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state after upload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 666
    iget-wide v1, p1, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    .line 680
    :cond_61
    :goto_61
    const/4 v1, 0x0

    :goto_62
    return v1

    .line 644
    :pswitch_63
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 645
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V

    goto :goto_62

    .line 648
    :pswitch_6b
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v3, "Unauthorized; stop upload until it\'s authorized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 652
    :pswitch_7c
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v3, "quota exceeded; stop upload until it\'s resolved"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 656
    :pswitch_8d
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 657
    iget-wide v1, p1, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    goto :goto_61

    .line 660
    :pswitch_98
    iget-wide v1, p1, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    goto :goto_61

    .line 670
    :cond_9e
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 671
    invoke-direct {p0, p1, v0}, Lcom/google/android/picasasync/UploadsManager;->completeTask(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;)V

    .line 673
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    .line 674
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    .line 676
    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/picasasync/UploadsManager;->writeToPhotoTable(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 677
    const/4 v1, 0x1

    goto :goto_62

    .line 642
    nop

    :pswitch_data_bc
    .packed-switch 0x5
        :pswitch_98
        :pswitch_63
        :pswitch_8d
        :pswitch_40
        :pswitch_6b
        :pswitch_7c
    .end packed-switch
.end method

.method private doUpload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x5

    const-wide/16 v9, 0x1

    const/4 v3, 0x0

    .line 695
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadingIfReady()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v3

    .line 774
    :goto_b
    return-object v0

    .line 699
    :cond_c
    const-wide/16 v1, 0x3e8

    .line 700
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadUrl:Ljava/lang/String;

    .line 703
    :goto_15
    new-instance v4, Lcom/google/android/picasasync/GDataUploader;

    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/picasasync/GDataUploader;-><init>(Landroid/content/Context;)V

    .line 705
    :try_start_1c
    invoke-virtual {v4, p1, p2}, Lcom/google/android/picasasync/GDataUploader;->upload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_128
    .catch Lcom/google/android/picasasync/Uploader$MediaFileChangedException; {:try_start_1c .. :try_end_1f} :catch_24
    .catch Lcom/google/android/picasasync/Uploader$RestartException; {:try_start_1c .. :try_end_1f} :catch_46
    .catch Lcom/google/android/picasasync/Uploader$UnauthorizedException; {:try_start_1c .. :try_end_1f} :catch_82
    .catch Lcom/google/android/picasasync/Uploader$PicasaQuotaException; {:try_start_1c .. :try_end_1f} :catch_ad
    .catch Lcom/google/android/picasasync/Uploader$LocalIoException; {:try_start_1c .. :try_end_1f} :catch_d1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_12d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_167

    move-result-object v0

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    goto :goto_b

    .line 706
    :catch_24
    move-exception v0

    .line 707
    :try_start_25
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media file changed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto :goto_b

    .line 711
    :catch_46
    move-exception v5

    .line 712
    :try_start_47
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transient error on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    .line 751
    monitor-enter p1

    .line 752
    :try_start_63
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->isUploading()Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 753
    add-int/lit8 v0, v0, 0x1

    if-le v0, v11, :cond_191

    .line 754
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   max retries reached; skip the upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 756
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 757
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_1c0

    move-object v0, v3

    goto :goto_b

    .line 715
    :catch_82
    move-exception v0

    .line 716
    :try_start_83
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unauthorized "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 718
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_a7
    .catchall {:try_start_83 .. :try_end_a7} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto/16 :goto_b

    .line 720
    :catch_ad
    move-exception v0

    .line 721
    :try_start_ae
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload quota exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_cb
    .catchall {:try_start_ae .. :try_end_cb} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto/16 :goto_b

    .line 724
    :catch_d1
    move-exception v0

    .line 725
    :try_start_d2
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 726
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload failed for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 728
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_fb
    .catchall {:try_start_d2 .. :try_end_fb} :catchall_128

    .line 747
    :goto_fb
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto/16 :goto_b

    .line 730
    :cond_101
    :try_start_101
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload failed for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " on media unmounted: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_127
    .catchall {:try_start_101 .. :try_end_127} :catchall_128

    goto :goto_fb

    .line 747
    :catchall_128
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    throw v0

    .line 735
    :catch_12d
    move-exception v0

    .line 736
    :try_start_12e
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload failed for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; retry later"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 738
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_161
    .catchall {:try_start_12e .. :try_end_161} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto/16 :goto_b

    .line 741
    :catch_167
    move-exception v0

    .line 742
    :try_start_168
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload failed for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 743
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 744
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_18b
    .catchall {:try_start_168 .. :try_end_18b} :catchall_128

    .line 747
    invoke-virtual {v4}, Lcom/google/android/picasasync/GDataUploader;->close()V

    move-object v0, v3

    goto/16 :goto_b

    .line 760
    :cond_191
    :try_start_191
    sget-object v4, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   back off "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V
    :try_end_1ad
    .catchall {:try_start_191 .. :try_end_1ad} :catchall_1c0

    .line 763
    :try_start_1ad
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1b0
    .catchall {:try_start_1ad .. :try_end_1b0} :catchall_1c0
    .catch Ljava/lang/InterruptedException; {:try_start_1ad .. :try_end_1b0} :catch_1c3

    .line 769
    :goto_1b0
    const-wide/16 v4, 0x2

    mul-long/2addr v1, v4

    .line 771
    :cond_1b3
    :try_start_1b3
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->shouldRetry()Z

    move-result v4

    if-eqz v4, :cond_1cc

    .line 772
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/android/picasasync/UploadTaskEntry;->setState(I)V

    .line 776
    monitor-exit p1

    goto/16 :goto_15

    :catchall_1c0
    move-exception v0

    monitor-exit p1
    :try_end_1c2
    .catchall {:try_start_1b3 .. :try_end_1c2} :catchall_1c0

    throw v0

    .line 764
    :catch_1c3
    move-exception v4

    .line 766
    :try_start_1c4
    sget-object v4, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v5, "waiting being interrupted!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b0

    .line 774
    :cond_1cc
    monitor-exit p1
    :try_end_1cd
    .catchall {:try_start_1c4 .. :try_end_1cd} :catchall_1c0

    move-object v0, v3

    goto/16 :goto_b
.end method

.method private static fillExif(Lcom/google/android/picasasync/PhotoEntry;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 915
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "examine exif info in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 917
    const-string v1, "Make"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifMake:Ljava/lang/String;

    .line 918
    const-string v1, "Model"

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifModel:Ljava/lang/String;

    .line 919
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_EXPOSURE_TIME:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v5}, Lcom/google/android/picasasync/UploadsManager;->getExifFloatByReflection(Landroid/media/ExifInterface;Ljava/lang/reflect/Field;F)F

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifExposure:F

    .line 920
    const-string v1, "Flash"

    invoke-virtual {v0, v1, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFlash:I

    .line 921
    const-string v1, "FocalLength"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFocalLength:F

    .line 922
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_APERTURE:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v5}, Lcom/google/android/picasasync/UploadsManager;->getExifFloatByReflection(Landroid/media/ExifInterface;Ljava/lang/reflect/Field;F)F

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifFstop:F

    .line 923
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->EXIF_TAG_ISO:Ljava/lang/reflect/Field;

    invoke-static {v0, v1, v4}, Lcom/google/android/picasasync/UploadsManager;->getExifIntByReflection(Landroid/media/ExifInterface;Ljava/lang/reflect/Field;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->exifIso:I

    .line 924
    const-string v1, "Orientation"

    invoke-virtual {v0, v1, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getRotationDegreeFromExifOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/picasasync/PhotoEntry;->rotation:I

    .line 926
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->sLatlon:[F

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 927
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sLatlon:[F

    aget v0, v0, v4

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/picasasync/PhotoEntry;->latitude:D

    .line 928
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sLatlon:[F

    aget v0, v0, v6

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/picasasync/PhotoEntry;->longitude:D

    .line 930
    :cond_7d
    return-void
.end method

.method private static getExifFloatByReflection(Landroid/media/ExifInterface;Ljava/lang/reflect/Field;F)F
    .registers 5
    .parameter "exif"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 868
    if-nez p1, :cond_3

    .line 870
    .end local p2
    :goto_2
    return p2

    .restart local p2
    :cond_3
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/gallery3d/common/Utils;->parseFloatSafely(Ljava/lang/String;F)F
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_12} :catch_14

    move-result p2

    goto :goto_2

    .line 872
    :catch_14
    move-exception v0

    .line 873
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getExifIntByReflection(Landroid/media/ExifInterface;Ljava/lang/reflect/Field;I)I
    .registers 5
    .parameter "exif"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 879
    if-nez p1, :cond_3

    .line 881
    .end local p2
    :goto_2
    return p2

    .restart local p2
    :cond_3
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/gallery3d/common/Utils;->parseIntSafely(Ljava/lang/String;I)I
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_12} :catch_14

    move-result p2

    goto :goto_2

    .line 882
    :catch_14
    move-exception v0

    .line 883
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 791
    if-nez p1, :cond_5

    const-string p1, "No title"

    .line 793
    :cond_4
    :goto_4
    return-object p1

    .line 792
    :cond_5
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 793
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method private getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 898
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 899
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_16
    :goto_16
    return-object v0

    .line 903
    :cond_17
    :try_start_17
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_35

    move-result-object v1

    .line 904
    :try_start_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_48

    move-result-object v0

    .line 908
    :goto_2d
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :cond_33
    move-object v0, v6

    .line 904
    goto :goto_2d

    .line 905
    :catch_35
    move-exception v0

    move-object v0, v6

    .line 908
    :goto_37
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3c
    move-object v0, v6

    goto :goto_16

    :catchall_3e
    move-exception v0

    move-object v1, v6

    :goto_40
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0

    :catchall_46
    move-exception v0

    goto :goto_40

    .line 905
    :catch_48
    move-exception v0

    move-object v0, v1

    goto :goto_37
.end method

.method private static getFsId(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 488
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 490
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 491
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2b

    move-result v1

    .line 497
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1e
    return v1

    .line 493
    :cond_1f
    :try_start_1f
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "No FSID on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2b

    .line 494
    const/4 v1, -0x1

    .line 497
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1e

    :catchall_2b
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 152
    const-class v1, Lcom/google/android/picasasync/UploadsManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;

    if-nez v0, :cond_e

    .line 153
    new-instance v0, Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/UploadsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;

    .line 155
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->sInstance:Lcom/google/android/picasasync/UploadsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 152
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMaxDisplayIndex()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 855
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/google/android/picasasync/UploadsManager;->QUERY_MAX_DISPLAY_INDEX:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 857
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 861
    :goto_10
    return v1

    .line 859
    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    move-result v1

    .line 861
    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_10

    :catchall_20
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private getNextTaskFromDb(I)Lcom/google/android/picasasync/UploadTaskEntry;
    .registers 11
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 933
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 935
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority=?"

    const-string v7, "priority,_id"

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 938
    if-nez v1, :cond_26

    .line 955
    :goto_25
    return-object v5

    .line 940
    :cond_26
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 941
    invoke-static {v1}, Lcom/google/android/picasasync/UploadTaskEntry;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/picasasync/UploadTaskEntry;

    move-result-object v0

    .line 942
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 943
    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/UploadsManager;->isValidAccount(Ljava/lang/String;)Z
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_7e

    move-result v2

    if-eqz v2, :cond_4b

    .line 955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v5, v0

    goto :goto_25

    .line 946
    :cond_4b
    :try_start_4b
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid account, remove all tasks in DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->removeAllTasksFromDb(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/UploadsManager;->getNextTaskFromDb(I)Lcom/google/android/picasasync/UploadTaskEntry;
    :try_end_75
    .catchall {:try_start_4b .. :try_end_75} :catchall_7e

    move-result-object v5

    .line 955
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :cond_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :catchall_7e
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getRotationDegreeFromExifOrientation(I)I
    .registers 2
    .parameter "orientation"

    .prologue
    .line 888
    packed-switch p0, :pswitch_data_e

    .line 892
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 889
    :pswitch_5
    const/16 v0, 0x5a

    goto :goto_4

    .line 890
    :pswitch_8
    const/16 v0, 0xb4

    goto :goto_4

    .line 891
    :pswitch_b
    const/16 v0, 0x10e

    goto :goto_4

    .line 888
    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .registers 4
    .parameter "thread"

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$2;-><init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private isAndroidUpgraded()Z
    .registers 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "system_release"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, systemRelease:Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 332
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "system_release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System upgrade from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x1

    .line 336
    :goto_47
    return v1

    :cond_48
    const/4 v1, 0x0

    goto :goto_47
.end method

.method private isExternalStorageMounted()Z
    .registers 3

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .registers 8
    .parameter "accountName"

    .prologue
    .line 340
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_1b

    aget-object v0, v1, v2

    .line 341
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    .line 343
    .end local v0           #a:Landroid/accounts/Account;
    :goto_17
    return v4

    .line 340
    .restart local v0       #a:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 343
    .end local v0           #a:Landroid/accounts/Account;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_17
.end method

.method private loadSavedStates()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 271
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->printSettings()V

    .line 273
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-static {v8, v9, v10}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 274
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load newPhotoTracker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "upload_all_accounts"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, allAccountsString:Ljava/lang/String;
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load all accounts: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 279
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_5c
    if-ge v5, v6, :cond_a0

    aget-object v0, v4, v5

    .line 280
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 279
    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 281
    :cond_69
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-static {v8, v0, v9, v10}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v7

    .line 283
    .local v7, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    if-eqz v7, :cond_66

    .line 285
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   load "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v7}, Lcom/google/android/picasasync/PhotoTracker;->allDone()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 288
    invoke-direct {p0, v7}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V

    .line 289
    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/google/android/picasasync/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V

    goto :goto_66

    .line 294
    .end local v0           #account:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :cond_a0
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "synced_account_albums"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, allAccountAlbums:Ljava/lang/String;
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load all account-album pairs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_101

    .line 297
    const-string v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v6, v4

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_d2
    if-ge v5, v6, :cond_101

    aget-object v1, v4, v5

    .line 298
    .local v1, accountAlbum:Ljava/lang/String;
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    account,album = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_fb

    .line 297
    :goto_f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 300
    :cond_fb
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 304
    .end local v1           #accountAlbum:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_101
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "external_storage_fsid"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 305
    iget-boolean v8, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-eqz v8, :cond_11a

    .line 306
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v9, "external_storage_fsid"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 309
    :cond_11a
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isAndroidUpgraded()Z

    move-result v8

    if-eqz v8, :cond_128

    .line 312
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->resetStates()V

    .line 313
    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v8}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->reset()V

    .line 315
    :cond_128
    return-void
.end method

.method private declared-synchronized onFsIdChangedInternal()V
    .registers 5

    .prologue
    .line 454
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4b

    move-result v1

    if-nez v1, :cond_9

    .line 484
    :goto_7
    monitor-exit p0

    return-void

    .line 456
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->getFsId(Landroid/content/Context;)I

    move-result v0

    .line 457
    .local v0, fsId:I
    iget-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-nez v1, :cond_4e

    .line 459
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set fsid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/picasasync/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 461
    iput v0, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 462
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    :goto_3f
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_4b

    goto :goto_7

    .line 454
    .end local v0           #fsId:I
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 463
    .restart local v0       #fsId:I
    :cond_4e
    :try_start_4e
    iget v1, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    if-ne v1, v0, :cond_6e

    .line 464
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "fsid not changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "synced_account_albums"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_3f

    .line 472
    :cond_6e
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fsid changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput v0, p0, Lcom/google/android/picasasync/UploadsManager;->mExternalStorageFsId:I

    .line 474
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->resetStates()V

    .line 478
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V

    .line 479
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->reset()V
    :try_end_ae
    .catchall {:try_start_4e .. :try_end_ae} :catchall_4b

    goto :goto_3f
.end method

.method private declared-synchronized printSettings()V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 348
    monitor-enter p0

    :try_start_2
    sget-object v7, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_d9

    move-result v7

    if-nez v7, :cond_d

    .line 367
    :goto_b
    monitor-exit p0

    return-void

    .line 349
    :cond_d
    :try_start_d
    iget-object v7, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-static {v7, v8, v9}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v5

    .line 351
    .local v5, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    sget-object v7, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v8, "***** print settings"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v8, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   autoUploadEnabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v5, :cond_cd

    const/4 v7, 0x1

    :goto_2e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    sget-object v7, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   autoUploadAccount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v6

    :cond_4c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   new photoTracker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "upload_all_accounts"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, allAccountsString:Ljava/lang/String;
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   accounts for old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d0

    .line 359
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9e
    if-ge v3, v4, :cond_d0

    aget-object v0, v2, v3

    .line 360
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ca

    .line 361
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   old photoTracker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-static {v8, v0, v9, v10}, Lcom/google/android/picasasync/PhotoTracker;->createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/picasasync/UploadsDatabaseHelper;)Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 352
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #allAccountsString:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_cd
    const/4 v7, 0x0

    goto/16 :goto_2e

    .line 366
    .restart local v1       #allAccountsString:Ljava/lang/String;
    :cond_d0
    sget-object v6, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v7, "***** end print settings"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_d .. :try_end_d7} :catchall_d9

    goto/16 :goto_b

    .line 348
    .end local v1           #allAccountsString:Ljava/lang/String;
    .end local v5           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :catchall_d9
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized reloadSystemSettingsInternal()V
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 375
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 378
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_28

    .line 379
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_3b

    .line 437
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    .line 382
    :cond_28
    const/4 v6, 0x0

    .line 383
    .local v6, autoUploadEnabled:Z
    const/4 v9, 0x0

    .line 385
    .local v9, syncAccount:Ljava/lang/String;
    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 386
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   failed to query system settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_127

    .line 396
    :try_start_37
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_26

    .line 375
    .end local v6           #autoUploadEnabled:Z
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #syncAccount:Ljava/lang/String;
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 389
    .restart local v6       #autoUploadEnabled:Z
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #syncAccount:Ljava/lang/String;
    :cond_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_118

    move v6, v10

    .line 390
    :goto_46
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 391
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11b

    move v0, v10

    :goto_53
    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyPhoto:Z

    .line 392
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_11e

    move v0, v10

    :goto_5d
    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mWifiOnlyVideo:Z

    .line 393
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_121

    move v0, v10

    :goto_67
    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnRoaming:Z

    .line 394
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_124

    move v0, v10

    :goto_71
    iput-boolean v0, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncOnBattery:Z
    :try_end_73
    .catchall {:try_start_3f .. :try_end_73} :catchall_127

    .line 396
    :try_start_73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    if-nez v6, :cond_12c

    .line 399
    const/4 v9, 0x0

    .line 405
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    if-eqz v0, :cond_135

    .line 406
    .local v10, wasAutoUploadEnabled:Z
    :goto_7d
    if-eqz v10, :cond_85

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, previousSyncAccount:Ljava/lang/String;
    :cond_85
    invoke-static {v8, v9}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    .line 409
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   account changed from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_a7
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- new settings:autoupload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",account="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V

    .line 422
    if-eqz v6, :cond_143

    .line 423
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   create mNewPhotoTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v0, Lcom/google/android/picasasync/PhotoTracker;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 425
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PhotoTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    :goto_f4
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    instance-of v0, v0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    check-cast v0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->getMediaTracker()Lcom/google/android/picasasync/PhotoTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 434
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   cancel task from mNewPhotoTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;

    check-cast v0, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager$AutoUploadTask;->cancel()V

    goto/16 :goto_26

    .end local v8           #previousSyncAccount:Ljava/lang/String;
    .end local v10           #wasAutoUploadEnabled:Z
    :cond_118
    move v6, v11

    .line 389
    goto/16 :goto_46

    :cond_11b
    move v0, v11

    .line 391
    goto/16 :goto_53

    :cond_11e
    move v0, v11

    .line 392
    goto/16 :goto_5d

    :cond_121
    move v0, v11

    .line 393
    goto/16 :goto_67

    :cond_124
    move v0, v11

    .line 394
    goto/16 :goto_71

    .line 396
    :catchall_127
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 400
    :cond_12c
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 402
    const/4 v6, 0x0

    goto/16 :goto_79

    :cond_135
    move v10, v11

    .line 405
    goto/16 :goto_7d

    .line 412
    .restart local v8       #previousSyncAccount:Ljava/lang/String;
    .restart local v10       #wasAutoUploadEnabled:Z
    :cond_138
    if-ne v6, v10, :cond_a7

    .line 414
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   settings not changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 427
    :cond_143
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v1, "   remove mNewPhotoTracker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :try_end_14d
    .catchall {:try_start_73 .. :try_end_14d} :catchall_3b

    goto :goto_f4
.end method

.method private removeAllTasksFromDb(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    const-string v2, "account=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 962
    return-void
.end method

.method private removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V
    .registers 9
    .parameter "mediaTracker"

    .prologue
    .line 1035
    if-nez p1, :cond_3

    .line 1056
    :goto_2
    return-void

    .line 1037
    :cond_3
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1038
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1, v2}, Lcom/google/android/picasasync/PhotoTracker;->removeStates(Landroid/content/SharedPreferences$Editor;)V

    .line 1040
    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->isTrackingNewMedia()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1042
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_5d

    const/4 v5, 0x1

    :goto_27
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1043
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string v5, ","

    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, accounts:Ljava/lang/String;
    const-string v5, "upload_all_accounts"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    .end local v1           #accounts:Ljava/lang/String;
    :cond_40
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1051
    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->getCurrentTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/picasasync/UploadTaskEntry;

    .line 1052
    .local v4, task:Lcom/google/android/picasasync/UploadTaskEntry;
    iget-wide v5, v4, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-direct {p0, v5, v6}, Lcom/google/android/picasasync/UploadsManager;->removeTaskFromDb(J)Z

    goto :goto_4b

    .line 1042
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #task:Lcom/google/android/picasasync/UploadTaskEntry;
    :cond_5d
    const/4 v5, 0x0

    goto :goto_27

    .line 1055
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->printSettings()V

    goto :goto_2
.end method

.method private declared-synchronized removeTaskFromDb(J)Z
    .registers 12
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 622
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasasync/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_21

    move-result v0

    .line 625
    .local v0, rowCount:I
    if-ne v0, v1, :cond_1f

    :goto_1d
    monitor-exit p0

    return v1

    :cond_1f
    move v1, v2

    goto :goto_1d

    .line 622
    .end local v0           #rowCount:I
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    .registers 12
    .parameter "photoTracker"
    .parameter "allDone"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1075
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1076
    .local v0, now:J
    if-nez p2, :cond_12

    iget-wide v5, p0, Lcom/google/android/picasasync/UploadsManager;->mLastReportTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-lez v2, :cond_20

    .line 1077
    :cond_12
    iput-wide v0, p0, Lcom/google/android/picasasync/UploadsManager;->mLastReportTime:J

    .line 1078
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_21

    move v2, v3

    :goto_19
    invoke-static {v5, v3, v2, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1081
    :cond_20
    return-void

    :cond_21
    move v2, v4

    .line 1078
    goto :goto_19
.end method

.method private resetStates()V
    .registers 5

    .prologue
    .line 318
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    invoke-direct {p0, v2}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V

    .line 319
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mNewPhotoTracker:Lcom/google/android/picasasync/PhotoTracker;

    .line 321
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/picasasync/PhotoTracker;

    .line 322
    .local v1, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/UploadsManager;->removeMediaTracker(Lcom/google/android/picasasync/PhotoTracker;)V

    .line 323
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V

    goto :goto_17

    .line 325
    .end local v1           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :cond_2b
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "synced_account_albums"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mSyncedAccountAlbumPairs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 327
    return-void
.end method

.method private retrieveAllFingerprints(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/gallery3d/common/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1003
    if-nez p1, :cond_5

    move-object v0, v8

    .line 1030
    :goto_4
    return-object v0

    .line 1005
    :cond_5
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveAllFingerprints for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1007
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1008
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1010
    :try_start_2f
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_79

    move-result-wide v5

    .line 1011
    const-wide/16 v1, -0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_40

    .line 1030
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v8

    goto :goto_4

    .line 1013
    :cond_40
    :try_start_40
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    const-string v3, "camera_sync=1 AND user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_79

    move-result-object v2

    .line 1016
    if-nez v2, :cond_5e

    .line 1030
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v8

    goto :goto_4

    .line 1019
    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1020
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1022
    if-eqz v1, :cond_5e

    new-instance v3, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_74

    goto :goto_5e

    .line 1027
    :catchall_74
    move-exception v1

    :try_start_75
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_79

    .line 1030
    :catchall_79
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1024
    :cond_7e
    :try_start_7e
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create fingerprint set:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_7e .. :try_end_9a} :catchall_74

    .line 1027
    :try_start_9a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_79

    .line 1030
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v0, v9

    goto/16 :goto_4
.end method

.method private saveOldPhotoTrackerAccounts(Landroid/content/SharedPreferences$Editor;)V
    .registers 5
    .parameter "edit"

    .prologue
    .line 1059
    const-string v1, ","

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    .local v0, accounts:Ljava/lang/String;
    const-string v1, "upload_all_accounts"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1062
    return-void
.end method

.method private sendUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1065
    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->getExistingMediaTotalCount()I

    move-result v1

    .line 1066
    if-eqz p2, :cond_27

    move v0, v1

    .line 1067
    :goto_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.picasasync.upload_all_progress"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    const-string v3, "upload_all_account"

    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v3, "upload_all_progress"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    const-string v0, "upload_all_count"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    return-void

    .line 1066
    :cond_27
    invoke-virtual {p1}, Lcom/google/android/picasasync/PhotoTracker;->getExistingMediaUploadProgress()I

    move-result v0

    goto :goto_7
.end method

.method private sendUploadCompleteEvent(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 685
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_7

    .line 691
    :goto_6
    return-void

    .line 686
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.picasasync.upload_on_demand_complete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 688
    const-string v2, "upload_on_demand_uri"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const-string v2, "upload_on_demand_result"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private declared-synchronized setCurrentUploadTask(Lcom/google/android/picasasync/UploadsManager$UploadTask;)V
    .registers 3
    .parameter "newUploadTask"

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager;->mCurrent:Lcom/google/android/picasasync/UploadsManager$UploadTask;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 630
    monitor-exit p0

    return-void

    .line 629
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPhotoSize(Lcom/google/android/picasasync/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 843
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 844
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 845
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p1, Lcom/google/android/picasasync/PhotoEntry;->width:I

    .line 846
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p1, Lcom/google/android/picasasync/PhotoEntry;->height:I
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 850
    :goto_18
    return-void

    .line 847
    :catch_19
    move-exception v0

    .line 848
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhotoSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private declared-synchronized updateTaskStateAndProgressInDb(Lcom/google/android/picasasync/UploadTaskEntry;)V
    .registers 7
    .parameter "task"

    .prologue
    .line 604
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->isReadyForUpload()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_47

    move-result v2

    if-nez v2, :cond_9

    .line 618
    :goto_7
    monitor-exit p0

    return-void

    .line 606
    :cond_9
    :try_start_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 607
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "state"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v2, "bytes_uploaded"

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, uploadUrl:Ljava/lang/String;
    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 613
    const-string v2, "upload_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_3b
    sget-object v2, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_47

    goto :goto_7

    .line 604
    .end local v0           #uploadUrl:Ljava/lang/String;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized uploadExistingPhotosInternal(Ljava/lang/String;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable existing photos upload for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v1, Lcom/google/android/picasasync/PhotoTracker;

    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/google/android/picasasync/PhotoTracker;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 540
    .local v1, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    invoke-virtual {v1}, Lcom/google/android/picasasync/PhotoTracker;->allDone()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 541
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v3, "no existing photo to upload"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_4a

    .line 560
    :goto_36
    monitor-exit p0

    return-void

    .line 544
    :cond_38
    :try_start_38
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 545
    sget-object v2, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v3, "ext storage unmounted; skip upload now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/picasasync/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_4a

    goto :goto_36

    .line 535
    .end local v1           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :catchall_4a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 552
    .restart local v1       #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :cond_4d
    :try_start_4d
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 556
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/UploadsManager;->saveOldPhotoTrackerAccounts(Landroid/content/SharedPreferences$Editor;)V

    .line 558
    invoke-virtual {v1, v0}, Lcom/google/android/picasasync/PhotoTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 559
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->printSettings()V
    :try_end_70
    .catchall {:try_start_4d .. :try_end_70} :catchall_4a

    goto :goto_36
.end method

.method private writeToPhotoTable(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/UploadedEntry;Landroid/content/SyncResult;)Z
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 801
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    .line 802
    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getRealAlbumId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    if-nez v3, :cond_1a

    .line 804
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "no album to write new photo data to"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_19
    return v0

    .line 807
    :cond_1a
    iget-object v4, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J

    move-result-wide v4

    .line 808
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_32

    .line 809
    sget-object v1, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v2, "no user owns the photo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 812
    :cond_32
    iget-object v6, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 813
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    .line 814
    invoke-direct {p0, v7, v6}, Lcom/google/android/picasasync/UploadsManager;->getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 815
    new-instance v9, Lcom/google/android/picasasync/PhotoEntry;

    invoke-direct {v9}, Lcom/google/android/picasasync/PhotoEntry;-><init>()V

    .line 816
    iget-wide v10, p2, Lcom/google/android/picasasync/UploadedEntry;->idFromServer:J

    iput-wide v10, v9, Lcom/google/android/picasasync/PhotoEntry;->id:J

    .line 817
    iput-wide v4, v9, Lcom/google/android/picasasync/PhotoEntry;->userId:J

    .line 818
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v9, Lcom/google/android/picasasync/PhotoEntry;->albumId:J

    .line 819
    invoke-direct {p0, v8}, Lcom/google/android/picasasync/UploadsManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/picasasync/PhotoEntry;->title:Ljava/lang/String;

    .line 820
    iget-wide v3, p2, Lcom/google/android/picasasync/UploadedEntry;->bytesTotal:J

    long-to-int v3, v3

    iput v3, v9, Lcom/google/android/picasasync/PhotoEntry;->size:I

    .line 821
    iget-object v3, p2, Lcom/google/android/picasasync/UploadedEntry;->url:Ljava/lang/String;

    iput-object v3, v9, Lcom/google/android/picasasync/PhotoEntry;->contentUrl:Ljava/lang/String;

    .line 822
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/picasasync/PhotoEntry;->contentType:Ljava/lang/String;

    .line 823
    iget-object v3, p2, Lcom/google/android/picasasync/UploadedEntry;->fingerprint:[B

    iput-object v3, v9, Lcom/google/android/picasasync/PhotoEntry;->fingerprint:[B

    .line 824
    iget v3, p2, Lcom/google/android/picasasync/UploadedEntry;->fingerprintHash:I

    iput v3, v9, Lcom/google/android/picasasync/PhotoEntry;->fingerprintHash:I

    .line 825
    iget-wide v3, p2, Lcom/google/android/picasasync/UploadedEntry;->timestamp:J

    iput-wide v3, v9, Lcom/google/android/picasasync/PhotoEntry;->dateTaken:J

    .line 826
    const-string v3, "camera-sync"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    move v0, v1

    :cond_7b
    iput v0, v9, Lcom/google/android/picasasync/PhotoEntry;->cameraSync:I

    .line 827
    invoke-direct {p0, v9, v7, v6}, Lcom/google/android/picasasync/UploadsManager;->setPhotoSize(Lcom/google/android/picasasync/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 828
    invoke-direct {p0}, Lcom/google/android/picasasync/UploadsManager;->getMaxDisplayIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/google/android/picasasync/PhotoEntry;->displayIndex:I

    .line 830
    if-eqz v8, :cond_8d

    :try_start_8a
    invoke-static {v9, v8}, Lcom/google/android/picasasync/UploadsManager;->fillExif(Lcom/google/android/picasasync/PhotoEntry;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_c2

    .line 835
    :cond_8d
    :goto_8d
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mPicasaDbHelper:Lcom/google/android/picasasync/PicasaDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    move-result-wide v3

    .line 836
    sget-object v0, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write to photo table: ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", album="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 837
    goto/16 :goto_19

    .line 831
    :catch_c2
    move-exception v0

    .line 832
    sget-object v3, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    const-string v4, "fillExif"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8d
.end method


# virtual methods
.method public addTask(Lcom/google/android/picasasync/UploadTaskEntry;)J
    .registers 9
    .parameter "task"

    .prologue
    .line 509
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setPriority(I)V

    .line 510
    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 511
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/google/android/picasasync/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v3, v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    move-result-wide v1

    .line 512
    .local v1, id:J
    sget-object v3, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manual upload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/picasasync/UploadTaskEntry;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v3, p0, Lcom/google/android/picasasync/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 514
    return-wide v1
.end method

.method public cancelTask(J)V
    .registers 6
    .parameter "taskId"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 520
    return-void
.end method

.method public cancelUploadExistingPhotos(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 564
    return-void
.end method

.method public getExistingPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1096
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$ExistingMediaUploadTaskProvider;

    const-string v1, "photo"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$ExistingMediaUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExistingVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1100
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$ExistingMediaUploadTaskProvider;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$ExistingMediaUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFingerprintManager()Lcom/google/android/picasasync/FingerprintManager;
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mFingerprintManager:Lcom/google/android/picasasync/FingerprintManager;

    return-object v0
.end method

.method public getNewPhotoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1088
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;

    const-string v1, "photo"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNewVideoUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1092
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$NewMediaUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadStatus(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "account"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 580
    sget-object v5, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get photos upload status for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v1, Lcom/google/android/picasasync/PicasaMatrixCursor;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "upload_all_account"

    aput-object v6, v5, v4

    const-string v6, "upload_all_progress"

    aput-object v6, v5, v0

    const/4 v6, 0x2

    const-string v7, "upload_all_count"

    aput-object v7, v5, v6

    invoke-direct {v1, v5}, Lcom/google/android/picasasync/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 586
    .local v1, cursor:Lcom/google/android/picasasync/PicasaMatrixCursor;
    if-eqz p1, :cond_87

    .line 587
    iget-object v5, p0, Lcom/google/android/picasasync/UploadsManager;->mOldPhotoTrackerMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/picasasync/PhotoTracker;

    .line 588
    .local v2, photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    if-nez v2, :cond_88

    .line 589
    .local v0, allDone:Z
    :goto_3f
    if-eqz v0, :cond_8a

    .line 590
    .local v4, totalCount:I
    :goto_41
    if-eqz v0, :cond_8f

    move v3, v4

    .line 593
    .local v3, progress:I
    :goto_44
    sget-object v5, Lcom/google/android/picasasync/UploadsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "done? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaMatrixCursor;->newRow()Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/picasasync/PicasaMatrixCursor$RowBuilder;

    .line 600
    .end local v0           #allDone:Z
    .end local v2           #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    .end local v3           #progress:I
    .end local v4           #totalCount:I
    :cond_87
    return-object v1

    .restart local v2       #photoTracker:Lcom/google/android/picasasync/PhotoTracker;
    :cond_88
    move v0, v4

    .line 588
    goto :goto_3f

    .line 589
    .restart local v0       #allDone:Z
    :cond_8a
    invoke-virtual {v2}, Lcom/google/android/picasasync/PhotoTracker;->getExistingMediaTotalCount()I

    move-result v4

    goto :goto_41

    .line 590
    .restart local v4       #totalCount:I
    :cond_8f
    invoke-virtual {v2}, Lcom/google/android/picasasync/PhotoTracker;->getExistingMediaUploadProgress()I

    move-result v3

    goto :goto_44
.end method

.method public getUploadsDatabaseHelper()Lcom/google/android/picasasync/UploadsDatabaseHelper;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mUploadsDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    return-object v0
.end method

.method public getUrgentUploadTaskProvider()Lcom/google/android/picasasync/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1084
    new-instance v0, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasasync/UploadsManager$UrgentUploadTaskProvider;-><init>(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/UploadsManager$1;)V

    return-object v0
.end method

.method public onMediaMounted()V
    .registers 1

    .prologue
    .line 451
    return-void
.end method

.method public reloadSystemSettings()V
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 372
    return-void
.end method

.method public uploadExistingPhotos(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/picasasync/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 532
    return-void
.end method
