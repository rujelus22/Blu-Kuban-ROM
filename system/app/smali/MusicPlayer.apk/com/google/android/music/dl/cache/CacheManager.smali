.class public Lcom/google/android/music/dl/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;,
        Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final MSG_DELETE_ALL_CACHED_FILES:I

.field private static final sLogFile:Lcom/google/android/music/log/LogFile;


# instance fields
.field private mAllowCaching:Z

.field private mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

.field private final mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

.field private mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

.field private final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private mIsExternalSameAsInternal:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    .line 63
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    .line 87
    const-string v0, "com.google.android.music.pin"

    invoke-static {v0}, Lcom/google/android/music/log/Log;->getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/dl/cache/CacheManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V
    .registers 5
    .parameter "context"
    .parameter "preferences"
    .parameter "doNotDelete"

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/music/dl/FileSystemImpl;

    invoke-direct {v0, p3}, Lcom/google/android/music/dl/FileSystemImpl;-><init>(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/FileSystem;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/FileSystem;)V
    .registers 8
    .parameter "context"
    .parameter "preferences"
    .parameter "doNotDelete"
    .parameter "fs"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    .line 114
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$1;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 145
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$2;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    .line 337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 98
    iput-object p4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 99
    iput-object p2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 101
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/google/android/music/dl/cache/CacheManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_40

    .line 106
    sget-object v0, Lcom/google/android/music/dl/cache/CacheManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v1, "MusicCache"

    const-string v2, "CacheManager: starts"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_40
    invoke-static {}, Lcom/google/android/music/utils/PostFroyoUtils$EnvironmentCompat;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/cache/CacheManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/dl/cache/CacheManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/android/music/log/LogFile;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/music/dl/cache/CacheManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/CacheStrategy;)Lcom/google/android/music/dl/cache/CacheStrategy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/DeletionStrategy;)Lcom/google/android/music/dl/cache/DeletionStrategy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->cancelClearAllCachedFiles()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->clearAllCachedFilesAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private cancelClearAllCachedFiles()V
    .registers 3

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 135
    return-void
.end method

.method private clearAllCachedFilesAsync()V
    .registers 5

    .prologue
    .line 138
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 141
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    return-void
.end method

.method private getCacheLocation()Lcom/google/android/music/dl/cache/CacheLocation;
    .registers 5

    .prologue
    .line 186
    iget-boolean v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    if-nez v2, :cond_20

    .line 187
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 188
    .local v0, externalCacheDir:Ljava/io/File;
    if-eqz v0, :cond_20

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 190
    :cond_18
    new-instance v2, Lcom/google/android/music/dl/cache/CacheLocation;

    sget-object v3, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->EXTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    invoke-direct {v2, v0, v3}, Lcom/google/android/music/dl/cache/CacheLocation;-><init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V

    .line 201
    .end local v0           #externalCacheDir:Ljava/io/File;
    :goto_1f
    return-object v2

    .line 195
    :cond_20
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, localCacheDir:Ljava/io/File;
    if-eqz v1, :cond_3c

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 198
    :cond_34
    new-instance v2, Lcom/google/android/music/dl/cache/CacheLocation;

    sget-object v3, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->INTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    invoke-direct {v2, v1, v3}, Lcom/google/android/music/dl/cache/CacheLocation;-><init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V

    goto :goto_1f

    .line 201
    :cond_3c
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private prepareDirectory(Ljava/io/File;)Z
    .registers 8
    .parameter "directory"

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, p1}, Lcom/google/android/music/dl/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 317
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_2b
    return v2

    .line 321
    :cond_2c
    new-instance v1, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .local v1, noMediaFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 324
    :try_start_39
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_8a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 325
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_61} :catch_62

    goto :goto_2b

    .line 328
    :catch_62
    move-exception v0

    .line 329
    .local v0, e:Ljava/io/IOException;
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while trying to create ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 333
    .end local v0           #e:Ljava/io/IOException;
    :cond_8a
    const/4 v2, 0x1

    goto :goto_2b
.end method

