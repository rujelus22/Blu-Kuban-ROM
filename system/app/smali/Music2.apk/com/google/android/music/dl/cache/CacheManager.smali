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
    .line 51
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    .line 60
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V
    .registers 5
    .parameter "context"
    .parameter "preferences"
    .parameter "doNotDelete"

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/music/dl/FileSystemImpl;

    invoke-direct {v0, p3}, Lcom/google/android/music/dl/FileSystemImpl;-><init>(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/FileSystem;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/FileSystem;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    .line 127
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$1;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 162
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$2;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 93
    iput-object p4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 94
    iput-object p2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 96
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v2, v2}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 101
    :try_start_33
    const-class v0, Landroid/os/Environment;

    const-string v1, "isExternalStorageEmulated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_58

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_58

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_54} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_54} :catch_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_54} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_54} :catch_98
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_54} :catch_a3

    .line 124
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 125
    return-void

    .line 107
    :cond_58
    :try_start_58
    const-string v1, "MusicCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returned value which was not a Boolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/SecurityException; {:try_start_58 .. :try_end_70} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_58 .. :try_end_70} :catch_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_70} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_70} :catch_98
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_58 .. :try_end_70} :catch_a3

    goto :goto_54

    .line 109
    :catch_71
    move-exception v0

    .line 110
    const-string v1, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 111
    :catch_7c
    move-exception v0

    .line 112
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 113
    const-string v1, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 116
    :catch_8d
    move-exception v0

    .line 117
    const-string v1, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 118
    :catch_98
    move-exception v0

    .line 119
    const-string v1, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    .line 120
    :catch_a3
    move-exception v0

    .line 121
    const-string v1, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/cache/CacheManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/dl/cache/CacheManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/CacheStrategy;)Lcom/google/android/music/dl/cache/CacheStrategy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/DeletionStrategy;)Lcom/google/android/music/dl/cache/DeletionStrategy;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->cancelClearAllCachedFiles()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/cache/CacheManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->clearAllCachedFilesAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private cancelClearAllCachedFiles()V
    .registers 3

    .prologue
    .line 151
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 152
    return-void
.end method

.method private clearAllCachedFilesAsync()V
    .registers 5

    .prologue
    .line 155
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 157
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 158
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    return-void
.end method

.method private getCacheDirectory()Ljava/io/File;
    .registers 4

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 202
    .local v0, externalCacheDir:Ljava/io/File;
    if-eqz v0, :cond_13

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 215
    .end local v0           #externalCacheDir:Ljava/io/File;
    :cond_12
    :goto_12
    return-object v0

    .line 207
    .restart local v0       #externalCacheDir:Ljava/io/File;
    :cond_13
    iget-boolean v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    if-nez v2, :cond_2b

    .line 208
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 209
    .local v1, localCacheDir:Ljava/io/File;
    if-eqz v1, :cond_2b

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_29
    move-object v0, v1

    .line 211
    goto :goto_12

    .line 215
    .end local v1           #localCacheDir:Ljava/io/File;
    :cond_2b
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private getExternalCacheDirectory()Ljava/io/File;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, state:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 303
    sget-boolean v3, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    if-eqz v3, :cond_18

    .line 304
    const-string v3, "MusicCache"

    const-string v4, "External storage is not mounted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_18
    :goto_18
    return-object v2

    .line 309
    :cond_19
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 311
    .local v0, externalCache:Ljava/io/File;
    if-eqz v0, :cond_18

    .line 314
    new-instance v2, Ljava/io/File;

    const-string v3, "music"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private getLocalCacheDirectory()Ljava/io/File;
    .registers 4

    .prologue
    .line 318
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_10

    .line 320
    new-instance v1, Ljava/io/File;

    const-string v2, "music"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private prepareDirectory(Ljava/io/File;)Z
    .registers 8
    .parameter "directory"

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, p1}, Lcom/google/android/music/dl/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 353
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_2b
    return v2

    .line 357
    :cond_2c
    new-instance v1, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    .local v1, noMediaFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 360
    :try_start_39
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-nez v3, :cond_8a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 361
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_61} :catch_62

    goto :goto_2b

    .line 364
    :catch_62
    move-exception v0

    .line 365
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 369
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

    .line 285
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v3

    if-nez v3, :cond_8

    .line 297
    :cond_7
    :goto_7
    return v2

    .line 288
    :cond_8
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 289
    .local v0, externalDir:Ljava/io/File;
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 290
    .local v1, localDir:Ljava/io/File;
    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2b

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 292
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)Z

    move-result v2

    goto :goto_7

    .line 293
    :cond_2b
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

    .line 295
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)Z

    move-result v2

    goto :goto_7
.end method


# virtual methods
.method public getFreeSpace()J
    .registers 6

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 230
    .local v2, cacheDir:Ljava/io/File;
    if-nez v2, :cond_9

    .line 231
    const-wide/16 v0, 0x0

    .line 244
    :goto_8
    return-wide v0

    .line 234
    :cond_9
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v2}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 238
    .local v0, availableFreeSpace:J
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/Store;->getTotalCachedSize(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 242
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->getSizeOfUndownloadedKeepOnFiles()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 244
    goto :goto_8
.end method

.method public getTotalSpace()J
    .registers 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_9

    .line 221
    const-wide/16 v1, 0x0

    .line 224
    :goto_8
    return-wide v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v1, v0}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v1

    goto :goto_8
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 249
    return-void
.end method

.method public prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 10
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, location:Ljava/io/File;
    if-nez v0, :cond_8

    .line 278
    :cond_7
    :goto_7
    return v3

    .line 261
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 263
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_7

    .line 264
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)Z

    move-result v3

    goto :goto_7

    .line 269
    :cond_20
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/music/dl/cache/CacheStrategy;->findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J

    move-result-wide v1

    .line 270
    .local v1, spaceToDelete:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_36

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    iget-object v4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/google/android/music/dl/cache/DeletionStrategy;->createSpace(JLjava/io/File;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 274
    :cond_36
    iget-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)Z

    move-result v3

    goto :goto_7

    .line 278
    :cond_3d
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForNonCachableDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v3

    goto :goto_7
.end method

.method public startClearingOrphanedFilesAsync()V
    .registers 4

    .prologue
    .line 377
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .line 379
    .local v0, worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    if-nez v0, :cond_12

    .line 380
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    .line 382
    .restart local v0       #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->startClearingOrphanedFilesAsync()V

    .line 383
    monitor-exit v2

    .line 384
    return-void

    .line 383
    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected final storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)Z
    .registers 10
    .parameter "order"
    .parameter "location"
    .parameter "saveable"

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v1, fileName:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/ContentIdentifier;->toFileSystemString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadHandler;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, extension:Ljava/lang/String;
    if-nez v0, :cond_34

    .line 331
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing file extension for download order: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v3, 0x0

    .line 343
    :goto_33
    return v3

    .line 334
    :cond_34
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v2, localLocation:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 338
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_6d

    .line 339
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_6d
    invoke-virtual {p1, v2, p3}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 343
    const/4 v3, 0x1

    goto :goto_33
.end method
