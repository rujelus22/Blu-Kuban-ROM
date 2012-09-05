.class Lcom/google/android/picasasync/PicasaStore;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaDownloadManager$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;,
        Lcom/google/android/picasasync/PicasaStore$ImagePack;,
        Lcom/google/android/picasasync/PicasaStore$InputStreamWriter;,
        Lcom/google/android/picasasync/PicasaStore$DownloadWriter;,
        Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;,
        Lcom/google/android/picasasync/PicasaStore$DownloadListener;,
        Lcom/google/android/picasasync/PicasaStore$PhotoInfo;
    }
.end annotation


# static fields
.field private static final ALBUM_TABLE_NAME:Ljava/lang/String;

.field private static final PHOTO_TABLE_NAME:Ljava/lang/String;

.field private static final PROJECTION_PHOTO_INFO:[Ljava/lang/String;

.field private static PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

.field private static sInstance:Lcom/google/android/picasasync/PicasaStore;


# instance fields
.field private mBlobCache:Lcom/android/gallery3d/common/BlobCache;

.field private mBytesWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasasync/PicasaStore$PipeDataWriter",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mCreatePipe:Ljava/lang/reflect/Method;

.field private final mDownloadManager:Lcom/google/android/picasasync/PicasaDownloadManager;

.field private mFileCache:Lcom/android/gallery3d/common/FileCache;

.field private mImagePackWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasasync/PicasaStore$PipeDataWriter",
            "<",
            "Lcom/google/android/picasasync/PicasaStore$ImagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAlive:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private mMountListener:Landroid/content/BroadcastReceiver;

.field private mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mUsingInternalStorage:Z

.field private mVersionInfo:Lcom/google/android/picasasync/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    sget-object v0, Lcom/google/android/picasasync/PhotoEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaStore;->PHOTO_TABLE_NAME:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/google/android/picasasync/AlbumEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/PicasaStore;->ALBUM_TABLE_NAME:Ljava/lang/String;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "content_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screennail_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rotation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/PicasaStore;->PROJECTION_PHOTO_INFO:[Ljava/lang/String;

    .line 272
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thumbnail_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/picasasync/PicasaStore;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    .line 102
    iput-boolean v1, p0, Lcom/google/android/picasasync/PicasaStore;->mUsingInternalStorage:Z

    .line 676
    new-instance v0, Lcom/google/android/picasasync/PicasaStore$2;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaStore$2;-><init>(Lcom/google/android/picasasync/PicasaStore;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mImagePackWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    .line 692
    new-instance v0, Lcom/google/android/picasasync/PicasaStore$3;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaStore$3;-><init>(Lcom/google/android/picasasync/PicasaStore;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBytesWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lcom/google/android/picasasync/PrefetchHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PrefetchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

    .line 140
    new-instance v0, Lcom/google/android/picasasync/PicasaDownloadManager;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaDownloadManager;-><init>(Lcom/google/android/picasasync/PicasaDownloadManager$Controller;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mDownloadManager:Lcom/google/android/picasasync/PicasaDownloadManager;

    .line 143
    :try_start_2e
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    .line 144
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_6c

    .line 150
    :goto_3c
    :try_start_3c
    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-string v1, "createPipe"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;
    :try_end_49
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_49} :catch_75

    .line 166
    :goto_49
    new-instance v0, Lcom/google/android/picasasync/PicasaStore$1;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaStore$1;-><init>(Lcom/google/android/picasasync/PicasaStore;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void

    .line 145
    :catch_6c
    move-exception v0

    .line 146
    const-string v1, "PicasaStore"

    const-string v2, "cannot create server socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 151
    :catch_75
    move-exception v0

    goto :goto_49
.end method

.method static synthetic access$000(Lcom/google/android/picasasync/PicasaStore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->onMediaMountOrUnmount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/PicasaStore;JI)[B
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaStore;->makeKey(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasasync/PicasaStore;[B[B)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasasync/PicasaStore;->putBlobCache([B[B)V

    return-void
.end method

.method private checkCacheVersion(Ljava/lang/String;I)Z
    .registers 6
    .parameter "key"
    .parameter "currentVersion"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;

    if-nez v0, :cond_28

    .line 208
    new-instance v0, Lcom/google/android/picasasync/VersionInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaStore;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cache_versions.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/VersionInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;

    .line 210
    :cond_28
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/VersionInfo;->getVersion(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_3c

    .line 211
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/picasasync/VersionInfo;->setVersion(Ljava/lang/String;I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;

    invoke-virtual {v0}, Lcom/google/android/picasasync/VersionInfo;->sync()V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private createPipe()[Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    if-nez v1, :cond_9

    .line 826
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->createSocketPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 829
    :goto_8
    return-object v1

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/ParcelFileDescriptor;

    check-cast v1, [Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_8

    .line 830
    :catch_18
    move-exception v0

    .line 831
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "fail to create pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_27

    check-cast v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/lang/Throwable;
    throw v0

    .line 833
    .restart local v0       #e:Ljava/lang/Throwable;
    :cond_27
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createSocketPipe()[Landroid/os/ParcelFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 807
    new-array v1, v8, [Ljava/net/Socket;

    .line 808
    .local v1, socket:[Ljava/net/Socket;
    monitor-enter p0

    .line 809
    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    aput-object v3, v1, v2

    .line 811
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 812
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_49

    .line 813
    new-array v0, v8, [Landroid/os/ParcelFileDescriptor;

    aget-object v2, v1, v6

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v1, v7

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v7

    .line 819
    .local v0, pipe:[Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v6

    aget-object v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v7

    aget-object v4, v1, v7

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    return-object v0

    .line 812
    .end local v0           #pipe:[Landroid/os/ParcelFileDescriptor;
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method private declared-synchronized findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .parameter "id"
    .parameter "contentUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 427
    .local v0, cache:Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_17

    .line 429
    invoke-virtual {v0, p3}, Lcom/android/gallery3d/common/FileCache;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$CacheEntry;

    move-result-object v1

    .line 430
    .local v1, entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    if-eqz v1, :cond_17

    .line 431
    iget-object v3, v1, Lcom/android/gallery3d/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_36

    move-result-object v3

    .line 438
    .end local v1           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :goto_15
    monitor-exit p0

    return-object v3

    :cond_17
    const/4 v3, 0x0

    :try_start_18
    new-instance v4, Lcom/google/android/picasasync/PicasaStore$InputStreamWriter;

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaStore;->mDownloadManager:Lcom/google/android/picasasync/PicasaDownloadManager;

    invoke-virtual {v5, p3}, Lcom/google/android/picasasync/PicasaDownloadManager;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/google/android/picasasync/PicasaStore$InputStreamWriter;-><init>(Lcom/google/android/picasasync/PicasaStore;JLjava/io/InputStream;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_36
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_26} :catch_28

    move-result-object v3

    goto :goto_15

    .line 440
    :catch_28
    move-exception v2

    .line 441
    .local v2, t:Ljava/lang/Throwable;
    :try_start_29
    const-string v3, "PicasaStore"

    const-string v4, "download fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_36

    .line 425
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getBlobCache()Lcom/android/gallery3d/common/BlobCache;
    .registers 9

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_45

    .line 220
    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaStore;->getCacheDirectory()Ljava/io/File;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_61

    move-result-object v6

    .line 222
    .local v6, cacheDir:Ljava/io/File;
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "picasa-cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, path:Ljava/lang/String;
    const-string v0, "picasa-image-cache-version"

    const/16 v2, 0xe

    invoke-direct {p0, v0, v2}, Lcom/google/android/picasasync/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 224
    invoke-static {v1}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 226
    :cond_33
    iget-boolean v0, p0, Lcom/google/android/picasasync/PicasaStore;->mUsingInternalStorage:Z

    if-eqz v0, :cond_49

    .line 227
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x4e2

    const/high16 v3, 0x320

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_61
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_45} :catch_58

    .line 238
    .end local v1           #path:Ljava/lang/String;
    .end local v6           #cacheDir:Ljava/io/File;
    :cond_45
    :goto_45
    :try_start_45
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_61

    monitor-exit p0

    return-object v0

    .line 231
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cacheDir:Ljava/io/File;
    :cond_49
    :try_start_49
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x1388

    const/high16 v3, 0xc80

    const/4 v4, 0x0

    const/16 v5, 0xe

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_61
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_57} :catch_58

    goto :goto_45

    .line 234
    .end local v1           #path:Ljava/lang/String;
    :catch_58
    move-exception v7

    .line 235
    .local v7, t:Ljava/lang/Throwable;
    :try_start_59
    const-string v0, "PicasaStore"

    const-string v2, "fail to create blob cache"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_61

    goto :goto_45

    .line 219
    .end local v6           #cacheDir:Ljava/io/File;
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDownloadCache()Lcom/android/gallery3d/common/FileCache;
    .registers 8

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4f

    if-nez v0, :cond_33

    .line 244
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaStore;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "download-cache"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v2, rootDir:Ljava/io/File;
    const-string v0, "picasa-download-cache-version"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/google/android/picasasync/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 247
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    const-string v1, "picasa-downloads"

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/common/FileCache;->deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 249
    :cond_21
    iget-boolean v0, p0, Lcom/google/android/picasasync/PicasaStore;->mUsingInternalStorage:Z

    if-nez v0, :cond_37

    .line 250
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x6400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_4f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_33} :catch_46

    .line 260
    .end local v2           #rootDir:Ljava/io/File;
    :cond_33
    :goto_33
    :try_start_33
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_4f

    monitor-exit p0

    return-object v0

    .line 253
    .restart local v2       #rootDir:Ljava/io/File;
    :cond_37
    :try_start_37
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x1400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_45
    .catchall {:try_start_37 .. :try_end_45} :catchall_4f
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_45} :catch_46

    goto :goto_33

    .line 256
    .end local v2           #rootDir:Ljava/io/File;
    :catch_46
    move-exception v6

    .line 257
    .local v6, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v0, "PicasaStore"

    const-string v1, "fail to create file cache"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_4f

    goto :goto_33

    .line 242
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaStore;
    .registers 3
    .parameter "context"

    .prologue
    .line 131
    const-class v1, Lcom/google/android/picasasync/PicasaStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaStore;->sInstance:Lcom/google/android/picasasync/PicasaStore;

    if-nez v0, :cond_e

    .line 132
    new-instance v0, Lcom/google/android/picasasync/PicasaStore;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaStore;->sInstance:Lcom/google/android/picasasync/PicasaStore;

    .line 134
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaStore;->sInstance:Lcom/google/android/picasasync/PicasaStore;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getItemIdFromUri(Landroid/net/Uri;)J
    .registers 5
    .parameter "uri"

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-wide v1

    .line 268
    :goto_f
    return-wide v1

    .line 266
    :catch_10
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "PicasaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get id from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-wide/16 v1, -0x1

    goto :goto_f
.end method

.method private isKeyMatched([B[B)Z
    .registers 8
    .parameter "key"
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 762
    array-length v3, p2

    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 766
    :cond_5
    :goto_5
    return v2

    .line 763
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, n:I
    :goto_8
    if-ge v0, v1, :cond_13

    .line 764
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    if-ne v3, v4, :cond_5

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 766
    :cond_13
    const/4 v2, 0x1

    goto :goto_5
.end method

.method private lookupBlobCache(JI)Lcom/google/android/picasasync/PicasaStore$ImagePack;
    .registers 6
    .parameter "id"
    .parameter "type"

    .prologue
    .line 736
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaStore;->makeKey(JI)[B

    move-result-object v0

    .line 737
    .local v0, key:[B
    invoke-direct {p0, v0}, Lcom/google/android/picasasync/PicasaStore;->lookupBlobCache([B)Lcom/google/android/picasasync/PicasaStore$ImagePack;

    move-result-object v1

    return-object v1
.end method

.method private lookupBlobCache([B)Lcom/google/android/picasasync/PicasaStore$ImagePack;
    .registers 10
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 720
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    .line 721
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    if-nez v0, :cond_8

    .line 731
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_7
    :goto_7
    return-object v5

    .line 722
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_8
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 724
    .local v2, hash:J
    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_25

    .line 725
    :try_start_d
    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 726
    .local v1, content:[B
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_22

    .line 727
    if-eqz v1, :cond_7

    :try_start_14
    invoke-direct {p0, p1, v1}, Lcom/google/android/picasasync/PicasaStore;->isKeyMatched([B[B)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 728
    new-instance v6, Lcom/google/android/picasasync/PicasaStore$ImagePack;

    array-length v7, p1

    invoke-direct {v6, v7, v1}, Lcom/google/android/picasasync/PicasaStore$ImagePack;-><init>(I[B)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_20} :catch_25

    move-object v5, v6

    goto :goto_7

    .line 726
    .end local v1           #content:[B
    :catchall_22
    move-exception v6

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v6
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_25} :catch_25

    .line 729
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #hash:J
    :catch_25
    move-exception v4

    .line 730
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "PicasaStore"

    const-string v7, "cache lookup fail"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private makeKey(JI)[B
    .registers 10
    .parameter "id"
    .parameter "type"

    .prologue
    .line 770
    const/16 v4, 0x9

    new-array v0, v4, [B

    .line 771
    .local v0, array:[B
    const/4 v2, 0x0

    .line 772
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_7
    const/16 v4, 0x8

    if-ge v1, v4, :cond_19

    .line 773
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    mul-int/lit8 v4, v1, 0x8

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 772
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_7

    .line 775
    :cond_19
    int-to-byte v4, p3

    aput-byte v4, v0, v3

    .line 776
    return-object v0
.end method

.method private declared-synchronized onMediaMountOrUnmount()V
    .registers 2

    .prologue
    .line 838
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 839
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v0, :cond_10

    .line 840
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    .line 843
    :cond_10
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    if-eqz v0, :cond_1c

    .line 844
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    .line 847
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mVersionInfo:Lcom/google/android/picasasync/VersionInfo;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    .line 848
    monitor-exit p0

    return-void

    .line 838
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/picasasync/PicasaStore$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 783
    .local p1, args:Ljava/lang/Object;,"TT;"
    .local p2, func:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;,"Lcom/google/android/picasasync/PicasaStore$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 784
    .local v1, pipe:[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/google/android/picasasync/PicasaStore$4;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/google/android/picasasync/PicasaStore$4;-><init>(Lcom/google/android/picasasync/PicasaStore;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V

    .line 795
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/picasasync/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 796
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v3

    .line 797
    .end local v1           #pipe:[Landroid/os/ParcelFileDescriptor;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_13
    move-exception v0

    .line 798
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "failure making pipe"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private openUnknownImage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "contentUrl"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 402
    const-string v0, "thumbnail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 403
    const/16 v0, 0xc8

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 407
    :cond_f
    :goto_f
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/picasasync/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 404
    :cond_16
    const-string v0, "screennail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 405
    const/16 v0, 0x280

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f
.end method

.method private putBlobCache(JI[B)V
    .registers 6
    .parameter "id"
    .parameter "type"
    .parameter "content"

    .prologue
    .line 757
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasasync/PicasaStore;->makeKey(JI)[B

    move-result-object v0

    .line 758
    .local v0, key:[B
    invoke-direct {p0, v0, p4}, Lcom/google/android/picasasync/PicasaStore;->putBlobCache([B[B)V

    .line 759
    return-void
.end method

.method private putBlobCache([B[B)V
    .registers 11
    .parameter "key"
    .parameter "content"

    .prologue
    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    .line 743
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    if-nez v0, :cond_7

    .line 754
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    :goto_6
    return-void

    .line 744
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_7
    array-length v5, p1

    array-length v6, p2

    add-int/2addr v5, v6

    new-array v3, v5, [B

    .line 745
    .local v3, output:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {p1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    const/4 v5, 0x0

    array-length v6, p1

    array-length v7, p2

    invoke-static {p2, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 747
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 748
    .local v1, hash:J
    monitor-enter v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_25

    .line 749
    :try_start_1d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 750
    monitor-exit v0

    goto :goto_6

    :catchall_22
    move-exception v5

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    :try_start_24
    throw v5
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_25} :catch_25

    .line 751
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v1           #hash:J
    .end local v3           #output:[B
    :catch_25
    move-exception v4

    .line 752
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "PicasaStore"

    const-string v6, "cache insert fail"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method


# virtual methods
.method public createTempFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 853
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 854
    .local v0, cache:Lcom/android/gallery3d/common/FileCache;
    if-nez v0, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    invoke-virtual {v0}, Lcom/android/gallery3d/common/FileCache;->createFile()Ljava/io/File;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    goto :goto_7

    .line 855
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    :catch_d
    move-exception v1

    .line 856
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized getCacheDirectory()Ljava/io/File;
    .registers 6

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_22

    .line 183
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/picasasync/PicasaStore;->mUsingInternalStorage:Z

    .line 184
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_68

    .line 186
    :try_start_10
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v1, nomedia:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_68
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_4c

    .line 192
    .end local v1           #nomedia:Ljava/io/File;
    :cond_22
    :goto_22
    :try_start_22
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_43

    .line 193
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasasync/PicasaStore;->mUsingInternalStorage:Z
    :try_end_31
    .catchall {:try_start_22 .. :try_end_31} :catchall_68

    .line 196
    :try_start_31
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .restart local v1       #nomedia:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_68
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_43} :catch_6b

    .line 202
    .end local v1           #nomedia:Ljava/io/File;
    :cond_43
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_68

    monitor-exit p0

    return-object v2

    .line 188
    :catch_4c
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    :try_start_4d
    const-string v2, "PicasaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create \'.nomedia\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_68

    goto :goto_22

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2

    .line 198
    :catch_6b
    move-exception v0

    .line 199
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6c
    const-string v2, "PicasaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create \'.nomedia\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_68

    goto :goto_43
.end method

.method public declared-synchronized onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter "downloadUrl"
    .parameter "file"

    .prologue
    .line 862
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 863
    .local v0, cache:Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_c

    .line 864
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/common/FileCache;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 868
    :goto_a
    monitor-exit p0

    return-void

    .line 866
    :cond_c
    :try_start_c
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_a

    .line 862
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 28
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v4, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 284
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v16

    .line 289
    .local v16, id:J
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v23, v5

    .line 290
    .local v23, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 291
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/google/android/picasasync/PicasaStore;->ALBUM_TABLE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/google/android/picasasync/PicasaStore;->PROJECTION_THUMBNAIL_URL:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 295
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_5f
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_70

    .line 296
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_6b

    .line 300
    :catchall_6b
    move-exception v4

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    .line 298
    :cond_70
    const/4 v4, 0x0

    :try_start_71
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6b

    move-result-object v22

    .line 300
    .local v22, thumbnailUrl:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 304
    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/picasasync/PicasaStore;->lookupBlobCache([B)Lcom/google/android/picasasync/PicasaStore$ImagePack;

    move-result-object v19

    .line 305
    .local v19, pack:Lcom/google/android/picasasync/PicasaStore$ImagePack;
    if-eqz v19, :cond_91

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaStore;->mImagePackWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 338
    :goto_90
    return-object v4

    .line 310
    :cond_91
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaStore;->mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/picasasync/PrefetchHelper;->getAlbumCover(JLjava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 311
    .local v14, file:Ljava/io/File;
    if-eqz v14, :cond_102

    .line 312
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x80000

    cmp-long v4, v4, v6

    if-gez v4, :cond_fb

    .line 313
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v11, v4, [B

    .line 314
    .local v11, content:[B
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 316
    .local v15, fis:Ljava/io/FileInputStream;
    const/16 v18, 0x0

    .line 317
    .local v18, offset:I
    :try_start_b8
    array-length v4, v11

    sub-int v4, v4, v18

    move/from16 v0, v18

    invoke-virtual {v15, v11, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v20

    .line 318
    .local v20, rc:I
    :goto_c1
    if-ltz v20, :cond_d4

    array-length v4, v11

    move/from16 v0, v18

    if-ge v0, v4, :cond_d4

    .line 319
    add-int v18, v18, v20

    .line 320
    array-length v4, v11

    sub-int v4, v4, v18

    move/from16 v0, v18

    invoke-virtual {v15, v11, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v20

    goto :goto_c1

    .line 322
    :cond_d4
    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/google/android/picasasync/PicasaStore;->putBlobCache([B[B)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/picasasync/PicasaStore;->mBytesWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_e6
    .catchall {:try_start_b8 .. :try_end_e6} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_e6} :catch_eb

    move-result-object v4

    .line 327
    invoke-static {v15}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_90

    .line 324
    .end local v20           #rc:I
    :catch_eb
    move-exception v13

    .line 325
    .local v13, e:Ljava/io/IOException;
    :try_start_ec
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_f6

    .line 327
    .end local v13           #e:Ljava/io/IOException;
    :catchall_f6
    move-exception v4

    invoke-static {v15}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 330
    .end local v11           #content:[B
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #offset:I
    :cond_fb
    const/high16 v4, 0x1000

    invoke-static {v14, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_90

    .line 335
    :cond_102
    const/16 v4, 0xc8

    const/4 v5, 0x1

    :try_start_105
    move-object/from16 v0, v22

    invoke-static {v0, v4, v5}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, downloadUrl:Ljava/lang/String;
    new-instance v9, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;

    invoke-static/range {v22 .. v22}, Lcom/android/gallery3d/common/Utils;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v4}, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasasync/PicasaStore;[B)V

    .line 338
    .local v9, register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    const/4 v10, 0x0

    new-instance v4, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;

    move-object/from16 v5, p0

    move-wide/from16 v6, v16

    invoke-direct/range {v4 .. v9}, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasasync/PicasaStore;JLjava/lang/String;Lcom/google/android/picasasync/PicasaStore$DownloadListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_125} :catch_128

    move-result-object v4

    goto/16 :goto_90

    .line 339
    .end local v8           #downloadUrl:Ljava/lang/String;
    .end local v9           #register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    :catch_128
    move-exception v21

    .line 340
    .local v21, t:Ljava/lang/Throwable;
    const-string v4, "PicasaStore"

    const-string v5, "download fail"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
.end method

.method public openContentImage(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaStore;->mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

    iget-wide v2, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->album_id:J

    iget-wide v4, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/picasasync/PrefetchHelper;->getPrefetchEntry(JJ)Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;

    move-result-object v0

    .line 414
    .local v0, entry:Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
    if-eqz v0, :cond_1f

    iget v1, v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 415
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 420
    :goto_1e
    return-object v1

    :cond_1f
    iget-wide v1, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    iget-object v3, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->contentUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/picasasync/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_1e
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 19
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 347
    const-string v2, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 348
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_25
    const-string v2, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 352
    .local v15, type:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v11

    .line 355
    .local v11, id:J
    const-string v2, "screennail"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v2}, Lcom/google/android/picasasync/PicasaStore;->lookupBlobCache(JI)Lcom/google/android/picasasync/PicasaStore$ImagePack;

    move-result-object v14

    .line 357
    .local v14, pack:Lcom/google/android/picasasync/PicasaStore$ImagePack;
    if-eqz v14, :cond_4d

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaStore;->mImagePackWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 396
    .end local v14           #pack:Lcom/google/android/picasasync/PicasaStore$ImagePack;
    :goto_4c
    return-object v2

    .line 362
    :cond_4d
    const-string v2, "thumbnail"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 363
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v2}, Lcom/google/android/picasasync/PicasaStore;->lookupBlobCache(JI)Lcom/google/android/picasasync/PicasaStore$ImagePack;

    move-result-object v14

    .line 364
    .restart local v14       #pack:Lcom/google/android/picasasync/PicasaStore$ImagePack;
    if-eqz v14, :cond_69

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaStore;->mImagePackWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_4c

    .line 370
    .end local v14           #pack:Lcom/google/android/picasasync/PicasaStore$ImagePack;
    :cond_69
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v3

    .line 371
    .local v5, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/PicasaStore;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 372
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/android/picasasync/PicasaStore;->PHOTO_TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/google/android/picasasync/PicasaStore;->PROJECTION_PHOTO_INFO:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 377
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_93
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    new-instance v13, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;

    invoke-direct {v13, v10}, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_b6

    .line 379
    .local v13, info:Lcom/google/android/picasasync/PicasaStore$PhotoInfo;
    :goto_9e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 382
    if-nez v13, :cond_c5

    .line 385
    const-string v2, "content_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, contentUrl:Ljava/lang/String;
    if-eqz v9, :cond_bb

    .line 387
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/google/android/picasasync/PicasaStore;->openUnknownImage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_4c

    .line 377
    .end local v9           #contentUrl:Ljava/lang/String;
    .end local v13           #info:Lcom/google/android/picasasync/PicasaStore$PhotoInfo;
    :cond_b4
    const/4 v13, 0x0

    goto :goto_9e

    .line 379
    :catchall_b6
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 389
    .restart local v9       #contentUrl:Ljava/lang/String;
    .restart local v13       #info:Lcom/google/android/picasasync/PicasaStore$PhotoInfo;
    :cond_bb
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    .end local v9           #contentUrl:Ljava/lang/String;
    :cond_c5
    const-string v2, "screennail"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 392
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/picasasync/PicasaStore;->openScreenNail(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_4c

    .line 393
    :cond_d5
    const-string v2, "thumbnail"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/picasasync/PicasaStore;->openThumbNail(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_4c

    .line 396
    :cond_e5
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/picasasync/PicasaStore;->openContentImage(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_4c
.end method

.method public openScreenNail(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

    iget-wide v1, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->album_id:J

    iget-wide v12, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/google/android/picasasync/PrefetchHelper;->getPrefetchEntry(JJ)Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;

    move-result-object v8

    .line 449
    .local v8, entry:Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
    if-eqz v8, :cond_88

    .line 451
    iget v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a7

    .line 452
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 453
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 454
    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 455
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x280

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 458
    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 460
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_56

    .line 461
    const/16 v0, 0x280

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 463
    iget v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->rotation:I

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 464
    const/16 v0, 0x5f

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 466
    .local v7, content:[B
    iget-wide v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/google/android/picasasync/PicasaStore;->putBlobCache(JI[B)V

    .line 467
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBytesWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    invoke-direct {p0, v7, v0}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 491
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #content:[B
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_55
    return-object v0

    .line 469
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_56
    new-instance v9, Ljava/io/File;

    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 470
    .local v9, file:Ljava/io/File;
    const-string v0, "PicasaStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid prefetch file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 487
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_88
    :try_start_88
    iget-object v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->screennailUrl:Ljava/lang/String;

    const/16 v1, 0x280

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 489
    .local v4, downloadUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;

    iget-wide v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    const/4 v2, 0x0

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasasync/PicasaStore;JI)V

    .line 491
    .local v5, register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    const/4 v12, 0x0

    new-instance v0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;

    iget-wide v2, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasasync/PicasaStore;JLjava/lang/String;Lcom/google/android/picasasync/PicasaStore$DownloadListener;)V

    invoke-direct {p0, v12, v0}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_a5} :catch_ba

    move-result-object v0

    goto :goto_55

    .line 479
    .end local v4           #downloadUrl:Ljava/lang/String;
    .end local v5           #register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    :cond_a7
    iget v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    .line 480
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_55

    .line 493
    :catch_ba
    move-exception v11

    .line 494
    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "PicasaStore"

    const-string v1, "download fail"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public openThumbNail(Lcom/google/android/picasasync/PicasaStore$PhotoInfo;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mPrefetchHelper:Lcom/google/android/picasasync/PrefetchHelper;

    iget-wide v1, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->album_id:J

    iget-wide v12, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/google/android/picasasync/PrefetchHelper;->getPrefetchEntry(JJ)Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;

    move-result-object v8

    .line 504
    .local v8, entry:Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;
    if-eqz v8, :cond_88

    .line 505
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 506
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 507
    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 508
    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 511
    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 513
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_56

    .line 514
    const/16 v0, 0xc8

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 516
    iget v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 517
    iget v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->rotation:I

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Lcom/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 519
    :cond_43
    const/16 v0, 0x5f

    invoke-static {v6, v0}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 520
    .local v7, content:[B
    iget-wide v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/google/android/picasasync/PicasaStore;->putBlobCache(JI[B)V

    .line 521
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaStore;->mBytesWriter:Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;

    invoke-direct {p0, v7, v0}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 538
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #content:[B
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_55
    return-object v0

    .line 523
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_56
    new-instance v9, Ljava/io/File;

    iget-object v0, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v9, file:Ljava/io/File;
    const-string v0, "PicasaStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid prefetch file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/picasasync/PrefetchHelper$PrefetchEntry;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 534
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_88
    :try_start_88
    iget-object v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->screennailUrl:Ljava/lang/String;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/PicasaApi;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, downloadUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;

    iget-wide v0, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    const/4 v2, 0x1

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasasync/PicasaStore;JI)V

    .line 538
    .local v5, register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    const/4 v12, 0x0

    new-instance v0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;

    iget-wide v2, p1, Lcom/google/android/picasasync/PicasaStore$PhotoInfo;->id:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasasync/PicasaStore;JLjava/lang/String;Lcom/google/android/picasasync/PicasaStore$DownloadListener;)V

    invoke-direct {p0, v12, v0}, Lcom/google/android/picasasync/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_a5} :catch_a7

    move-result-object v0

    goto :goto_55

    .line 540
    .end local v4           #downloadUrl:Ljava/lang/String;
    .end local v5           #register:Lcom/google/android/picasasync/PicasaStore$BlobCacheRegister;
    :catch_a7
    move-exception v11

    .line 541
    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "PicasaStore"

    const-string v1, "download fail"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method
