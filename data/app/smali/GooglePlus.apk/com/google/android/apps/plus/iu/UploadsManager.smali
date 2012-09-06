.class Lcom/google/android/apps/plus/iu/UploadsManager;
.super Ljava/lang/Object;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;,
        Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;,
        Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;,
        Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;,
        Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareUploadTaskProvider;,
        Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;,
        Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

.field private static final PROJECTION_FINGERPRINT:[Ljava/lang/String;

.field private static final UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

.field private static final UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/apps/plus/iu/UploadsManager;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

.field private mEventId:Ljava/lang/String;

.field private mExternalStorageFsId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

.field private volatile mIsExternalStorageFsIdReady:Z

.field private mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

.field private final mOldMediaTrackerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/iu/MediaTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

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

.field private mReloadSystemSettingDelay:J

.field private mResetDelay:J

.field private final mSettings:Landroid/content/SharedPreferences;

.field private final mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

.field private mSyncOnBattery:Z

.field private mSyncOnRoaming:Z

.field private mSyncedAccounts:Ljava/util/HashSet;
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

.field private final mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

.field private mWifiOnlyPhoto:Z

.field private mWifiOnlyVideo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "fingerprint"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auto_upload_enabled"

    aput-object v1, v0, v3

    const-string v1, "auto_upload_account_name"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "sync_on_wifi_only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "video_upload_wifi_only"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_on_roaming"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync_on_battery"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "instant_share_eventid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "instant_share_endtime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "COUNT(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 107
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    .line 144
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    .line 151
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;

    .line 161
    iput-boolean v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 163
    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mResetDelay:J

    .line 164
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mReloadSystemSettingDelay:J

    .line 167
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    .line 168
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 169
    new-instance v1, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    .line 170
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    .line 172
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "picasa-uploads-manager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    .line 179
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->loadSavedStates()V

    .line 183
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->isAndroidUpgraded()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reset()V

    .line 191
    :goto_68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/apps/plus/iu/UploadsManager$1;

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/google/android/apps/plus/iu/UploadsManager$1;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void

    .line 186
    :cond_83
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsInternal(Landroid/database/Cursor;)V

    goto :goto_68
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/iu/UploadsManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->onFsIdChangedInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/iu/UploadsManager;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeTaskFromDb(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->recordResult(Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/UploadsManager;->doUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;Landroid/content/SyncResult;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/UploadsManager;->writeToPhotoTable(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;Landroid/content/SyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/plus/iu/UploadsManager;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsInternal(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/iu/UploadsManager;->sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/content/Context;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->hasNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getInstantShareTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getAutoUploadNewPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/iu/UploadsManager;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelTaskInternal(J)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getAutoUploadOldPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)Lcom/google/android/apps/plus/iu/MediaTracker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/android/apps/plus/iu/UploadsManager;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsQuery()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyPhoto:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->uploadExistingPhotosInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnRoaming:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/google/android/apps/plus/iu/UploadsManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnBattery:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    return-void
.end method

.method static synthetic access$4300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelUploadExistingPhotosInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/iu/UploadsManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reset()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->setCurrentUploadTask(Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private accountExists(Ljava/lang/String;)Z
    .registers 8
    .parameter "accountName"

    .prologue
    .line 348
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mAccountManager:Landroid/accounts/AccountManager;

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

    .line 349
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 350
    const/4 v4, 0x1

    .line 353
    .end local v0           #a:Landroid/accounts/Account;
    :goto_17
    return v4

    .line 348
    .restart local v0       #a:Landroid/accounts/Account;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 353
    .end local v0           #a:Landroid/accounts/Account;
    :cond_1b
    const/4 v4, 0x0

    goto :goto_17
.end method

.method private cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    .registers 5
    .parameter "tracker"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    instance-of v0, v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    check-cast v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->getMediaTracker()Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v0

    if-ne v0, p1, :cond_38

    .line 570
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 571
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel autoUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    check-cast v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->cancel()V

    .line 575
    :cond_38
    return-void
.end method

.method private declared-synchronized cancelTaskInternal(J)V
    .registers 7
    .parameter "taskId"

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;->cancelIfCurrentTaskMatches(J)Z

    move-result v1

    if-nez v1, :cond_48

    .line 671
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->getTaskFromDb(J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v0

    .line 672
    .local v0, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    if-eqz v0, :cond_48

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeTaskFromDb(J)Z

    .line 674
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 675
    new-instance v1, Lcom/google/android/apps/plus/iu/UploadedEntry;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/iu/UploadedEntry;-><init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->recordResult(Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;

    .line 676
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->notifyManualUploadDbChanges(Z)V

    .line 678
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 679
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- CANCEL task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    .line 683
    .end local v0           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_48
    monitor-exit p0

    return-void

    .line 668
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized cancelUploadExistingPhotosInternal(Ljava/lang/String;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 731
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 732
    .local v0, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    if-eqz v0, :cond_25

    .line 733
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    instance-of v1, v1, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    check-cast v1, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->getMediaTracker()Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v1

    if-ne v0, v1, :cond_22

    .line 735
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    check-cast v1, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->cancel()V

    .line 737
    :cond_22
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 740
    :cond_25
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 741
    const-string v1, "iu.UploadsManager"

    const-string v2, "--- CANCEL upload all"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 743
    :cond_35
    monitor-exit p0

    return-void

    .line 731
    .end local v0           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :catchall_37
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private doUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;Landroid/content/SyncResult;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 15
    .parameter "task"
    .parameter "progressListener"
    .parameter "syncResult"

    .prologue
    .line 862
    monitor-enter p0

    .line 863
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isReadyForUpload()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 864
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 869
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_27

    .line 871
    const-wide/16 v0, 0x3e8

    .line 872
    .local v0, delay:J
    const/4 v3, 0x0

    .line 873
    .local v3, retryCount:I
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadUrl:Ljava/lang/String;

    .line 875
    :goto_15
    new-instance v5, Lcom/google/android/apps/plus/iu/GDataUploader;

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/GDataUploader;-><init>(Landroid/content/Context;)V

    .line 877
    .local v5, uploader:Lcom/google/android/apps/plus/iu/GDataUploader;
    :try_start_1c
    invoke-virtual {v5, p1, p2}, Lcom/google/android/apps/plus/iu/GDataUploader;->upload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1b1
    .catch Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException; {:try_start_1c .. :try_end_1f} :catch_2a
    .catch Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException; {:try_start_1c .. :try_end_1f} :catch_55
    .catch Lcom/google/android/apps/plus/iu/Uploader$RestartException; {:try_start_1c .. :try_end_1f} :catch_80
    .catch Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException; {:try_start_1c .. :try_end_1f} :catch_ed
    .catch Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException; {:try_start_1c .. :try_end_1f} :catch_123
    .catch Lcom/google/android/apps/plus/iu/Uploader$LocalIoException; {:try_start_1c .. :try_end_1f} :catch_150
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_1b6
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_1eb

    move-result-object v6

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    .line 976
    .end local v0           #delay:J
    .end local v3           #retryCount:I
    .end local v5           #uploader:Lcom/google/android/apps/plus/iu/GDataUploader;
    :goto_23
    return-object v6

    .line 867
    :cond_24
    const/4 v6, 0x0

    :try_start_25
    monitor-exit p0

    goto :goto_23

    .line 869
    :catchall_27
    move-exception v6

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v6

    .line 878
    .restart local v0       #delay:J
    .restart local v3       #retryCount:I
    .restart local v5       #uploader:Lcom/google/android/apps/plus/iu/GDataUploader;
    :catch_2a
    move-exception v2

    .line 879
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;
    :try_start_2b
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 880
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; media changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    :cond_4c
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_50
    .catchall {:try_start_2b .. :try_end_50} :catchall_1b1

    .line 884
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto :goto_23

    .line 885
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;
    :catch_55
    move-exception v2

    .line 886
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;
    :try_start_56
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 887
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; media unavailable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 889
    :cond_77
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_56 .. :try_end_7b} :catchall_1b1

    .line 890
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto :goto_23

    .line 891
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;
    :catch_80
    move-exception v2

    .line 892
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$RestartException;
    :try_start_81
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 893
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; transient error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_81 .. :try_end_a2} :catchall_1b1

    .line 941
    :cond_a2
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    .line 945
    monitor-enter p0

    .line 946
    :try_start_a6
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isUploading()Z

    move-result v6

    if-eqz v6, :cond_24b

    .line 947
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x5

    if-le v3, v6, :cond_220

    .line 948
    const/4 v6, 0x5

    new-instance v7, Ljava/io/IOException;

    const-string v8, "max retries reached"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V

    .line 950
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 952
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 953
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- SKIP task; too many retries: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_e6
    const/4 v6, 0x0

    monitor-exit p0

    goto/16 :goto_23

    .line 978
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$RestartException;
    :catchall_ea
    move-exception v6

    monitor-exit p0
    :try_end_ec
    .catchall {:try_start_a6 .. :try_end_ec} :catchall_ea

    throw v6

    .line 897
    :catch_ed
    move-exception v2

    .line 898
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
    :try_start_ee
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 899
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; unauthorized: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    :cond_10f
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 902
    const/16 v6, 0x9

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_11d
    .catchall {:try_start_ee .. :try_end_11d} :catchall_1b1

    .line 903
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto/16 :goto_23

    .line 904
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
    :catch_123
    move-exception v2

    .line 905
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;
    :try_start_124
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 906
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; quota exceeded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    :cond_145
    const/16 v6, 0xa

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_14a
    .catchall {:try_start_124 .. :try_end_14a} :catchall_1b1

    .line 909
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto/16 :goto_23

    .line 910
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;
    :catch_150
    move-exception v2

    .line 911
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;
    :try_start_151
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 912
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_178

    .line 913
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    :cond_178
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 916
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_185
    .catchall {:try_start_151 .. :try_end_185} :catchall_1b1

    .line 924
    :goto_185
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto/16 :goto_23

    .line 918
    :cond_18b
    :try_start_18b
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1ac

    .line 919
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; media unmounted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    :cond_1ac
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_1b0
    .catchall {:try_start_18b .. :try_end_1b0} :catchall_1b1

    goto :goto_185

    .line 941
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;
    :catchall_1b1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    throw v6

    .line 925
    :catch_1b6
    move-exception v2

    .line 926
    .local v2, e:Ljava/io/IOException;
    :try_start_1b7
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 927
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PAUSE task; retryable exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    :cond_1d8
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    .line 930
    const/4 v6, 0x6

    invoke-direct {p0, p1, v6, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    :try_end_1e5
    .catchall {:try_start_1b7 .. :try_end_1e5} :catchall_1b1

    .line 932
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto/16 :goto_23

    .line 933
    .end local v2           #e:Ljava/io/IOException;
    :catch_1eb
    move-exception v4

    .line 934
    .local v4, t:Ljava/lang/Throwable;
    :try_start_1ec
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_20d

    .line 935
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL task: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    :cond_20d
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/apps/plus/iu/UploadsManager;->setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V

    .line 938
    iget-object v6, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_21a
    .catchall {:try_start_1ec .. :try_end_21a} :catchall_1b1

    .line 939
    const/4 v6, 0x0

    .line 941
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->close()V

    goto/16 :goto_23

    .line 958
    .end local v4           #t:Ljava/lang/Throwable;
    .local v2, e:Lcom/google/android/apps/plus/iu/Uploader$RestartException;
    :cond_220
    :try_start_220
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_241

    .line 959
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   back off "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_241
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V
    :try_end_245
    .catchall {:try_start_220 .. :try_end_245} :catchall_ea

    .line 963
    :try_start_245
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_ea
    .catch Ljava/lang/InterruptedException; {:try_start_245 .. :try_end_248} :catch_258

    .line 971
    .end local v2           #e:Lcom/google/android/apps/plus/iu/Uploader$RestartException;
    :cond_248
    :goto_248
    const-wide/16 v6, 0x2

    mul-long/2addr v0, v6

    .line 973
    :cond_24b
    :try_start_24b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->shouldRetry()Z

    move-result v6

    if-eqz v6, :cond_26a

    .line 974
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V

    .line 978
    monitor-exit p0

    goto/16 :goto_15

    .line 964
    .restart local v2       #e:Lcom/google/android/apps/plus/iu/Uploader$RestartException;
    :catch_258
    move-exception v2

    .line 966
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_248

    .line 967
    const-string v6, "iu.UploadsManager"

    const-string v7, "waiting being interrupted!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_248

    .line 976
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_26a
    const/4 v6, 0x0

    monitor-exit p0
    :try_end_26c
    .catchall {:try_start_24b .. :try_end_26c} :catchall_ea

    goto/16 :goto_23
.end method

.method private declared-synchronized getAutoUploadNewPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 8
    .parameter "mediaType"

    .prologue
    .line 1183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v0, :cond_55

    .line 1184
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1185
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collect new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_32
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v2

    .line 1188
    .local v2, account:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1190
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    const-string v5, "IU"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_57

    .line 1193
    .end local v2           #account:Ljava/lang/String;
    :goto_53
    monitor-exit p0

    return-object v0

    :cond_55
    const/4 v0, 0x0

    goto :goto_53

    .line 1183
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getAutoUploadOldPhotoTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 9
    .parameter "mediaType"

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 1199
    .local v3, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v2

    .line 1200
    .local v2, account:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1201
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1202
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect old "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_4e
    invoke-virtual {v3, p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1205
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    const-string v5, "upload all"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_61

    .line 1209
    .end local v2           #account:Ljava/lang/String;
    .end local v3           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :goto_5d
    monitor-exit p0

    return-object v0

    :cond_5f
    const/4 v0, 0x0

    goto :goto_5d

    .line 1198
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 1057
    if-nez p1, :cond_5

    .line 1058
    const-string p1, "No title"

    .line 1061
    .end local p1
    :cond_4
    :goto_4
    return-object p1

    .line 1060
    .restart local p1
    :cond_5
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1061
    .local v0, index:I
    if-lez v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method

.method private getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 12
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 1115
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1116
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1126
    :cond_16
    :goto_16
    return-object v0

    .line 1118
    :cond_17
    const/4 v6, 0x0

    .line 1120
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_18
    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_DATA:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1121
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_36

    move-result-object v0

    .line 1125
    :goto_2e
    if-eqz v6, :cond_16

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :cond_34
    move-object v0, v8

    .line 1121
    goto :goto_2e

    .line 1122
    :catch_36
    move-exception v7

    .line 1125
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_3c

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    move-object v0, v8

    goto :goto_16

    .line 1125
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method private static getFsId(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 626
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 628
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 629
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_34

    move-result v1

    .line 637
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1e
    return v1

    .line 631
    :cond_1f
    :try_start_1f
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 632
    const-string v1, "iu.UploadsManager"

    const-string v2, "No FSID on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_34

    .line 634
    :cond_2f
    const/4 v1, -0x1

    .line 637
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1e

    :catchall_34
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/UploadsManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 119
    const-class v1, Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->sInstance:Lcom/google/android/apps/plus/iu/UploadsManager;

    if-nez v0, :cond_e

    .line 120
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/UploadsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->sInstance:Lcom/google/android/apps/plus/iu/UploadsManager;

    .line 122
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadsManager;->sInstance:Lcom/google/android/apps/plus/iu/UploadsManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getInstantShareTask(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
    .registers 6
    .parameter "mediaType"

    .prologue
    .line 1168
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v1, :cond_51

    .line 1169
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1170
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collect share "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_32
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, account:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1175
    new-instance v1, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_53

    .line 1178
    .end local v0           #account:Ljava/lang/String;
    :goto_4f
    monitor-exit p0

    return-object v1

    :cond_51
    const/4 v1, 0x0

    goto :goto_4f

    .line 1168
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 14
    .parameter "typePrefix"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1132
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    .line 1136
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v2}, Lcom/android/gallery3d/common/EntrySchema;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "priority=? AND mime_type LIKE ?"

    const-string v7, "priority,_id"

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1139
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_29

    .line 1162
    :goto_28
    return-object v5

    .line 1143
    :cond_29
    :try_start_29
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1144
    invoke-static {v10}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->fromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v11

    .line 1145
    .local v11, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    invoke-virtual {v11}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v9

    .line 1146
    .local v9, account:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mProblematicAccounts:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1147
    invoke-direct {p0, v9}, Lcom/google/android/apps/plus/iu/UploadsManager;->accountExists(Ljava/lang/String;)Z
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_8e

    move-result v0

    if-eqz v0, :cond_4a

    .line 1162
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v5, v11

    goto :goto_28

    .line 1150
    :cond_4a
    :try_start_4a
    const-string v0, "iu.UploadsManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1151
    const-string v0, "iu.UploadsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid account, remove all uploads in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_6f
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_TASK_TABLE_NAME:Ljava/lang/String;

    const-string v2, "account=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getNextManualUploadFromDb(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_8e

    move-result-object v5

    .line 1162
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .end local v9           #account:Ljava/lang/String;
    .end local v11           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_8a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_8e
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getRecordCount(Landroid/database/sqlite/SQLiteDatabase;J)I
    .registers 13
    .parameter "db"
    .parameter "maxId"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1044
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    const-string v3, "_id<?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1047
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_29

    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1048
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2e

    move-result v0

    .line 1051
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1053
    :goto_28
    return v0

    .line 1051
    :cond_29
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v9

    .line 1053
    goto :goto_28

    .line 1051
    :catchall_2e
    move-exception v0

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getTaskFromDb(J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    .registers 4
    .parameter "id"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->fromDb(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-result-object v0

    return-object v0
.end method

.method private static hasNetworkConnectivity(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 1341
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1343
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .registers 4
    .parameter "thread"

    .prologue
    .line 202
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$2;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/os/Looper;)V

    return-object v0
.end method

.method private isAndroidUpgraded()Z
    .registers 5

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v2, "system_release"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, systemRelease:Ljava/lang/String;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 338
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "system_release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 340
    const-string v1, "iu.UploadsManager"

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

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_4f
    const/4 v1, 0x1

    .line 344
    :goto_50
    return v1

    :cond_51
    const/4 v1, 0x0

    goto :goto_50
.end method

.method private isExternalStorageMounted()Z
    .registers 3

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 643
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

.method private loadSavedStates()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 251
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-static {v6, v7, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 252
    const-string v6, "iu.UploadsManager"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 253
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load newMediaTracker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_30
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-static {v6, v7, v8, v10}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 258
    const-string v6, "iu.UploadsManager"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 259
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load instantShareTracker: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_5e
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "upload_all_accounts"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, allAccountsString:Ljava/lang/String;
    const-string v6, "iu.UploadsManager"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 264
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load all accounts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_8b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e4

    .line 268
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_99
    if-ge v3, v4, :cond_e4

    aget-object v0, v2, v3

    .line 269
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 268
    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    .line 272
    :cond_a6
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-static {v6, v0, v7, v8}, Lcom/google/android/apps/plus/iu/MediaTracker;->createFromStates(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v5

    .line 274
    .local v5, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    if-eqz v5, :cond_a3

    .line 278
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v6, "iu.UploadsManager"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 280
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_d7
    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/MediaTracker;->allDone()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 283
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 284
    invoke-direct {p0, v5, v10}, Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    goto :goto_a3

    .line 289
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_e4
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "external_storage_fsid"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 290
    iget-boolean v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-eqz v6, :cond_fd

    .line 291
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    const-string v7, "external_storage_fsid"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

    .line 294
    :cond_fd
    const-string v6, "iu.UploadsManager"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_134

    .line 295
    const-string v7, "iu.UploadsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#loadSavedStates(); IU: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-nez v6, :cond_135

    const-string v6, "<<null>>"

    :goto_119
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", IS: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-nez v6, :cond_138

    const-string v6, "<<null>>"

    :goto_129
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_134
    return-void

    .line 295
    :cond_135
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    goto :goto_119

    :cond_138
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    goto :goto_129
.end method

.method private notifyManualUploadDbChanges(Z)V
    .registers 6
    .parameter "hasNewRecord"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 845
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 846
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 847
    if-eqz p1, :cond_14

    .line 848
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadRecordsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 850
    :cond_14
    return-void
.end method

.method private declared-synchronized onFsIdChangedInternal()V
    .registers 5

    .prologue
    .line 582
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_19

    .line 583
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 584
    const-string v1, "iu.UploadsManager"

    const-string v2, "external storage not mounted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_91

    .line 622
    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    .line 589
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->getFsId(Landroid/content/Context;)I

    move-result v0

    .line 591
    .local v0, fsId:I
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 592
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage changed; old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_4c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    if-nez v1, :cond_94

    .line 597
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 598
    const-string v1, "iu.UploadsManager"

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

    .line 600
    :cond_71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mIsExternalStorageFsIdReady:Z

    .line 601
    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

    .line 602
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 621
    :goto_85
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V
    :try_end_90
    .catchall {:try_start_19 .. :try_end_90} :catchall_91

    goto :goto_17

    .line 582
    .end local v0           #fsId:I
    :catchall_91
    move-exception v1

    monitor-exit p0

    throw v1

    .line 603
    .restart local v0       #fsId:I
    :cond_94
    :try_start_94
    iget v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

    if-ne v1, v0, :cond_9e

    .line 607
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_85

    .line 610
    :cond_9e
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 611
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fsid changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

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

    .line 613
    :cond_cb
    iput v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mExternalStorageFsId:I

    .line 614
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "external_storage_fsid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reset()V
    :try_end_df
    .catchall {:try_start_94 .. :try_end_df} :catchall_91

    goto :goto_85
.end method

.method private static purgeRecords(Landroid/database/sqlite/SQLiteDatabase;IJ)V
    .registers 15
    .parameter "db"
    .parameter "targetCount"
    .parameter "maxId"

    .prologue
    const/4 v10, 0x2

    .line 1019
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1020
    const-string v5, "iu.UploadsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "target purge count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_2b
    const-wide/16 v3, 0x0

    .line 1024
    .local v3, min:J
    :goto_2d
    add-long v5, p2, v3

    const-wide/16 v7, 0x2

    div-long v1, v5, v7

    .line 1025
    .local v1, mid:J
    cmp-long v5, v1, v3

    if-nez v5, :cond_6a

    .line 1035
    sget-object v5, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    const-string v6, "_id<?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1037
    .local v0, count:I
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 1038
    const-string v5, "iu.UploadsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " purged"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_69
    return-void

    .line 1028
    .end local v0           #count:I
    :cond_6a
    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->getRecordCount(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v0

    .line 1029
    .restart local v0       #count:I
    if-le v0, p1, :cond_72

    .line 1030
    move-wide p2, v1

    goto :goto_2d

    .line 1032
    :cond_72
    move-wide v3, v1

    goto :goto_2d
.end method

.method private recordResult(Lcom/google/android/apps/plus/iu/UploadedEntry;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 12
    .parameter "result"

    .prologue
    .line 984
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 985
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadedEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v1, v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    .line 986
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x3f40624dd2f1a9fcL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_19

    .line 1010
    :goto_18
    return-object p1

    .line 992
    :cond_19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 994
    :try_start_1c
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->UPLOAD_RECORD_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_50

    move-result-object v9

    .line 997
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_41

    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 998
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 999
    .local v8, count:I
    const/16 v1, 0x7d0

    if-le v8, v1, :cond_41

    .line 1000
    div-int/lit8 v1, v8, 0x2

    iget-wide v2, p1, Lcom/google/android/apps/plus/iu/UploadedEntry;->id:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->purgeRecords(Landroid/database/sqlite/SQLiteDatabase;IJ)V
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_4b

    .line 1004
    .end local v8           #count:I
    :cond_41
    :try_start_41
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_50

    .line 1007
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1008
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_18

    .line 1004
    :catchall_4b
    move-exception v1

    :try_start_4c
    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 1007
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_50
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1008
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private declared-synchronized reloadSystemSettingsInternal(Landroid/database/Cursor;)V
    .registers 29
    .parameter "cursor"

    .prologue
    .line 368
    monitor-enter p0

    const/4 v13, 0x0

    .line 369
    .local v13, autoUploadEnabled:Z
    const/4 v4, 0x0

    .line 370
    .local v4, syncAccount:Ljava/lang/String;
    const/16 v25, 0x1

    .line 371
    .local v25, wifiOnlyPhoto:Z
    const/16 v26, 0x1

    .line 372
    .local v26, wifiOnlyVideo:Z
    const/16 v24, 0x0

    .line 373
    .local v24, syncOnRoaming:Z
    const/16 v23, 0x0

    .line 374
    .local v23, syncOnBattery:Z
    const/4 v14, 0x0

    .line 375
    .local v14, eventId:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 376
    .local v9, eventEndTime:J
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 379
    .local v19, now:J
    if-nez p1, :cond_18

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsQuery()Landroid/database/Cursor;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_45c

    move-result-object p1

    .line 384
    :cond_18
    if-eqz p1, :cond_20

    :try_start_1a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 385
    :cond_20
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 386
    const-string v2, "iu.UploadsManager"

    const-string v3, "   failed to query system settings"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mReloadSystemSettingDelay:J

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mReloadSystemSettingDelay:J

    const-wide/16 v5, 0x2

    mul-long/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mReloadSystemSettingDelay:J
    :try_end_47
    .catchall {:try_start_1a .. :try_end_47} :catchall_472

    .line 405
    :try_start_47
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_45c

    .line 564
    :goto_4a
    monitor-exit p0

    return-void

    .line 395
    :cond_4c
    const/4 v2, 0x0

    :try_start_4d
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_45f

    const/4 v13, 0x1

    .line 396
    :goto_56
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 397
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_462

    const/16 v25, 0x1

    .line 398
    :goto_68
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_466

    const/16 v26, 0x1

    .line 399
    :goto_73
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_46a

    const/16 v24, 0x1

    .line 400
    :goto_7e
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_46e

    const/16 v23, 0x1

    .line 401
    :goto_89
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 402
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 403
    const-wide/16 v2, 0x1f4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mReloadSystemSettingDelay:J
    :try_end_9d
    .catchall {:try_start_4d .. :try_end_9d} :catchall_472

    .line 405
    :try_start_9d
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 408
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 410
    const/4 v13, 0x0

    .line 411
    const/4 v14, 0x0

    .line 414
    :cond_a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v2, :cond_477

    const/16 v16, 0x1

    .line 415
    .local v16, isAutoUploadEnabled:Z
    :goto_b0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v2, :cond_47b

    const/16 v18, 0x1

    .line 416
    .local v18, isInstantShareEnabled:Z
    :goto_b8
    if-eqz v16, :cond_47f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v22

    .line 419
    .local v22, previousSyncAccount:Ljava/lang/String;
    :goto_c2
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48f

    const/4 v11, 0x1

    .line 420
    .local v11, accountChanged:Z
    :goto_cb
    move/from16 v0, v16

    if-eq v13, v0, :cond_492

    const/4 v12, 0x1

    .line 421
    .local v12, autoUploadChanged:Z
    :goto_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;

    invoke-static {v2, v14}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_495

    const/4 v15, 0x1

    .line 423
    .local v15, eventIdChanged:Z
    :goto_db
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 424
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IU tracker: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IS tracker: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v3, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#reloadSystemSettings(); IU: enabled? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; IS: was: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;

    if-nez v2, :cond_498

    const-string v2, "<< NULL >>"

    :goto_13b
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", now: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v14, :cond_49e

    const-string v2, "<< NULL >>"

    :goto_149
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; account: was: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", now: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_16a
    if-nez v11, :cond_170

    if-nez v12, :cond_170

    if-eqz v15, :cond_4ae

    .line 435
    :cond_170
    if-eqz v11, :cond_197

    .line 436
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_197

    .line 437
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   account changed from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_197
    if-eqz v12, :cond_1bc

    .line 442
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 443
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   auto upload changed from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1bc
    if-eqz v15, :cond_1f5

    .line 447
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f5

    .line 448
    const-string v3, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   event ID changed from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;

    if-nez v2, :cond_4a1

    const-string v2, "<< NULL >>"

    :goto_1dc
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " --> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v14, :cond_4a7

    const-string v2, "<< NULL >>"

    :goto_1ea
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_1f5
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_224

    .line 454
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- new settings:autoupload="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_224
    if-nez v11, :cond_22e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v2, :cond_287

    if-nez v13, :cond_287

    .line 460
    :cond_22e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-eqz v2, :cond_25b

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 465
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25b

    .line 466
    const-string v2, "iu.UploadsManager"

    const-string v3, "--- remove IU tracker"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_25b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 475
    .local v21, oldTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    if-eqz v21, :cond_287

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 479
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_287

    .line 480
    const-string v2, "iu.UploadsManager"

    const-string v3, "--- remove Upload All tracker"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v21           #oldTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_287
    if-eqz v4, :cond_2dc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-nez v2, :cond_2dc

    if-eqz v13, :cond_2dc

    .line 486
    new-instance v2, Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2dc

    .line 491
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- create IU tracker; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2dc
    if-eqz v18, :cond_333

    .line 496
    if-eqz v15, :cond_2ea

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object v6, v14

    move-wide/from16 v7, v19

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/apps/plus/iu/MediaTracker;->addEventIdMapping(Ljava/lang/String;JJ)V

    .line 504
    :cond_2ea
    if-nez v11, :cond_4aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_304

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    const-string v3, "video"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->hasUploadTask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4aa

    :cond_304
    const/16 v17, 0x1

    .line 507
    .local v17, isInstantShareActive:Z
    :goto_306
    if-nez v11, :cond_30c

    if-nez v14, :cond_333

    if-nez v17, :cond_333

    .line 510
    :cond_30c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 514
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_333

    .line 515
    const-string v2, "iu.UploadsManager"

    const-string v3, "--- remove IS tracker"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v17           #isInstantShareActive:Z
    :cond_333
    if-eqz v4, :cond_392

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    if-nez v2, :cond_392

    if-eqz v14, :cond_392

    .line 521
    new-instance v2, Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object v6, v14

    move-wide/from16 v7, v19

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/apps/plus/iu/MediaTracker;->addEventIdMapping(Ljava/lang/String;JJ)V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_392

    .line 528
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--- create IS tracker; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_392
    :goto_392
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyPhoto:Z

    move/from16 v0, v25

    if-eq v0, v2, :cond_3bd

    .line 540
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3bd

    .line 541
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   wifiOnlyPhoto changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3bd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z

    move/from16 v0, v26

    if-eq v0, v2, :cond_3e8

    .line 545
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e8

    .line 546
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   wifiOnlyVideo changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3e8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnRoaming:Z

    move/from16 v0, v24

    if-eq v0, v2, :cond_413

    .line 550
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_413

    .line 551
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   syncOnRoaming changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_413
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnBattery:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_43e

    .line 555
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43e

    .line 556
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   syncOnBattery changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_43e
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyPhoto:Z

    .line 560
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z

    .line 561
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnRoaming:Z

    .line 562
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnBattery:Z

    .line 563
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;
    :try_end_45a
    .catchall {:try_start_9d .. :try_end_45a} :catchall_45c

    goto/16 :goto_4a

    .line 368
    .end local v11           #accountChanged:Z
    .end local v12           #autoUploadChanged:Z
    .end local v15           #eventIdChanged:Z
    .end local v16           #isAutoUploadEnabled:Z
    .end local v18           #isInstantShareEnabled:Z
    .end local v19           #now:J
    .end local v22           #previousSyncAccount:Ljava/lang/String;
    :catchall_45c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 395
    .restart local v19       #now:J
    :cond_45f
    const/4 v13, 0x0

    goto/16 :goto_56

    .line 397
    :cond_462
    const/16 v25, 0x0

    goto/16 :goto_68

    .line 398
    :cond_466
    const/16 v26, 0x0

    goto/16 :goto_73

    .line 399
    :cond_46a
    const/16 v24, 0x0

    goto/16 :goto_7e

    .line 400
    :cond_46e
    const/16 v23, 0x0

    goto/16 :goto_89

    .line 405
    :catchall_472
    move-exception v2

    :try_start_473
    invoke-static/range {p1 .. p1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    .line 414
    :cond_477
    const/16 v16, 0x0

    goto/16 :goto_b0

    .line 415
    .restart local v16       #isAutoUploadEnabled:Z
    :cond_47b
    const/16 v18, 0x0

    goto/16 :goto_b8

    .line 416
    .restart local v18       #isInstantShareEnabled:Z
    :cond_47f
    if-eqz v18, :cond_48b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_c2

    :cond_48b
    const/16 v22, 0x0

    goto/16 :goto_c2

    .line 419
    .restart local v22       #previousSyncAccount:Ljava/lang/String;
    :cond_48f
    const/4 v11, 0x0

    goto/16 :goto_cb

    .line 420
    .restart local v11       #accountChanged:Z
    :cond_492
    const/4 v12, 0x0

    goto/16 :goto_d0

    .line 421
    .restart local v12       #autoUploadChanged:Z
    :cond_495
    const/4 v15, 0x0

    goto/16 :goto_db

    .line 426
    .restart local v15       #eventIdChanged:Z
    :cond_498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;

    goto/16 :goto_13b

    :cond_49e
    move-object v2, v14

    goto/16 :goto_149

    .line 448
    :cond_4a1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mEventId:Ljava/lang/String;

    goto/16 :goto_1dc

    :cond_4a7
    move-object v2, v14

    goto/16 :goto_1ea

    .line 504
    :cond_4aa
    const/16 v17, 0x0

    goto/16 :goto_306

    .line 531
    :cond_4ae
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyPhoto:Z

    move/from16 v0, v25

    if-ne v0, v2, :cond_4ce

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z

    move/from16 v0, v26

    if-ne v0, v2, :cond_4ce

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnRoaming:Z

    move/from16 v0, v24

    if-ne v0, v2, :cond_4ce

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncOnBattery:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_392

    .line 534
    :cond_4ce
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;

    instance-of v2, v2, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;

    if-eqz v2, :cond_392

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v2

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v5, v6}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V
    :try_end_4e3
    .catchall {:try_start_473 .. :try_end_4e3} :catchall_45c

    goto/16 :goto_392
.end method

.method private reloadSystemSettingsQuery()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_ENABLE_ACCOUNT_WIFI:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    .registers 9
    .parameter "mediaTracker"

    .prologue
    .line 1256
    if-nez p1, :cond_3

    .line 1277
    :cond_2
    return-void

    .line 1260
    :cond_3
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1261
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->removeStates(Landroid/content/SharedPreferences$Editor;)V

    .line 1263
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->isTrackingNewMedia()Z

    move-result v5

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1265
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_5d

    const/4 v5, 0x1

    :goto_27
    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 1266
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v5, ","

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    .local v1, accounts:Ljava/lang/String;
    const-string v5, "upload_all_accounts"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1271
    .end local v1           #accounts:Ljava/lang/String;
    :cond_40
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1274
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getCurrentTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 1275
    .local v4, task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    iget-wide v5, v4, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    invoke-direct {p0, v5, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeTaskFromDb(J)Z

    goto :goto_4b

    .line 1265
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #task:Lcom/google/android/apps/plus/iu/UploadTaskEntry;
    :cond_5d
    const/4 v5, 0x0

    goto :goto_27
.end method

.method private removeTaskFromDb(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 817
    sget-object v0, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/common/EntrySchema;->deleteWithId(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    return v0
.end method

.method private requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    .registers 7
    .parameter "photoTracker"
    .parameter "allDone"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1298
    if-eqz p2, :cond_7

    .line 1299
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->setState(I)V

    .line 1301
    :cond_7
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_14

    move v0, v1

    :goto_c
    invoke-static {v3, v1, v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1303
    return-void

    :cond_14
    move v0, v2

    .line 1301
    goto :goto_c
.end method

.method private declared-synchronized reset()V
    .registers 2

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->resetStates()V

    .line 303
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->resetUploadDatabase()V

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsInternal(Landroid/database/Cursor;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 305
    monitor-exit p0

    return-void

    .line 302
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetStates()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 324
    iput-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 325
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 326
    iput-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 329
    .local v1, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 330
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->requestUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    goto :goto_1e

    .line 332
    .end local v1           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSyncedAccounts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 333
    return-void
.end method

.method private resetUploadDatabase()V
    .registers 6

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->reset()V

    .line 312
    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mResetDelay:J
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 320
    :goto_9
    return-void

    .line 313
    :catch_a
    move-exception v0

    .line 314
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 315
    const-string v1, "iu.UploadsManager"

    const-string v2, "DB not ready for reset?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    iget-wide v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mResetDelay:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mResetDelay:J

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mResetDelay:J

    goto :goto_9
.end method

.method private saveOldMediaTrackerAccounts(Landroid/content/SharedPreferences$Editor;)V
    .registers 5
    .parameter "edit"

    .prologue
    .line 1280
    const-string v1, ","

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, accounts:Ljava/lang/String;
    const-string v1, "upload_all_accounts"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1283
    return-void
.end method

.method private sendManualUploadReport(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;I)V
    .registers 9
    .parameter "task"
    .parameter "result"
    .parameter "uploaderState"

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 827
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_7

    .line 842
    :goto_6
    return-void

    .line 830
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.plus.iu.manual_upload_report"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 832
    const-string v2, "manual_upload_upload_id"

    iget-wide v3, p1, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 833
    const-string v2, "manual_upload_content_uri"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    const-string v2, "manual_upload_state"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const-string v2, "manual_upload_uploader_state"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const-string v2, "manual_upload_progress"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getPercentageUploaded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 838
    if-eqz p2, :cond_41

    .line 839
    const-string v2, "manual_upload_record_id"

    iget-wide v3, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 841
    :cond_41
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method private sendUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    .registers 8
    .parameter "photoTracker"
    .parameter "allDone"

    .prologue
    .line 1286
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getExistingMediaTotalCount()I

    move-result v2

    .line 1287
    .local v2, totalCount:I
    if-eqz p2, :cond_30

    move v1, v2

    .line 1288
    .local v1, progress:I
    :goto_7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.plus.iu.upload_all_progress"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "upload_all_account"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v3, "upload_all_progress"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    const-string v3, "upload_all_count"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    const-string v3, "upload_all_state"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getState()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1294
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1295
    return-void

    .line 1287
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #progress:I
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/MediaTracker;->getExistingMediaUploadProgress()I

    move-result v1

    goto :goto_7
.end method

.method private declared-synchronized setCurrentUploadTask(Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;)V
    .registers 3
    .parameter "newUploadTask"

    .prologue
    .line 821
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mCurrent:Lcom/google/android/apps/plus/iu/UploadsManager$UploadTask;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 822
    monitor-exit p0

    return-void

    .line 821
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPhotoSize(Lcom/google/android/apps/plus/iu/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "photo"
    .parameter "uri"
    .parameter "resolver"

    .prologue
    .line 1102
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1103
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1104
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1105
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, p1, Lcom/google/android/apps/plus/iu/PhotoEntry;->width:I

    .line 1106
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, p1, Lcom/google/android/apps/plus/iu/PhotoEntry;->height:I
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    .line 1112
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_18
    :goto_18
    return-void

    .line 1107
    :catch_19
    move-exception v0

    .line 1108
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1109
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPhotoSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private declared-synchronized setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;I)V
    .registers 4
    .parameter "task"
    .parameter "state"

    .prologue
    .line 853
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 854
    monitor-exit p0

    return-void

    .line 853
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setState(Lcom/google/android/apps/plus/iu/UploadTaskEntry;ILjava/lang/Throwable;)V
    .registers 5
    .parameter "task"
    .parameter "state"
    .parameter "t"

    .prologue
    .line 857
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setState(ILjava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 858
    monitor-exit p0

    return-void

    .line 857
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTaskStateAndProgressInDb(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    .registers 7
    .parameter "task"

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isReadyForUpload()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_47

    move-result v2

    if-nez v2, :cond_9

    .line 809
    :goto_7
    monitor-exit p0

    return-void

    .line 797
    :cond_9
    :try_start_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "state"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string v2, "bytes_uploaded"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, uploadUrl:Ljava/lang/String;
    if-eqz v0, :cond_3b

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 804
    const-string v2, "upload_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_3b
    sget-object v2, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_47

    goto :goto_7

    .line 793
    .end local v0           #uploadUrl:Ljava/lang/String;
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized uploadExistingPhotosInternal(Ljava/lang/String;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 690
    monitor-enter p0

    :try_start_1
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 691
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable existing photos upload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_26
    new-instance v0, Lcom/google/android/apps/plus/iu/MediaTracker;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/iu/MediaTracker;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/apps/plus/iu/UploadsDatabaseHelper;Z)V

    .line 698
    .local v0, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/MediaTracker;->allDone()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 699
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->setState(I)V

    .line 700
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 702
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 703
    const-string v1, "iu.UploadsManager"

    const-string v2, "--- DONE upload all; no more photos"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_72

    .line 724
    :cond_50
    :goto_50
    monitor-exit p0

    return-void

    .line 706
    :cond_52
    :try_start_52
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_75

    .line 707
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/MediaTracker;->setState(I)V

    .line 708
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 710
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 711
    const-string v1, "iu.UploadsManager"

    const-string v2, "--- DONE upload all; no storage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_72

    goto :goto_50

    .line 690
    .end local v0           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :catchall_72
    move-exception v1

    monitor-exit p0

    throw v1

    .line 717
    .restart local v0       #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_75
    :try_start_75
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V

    .line 721
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 722
    .local v6, edit:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->saveOldMediaTrackerAccounts(Landroid/content/SharedPreferences$Editor;)V

    .line 723
    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/iu/MediaTracker;->saveStates(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_72

    goto :goto_50
.end method

.method private writeToPhotoTable(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/UploadedEntry;Landroid/content/SyncResult;)Z
    .registers 16
    .parameter "task"
    .parameter "result"
    .parameter "syncResult"

    .prologue
    const/4 v11, 0x3

    .line 1069
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, albumId:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J

    move-result-wide v7

    .line 1071
    .local v7, userId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-nez v9, :cond_26

    .line 1072
    const-string v9, "iu.UploadsManager"

    invoke-static {v9, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1073
    const-string v9, "iu.UploadsManager"

    const-string v10, "no user owns the photo"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_24
    const/4 v9, 0x0

    .line 1097
    :goto_25
    return v9

    .line 1077
    :cond_26
    iget-object v9, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1078
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 1079
    .local v1, contentUri:Landroid/net/Uri;
    invoke-direct {p0, v1, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->getFilePath(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, filePath:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/iu/PhotoEntry;

    invoke-direct {v5}, Lcom/google/android/apps/plus/iu/PhotoEntry;-><init>()V

    .line 1081
    .local v5, photo:Lcom/google/android/apps/plus/iu/PhotoEntry;
    iget-wide v9, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->idFromServer:J

    iput-wide v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->id:J

    .line 1082
    iput-wide v7, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->userId:J

    .line 1083
    iput-object v0, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->albumId:Ljava/lang/String;

    .line 1084
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->title:Ljava/lang/String;

    .line 1085
    iget-wide v9, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->bytesTotal:J

    long-to-int v9, v9

    iput v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->size:I

    .line 1086
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->contentType:Ljava/lang/String;

    .line 1087
    iget-object v9, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprint:[B

    iput-object v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->fingerprint:[B

    .line 1088
    iget v9, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->fingerprintHash:I

    iput v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->fingerprintHash:I

    .line 1089
    iget-wide v9, p2, Lcom/google/android/apps/plus/iu/UploadedEntry;->timestamp:J

    iput-wide v9, v5, Lcom/google/android/apps/plus/iu/PhotoEntry;->dateTaken:J

    .line 1090
    invoke-direct {p0, v5, v1, v6}, Lcom/google/android/apps/plus/iu/UploadsManager;->setPhotoSize(Lcom/google/android/apps/plus/iu/PhotoEntry;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 1092
    sget-object v9, Lcom/google/android/apps/plus/iu/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v10, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    move-result-wide v3

    .line 1093
    .local v3, id:J
    const-string v9, "iu.UploadsManager"

    invoke-static {v9, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 1094
    const-string v9, "iu.UploadsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "write to photo table: ID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", album="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_9b
    const/4 v9, 0x1

    goto :goto_25
.end method


# virtual methods
.method public addManualUpload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)J
    .registers 9
    .parameter "task"

    .prologue
    .line 649
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 650
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setPriority(I)V

    .line 651
    invoke-static {v3, p1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->setContentType(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)Ljava/lang/String;

    .line 652
    invoke-static {v3, p1}, Lcom/google/android/apps/plus/iu/UploadRequestHelper;->setFileSize(Landroid/content/ContentResolver;Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 653
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 654
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v4, v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J

    move-result-wide v1

    .line 655
    .local v1, id:J
    const-string v4, "iu.UploadsManager"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 656
    const-string v4, "iu.UploadsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- ADD manual upload task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_3d
    iget-object v4, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V

    .line 659
    return-wide v1
.end method

.method public cancelTask(J)V
    .registers 6
    .parameter "taskId"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 665
    return-void
.end method

.method public cancelUploadExistingPhotos(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 728
    return-void
.end method

.method public getExistingPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1333
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;

    const-string v1, "photo"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExistingVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1337
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$ExistingMediaUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstantSharePhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1317
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareUploadTaskProvider;

    const-string v1, "photo"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstantShareVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1321
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareUploadTaskProvider;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInstantUploadStatus()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 776
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "iu_pending_count"

    aput-object v4, v3, v0

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 779
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mNewMediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 780
    .local v2, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getNewMediaPendingCount()I

    move-result v0

    .line 781
    .local v0, count:I
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 783
    if-eqz v2, :cond_55

    .line 784
    const-string v3, "iu.UploadsManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 785
    const-string v3, "iu.UploadsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get iu pending count for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getSyncAccount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_55
    return-object v1
.end method

.method public getManualPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1306
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;

    const-string v1, "image/%"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getManualVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1313
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;

    const-string v1, "%"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$ManualUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNewPhotoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1325
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;

    const-string v1, "photo"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNewVideoUploadTaskProvider()Lcom/google/android/apps/plus/iu/SyncTaskProvider;
    .registers 3

    .prologue
    .line 1329
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;

    const-string v1, "video"

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/iu/UploadsManager$NewMediaUploadTaskProvider;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUploadAllStatus(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "account"

    .prologue
    const/4 v10, 0x3

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 746
    new-instance v1, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "upload_all_account"

    aput-object v7, v6, v4

    const-string v7, "upload_all_progress"

    aput-object v7, v6, v0

    const/4 v7, 0x2

    const-string v8, "upload_all_count"

    aput-object v8, v6, v7

    const-string v7, "upload_all_state"

    aput-object v7, v6, v10

    invoke-direct {v1, v6}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 752
    .local v1, cursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;
    if-eqz p1, :cond_ae

    .line 753
    iget-object v6, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mOldMediaTrackerMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 754
    .local v2, photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    if-nez v2, :cond_9d

    .line 755
    .local v0, allDone:Z
    :goto_29
    if-eqz v0, :cond_9f

    move v5, v4

    .line 756
    .local v5, totalCount:I
    :goto_2c
    if-eqz v0, :cond_a4

    move v3, v5

    .line 759
    .local v3, progress:I
    :goto_2f
    if-eqz v0, :cond_a9

    .line 762
    .local v4, state:I
    :goto_31
    const-string v6, "iu.UploadsManager"

    invoke-static {v6, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 763
    const-string v6, "iu.UploadsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get upload-all status for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " allDone? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " total:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_7d
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 772
    .end local v0           #allDone:Z
    .end local v2           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    .end local v3           #progress:I
    .end local v4           #state:I
    .end local v5           #totalCount:I
    :goto_9c
    return-object v1

    .restart local v2       #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_9d
    move v0, v4

    .line 754
    goto :goto_29

    .line 755
    .restart local v0       #allDone:Z
    :cond_9f
    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getExistingMediaTotalCount()I

    move-result v5

    goto :goto_2c

    .line 756
    .restart local v5       #totalCount:I
    :cond_a4
    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getExistingMediaUploadProgress()I

    move-result v3

    goto :goto_2f

    .line 759
    .restart local v3       #progress:I
    :cond_a9
    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/MediaTracker;->getState()I

    move-result v4

    goto :goto_31

    .line 770
    .end local v0           #allDone:Z
    .end local v2           #photoTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    .end local v3           #progress:I
    .end local v5           #totalCount:I
    :cond_ae
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_9c
.end method

.method public getUploadsDatabaseHelper()Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mUploadsDbHelper:Lcom/google/android/apps/plus/iu/UploadsDatabaseHelper;

    return-object v0
.end method

.method public reloadSystemSettings()V
    .registers 4

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsQuery()Landroid/database/Cursor;

    move-result-object v0

    .line 359
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 360
    return-void
.end method

.method retrieveAllFingerprints(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 16
    .parameter "account"
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
    const/4 v2, 0x3

    const/4 v13, 0x0

    .line 1213
    if-nez p1, :cond_6

    move-object v10, v13

    .line 1251
    :goto_5
    return-object v10

    .line 1217
    :cond_6
    const-string v1, "iu.UploadsManager"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1218
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveAllFingerprints for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_2a
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1221
    .local v10, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/common/Fingerprint;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1222
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1224
    :try_start_38
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mPicasaDbHelper:Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/plus/iu/PicasaDatabaseHelper;->getUserId(Ljava/lang/String;)J
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_82

    move-result-wide v11

    .line 1225
    .local v11, userId:J
    const-wide/16 v1, -0x1

    cmp-long v1, v11, v1

    if-nez v1, :cond_49

    .line 1251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v10, v13

    goto :goto_5

    .line 1229
    :cond_49
    :try_start_49
    sget-object v1, Lcom/google/android/apps/plus/iu/UploadsManager;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/iu/UploadsManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_82

    move-result-object v8

    .line 1231
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_67

    .line 1251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object v10, v13

    goto :goto_5

    .line 1236
    :cond_67
    :goto_67
    :try_start_67
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1237
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 1239
    .local v9, raw:[B
    if-eqz v9, :cond_67

    .line 1240
    new-instance v1, Lcom/android/gallery3d/common/Fingerprint;

    invoke-direct {v1, v9}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_7d

    goto :goto_67

    .line 1248
    .end local v9           #raw:[B
    :catchall_7d
    move-exception v1

    :try_start_7e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    .line 1251
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #userId:J
    :catchall_82
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1243
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #userId:J
    :cond_87
    :try_start_87
    const-string v1, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 1244
    const-string v1, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create fingerprint set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_87 .. :try_end_ac} :catchall_7d

    .line 1248
    :cond_ac
    :try_start_ac
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_82

    .line 1251
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5
.end method

.method public uploadExistingPhotos(Ljava/lang/String;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 687
    return-void
.end method