.method private prepareForNonCachableDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 9
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v3

    if-nez v3, :cond_8

    .line 284
    :cond_7
    :goto_7
    return v2

    .line 275
    :cond_8
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, externalDir:Ljava/io/File;
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 277
    .local v1, localDir:Ljava/io/File;
    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_36

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 279
    new-instance v3, Lcom/google/android/music/dl/cache/CacheLocation;

    sget-object v4, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->EXTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    invoke-direct {v3, v0, v4}, Lcom/google/android/music/dl/cache/CacheLocation;-><init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V

    invoke-virtual {p0, p1, v3, v2}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;Z)Z

    move-result v2

    goto :goto_7

    .line 280
    :cond_36
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v1}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 282
    new-instance v3, Lcom/google/android/music/dl/cache/CacheLocation;

    sget-object v4, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->INTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    invoke-direct {v3, v1, v4}, Lcom/google/android/music/dl/cache/CacheLocation;-><init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V

    invoke-virtual {p0, p1, v3, v2}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;Z)Z

    move-result v2

    goto :goto_7
.end method


# virtual methods
.method public getFreeSpace()J
    .registers 6

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheLocation()Lcom/google/android/music/dl/cache/CacheLocation;

    move-result-object v2

    .line 216
    .local v2, cacheLocation:Lcom/google/android/music/dl/cache/CacheLocation;
    if-nez v2, :cond_9

    .line 217
    const-wide/16 v0, 0x0

    .line 230
    :goto_8
    return-wide v0

    .line 220
    :cond_9
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-virtual {v2}, Lcom/google/android/music/dl/cache/CacheLocation;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 224
    .local v0, availableFreeSpace:J
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/Store;->getTotalCachedSize(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 228
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->getSizeOfUndownloadedKeepOnFiles()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 230
    goto :goto_8
.end method

.method public getTotalSpace()J
    .registers 4

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheLocation()Lcom/google/android/music/dl/cache/CacheLocation;

    move-result-object v0

    .line 206
    .local v0, cacheLocation:Lcom/google/android/music/dl/cache/CacheLocation;
    if-nez v0, :cond_9

    .line 207
    const-wide/16 v1, 0x0

    .line 210
    :goto_8
    return-wide v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheLocation;->getPath()Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v1

    goto :goto_8
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 235
    return-void
.end method

.method public prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 10
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheLocation()Lcom/google/android/music/dl/cache/CacheLocation;

    move-result-object v0

    .line 244
    .local v0, cacheLocation:Lcom/google/android/music/dl/cache/CacheLocation;
    if-nez v0, :cond_8

    .line 265
    :goto_7
    return v3

    .line 247
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 249
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_20

    .line 250
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;Z)Z

    move-result v3

    goto :goto_7

    .line 252
    :cond_20
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough storage space for order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 256
    :cond_39
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/music/dl/cache/CacheStrategy;->findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;)J

    move-result-wide v1

    .line 257
    .local v1, spaceToDelete:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4f

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    iget-object v4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/google/android/music/dl/cache/DeletionStrategy;->createSpace(JLcom/google/android/music/dl/cache/CacheLocation;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 261
    :cond_4f
    iget-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;Z)Z

    move-result v3

    goto :goto_7

    .line 265
    :cond_56
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForNonCachableDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v3

    goto :goto_7
.end method

.method public startClearingOrphanedFilesAsync()V
    .registers 4

    .prologue
    .line 341
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 342
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .line 343
    .local v0, worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    if-nez v0, :cond_12

    .line 344
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    .line 346
    .restart local v0       #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->startClearingOrphanedFilesAsync()V

    .line 347
    monitor-exit v2

    .line 348
    return-void

    .line 347
    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected final storeIn(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/cache/CacheLocation;Z)Z
    .registers 11
    .parameter "order"
    .parameter "cacheLocation"
    .parameter "saveable"

    .prologue
    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v1, fileName:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/dl/ContentIdentifier;->toFileSystemString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadHandler;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, extension:Ljava/lang/String;
    if-nez v0, :cond_34

    .line 294
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing file extension for download order: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v4, 0x0

    .line 307
    :goto_33
    return v4

    .line 297
    :cond_34
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, fileNameStr:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/google/android/music/dl/cache/CacheLocation;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 301
    .local v3, localLocation:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 303
    const-string v4, "MusicCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_6c
    invoke-virtual {p1, p2, v2, p3}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Lcom/google/android/music/dl/cache/CacheLocation;Ljava/lang/String;Z)V

    .line 307
    const/4 v4, 0x1

    goto :goto_33
.end method
