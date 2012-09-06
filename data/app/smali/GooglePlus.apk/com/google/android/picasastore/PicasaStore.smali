.class Lcom/google/android/picasastore/PicasaStore;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/UrlDownloader$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;,
        Lcom/google/android/picasastore/PicasaStore$ImagePack;,
        Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;,
        Lcom/google/android/picasastore/PicasaStore$DownloadWriter;,
        Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;,
        Lcom/google/android/picasastore/PicasaStore$DownloadListener;
    }
.end annotation


# instance fields
.field private mBlobCache:Lcom/android/gallery3d/common/BlobCache;

.field private mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mCreatePipe:Ljava/lang/reflect/Method;

.field private mFileCache:Lcom/android/gallery3d/common/FileCache;

.field private mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
            "<",
            "Lcom/google/android/picasastore/PicasaStore$ImagePack;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeepAlive:Ljava/util/WeakHashMap;
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

.field private final mMountListener:Landroid/content/BroadcastReceiver;

.field private final mServerSocket:Ljava/net/ServerSocket;

.field private final mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

.field private mUsingInternalStorage:Z

.field private mVersionInfo:Lcom/google/android/picasastore/VersionInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v3, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    .line 93
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    .line 606
    new-instance v3, Lcom/google/android/picasastore/PicasaStore$2;

    invoke-direct {v3, p0}, Lcom/google/android/picasastore/PicasaStore$2;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    .line 622
    new-instance v3, Lcom/google/android/picasastore/PicasaStore$3;

    invoke-direct {v3, p0}, Lcom/google/android/picasastore/PicasaStore$3;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    .line 103
    new-instance v3, Lcom/google/android/picasastore/UrlDownloader;

    invoke-direct {v3, p0}, Lcom/google/android/picasastore/UrlDownloader;-><init>(Lcom/google/android/picasastore/UrlDownloader$Controller;)V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

    .line 106
    :try_start_28
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    .line 107
    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_36} :catch_67

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, createPipeMethod:Ljava/lang/reflect/Method;
    :try_start_37
    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-string v4, "createPipe"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_37 .. :try_end_41} :catch_70

    move-result-object v0

    .line 119
    :goto_42
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    .line 131
    new-instance v3, Lcom/google/android/picasastore/PicasaStore$1;

    invoke-direct {v3, p0}, Lcom/google/android/picasastore/PicasaStore$1;-><init>(Lcom/google/android/picasastore/PicasaStore;)V

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore;->mMountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void

    .line 108
    .end local v0           #createPipeMethod:Ljava/lang/reflect/Method;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :catch_67
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cannot create server socket"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #createPipeMethod:Ljava/lang/reflect/Method;
    :catch_70
    move-exception v3

    goto :goto_42
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/PicasaStore;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->onMediaMountOrUnmount()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasastore/PicasaStore;JI)[B
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/picasastore/PicasaStore;[B[B[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[B[B)V

    return-void
.end method

.method private checkCacheVersion(Ljava/lang/String;I)Z
    .registers 6
    .parameter "key"
    .parameter "currentVersion"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    if-nez v0, :cond_28

    .line 170
    new-instance v0, Lcom/google/android/picasastore/VersionInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;

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

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/VersionInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    .line 172
    :cond_28
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/VersionInfo;->getVersion(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_3c

    .line 173
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/picasastore/VersionInfo;->setVersion(Ljava/lang/String;I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;

    invoke-virtual {v0}, Lcom/google/android/picasastore/VersionInfo;->sync()V

    .line 175
    const/4 v0, 0x1

    .line 177
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
    .line 808
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

    if-nez v1, :cond_9

    .line 809
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->createSocketPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 812
    :goto_8
    return-object v1

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mCreatePipe:Ljava/lang/reflect/Method;

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

    .line 813
    :catch_18
    move-exception v0

    .line 814
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "fail to create pipe"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_27

    check-cast v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/lang/Throwable;
    throw v0

    .line 816
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

    .line 790
    new-array v1, v8, [Ljava/net/Socket;

    .line 791
    .local v1, socket:[Ljava/net/Socket;
    monitor-enter p0

    .line 792
    const/4 v2, 0x0

    :try_start_7
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    aput-object v3, v1, v2

    .line 794
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    aput-object v3, v1, v2

    .line 795
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_49

    .line 796
    new-array v0, v8, [Landroid/os/ParcelFileDescriptor;

    aget-object v2, v1, v6

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v6

    aget-object v2, v1, v7

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v0, v7

    .line 802
    .local v0, pipe:[Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v6

    aget-object v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mKeepAlive:Ljava/util/WeakHashMap;

    aget-object v3, v0, v7

    aget-object v4, v1, v7

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    return-object v0

    .line 795
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
    .line 373
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 375
    .local v0, cache:Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_1f

    .line 377
    invoke-virtual {v0, p3}, Lcom/android/gallery3d/common/FileCache;->lookup(Ljava/lang/String;)Lcom/android/gallery3d/common/FileCache$CacheEntry;

    move-result-object v1

    .line 378
    .local v1, entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    if-eqz v1, :cond_1f

    .line 379
    iget-object v3, v1, Lcom/android/gallery3d/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    const/high16 v4, 0x1000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_17

    move-result-object v3

    .line 389
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    .end local v1           #entry:Lcom/android/gallery3d/common/FileCache$CacheEntry;
    :goto_15
    monitor-exit p0

    return-object v3

    .line 383
    :catch_17
    move-exception v2

    .line 384
    .local v2, t:Ljava/lang/Throwable;
    :try_start_18
    const-string v3, "PicasaStore"

    const-string v4, "open image from download cache"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_3e

    .line 389
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_1f
    const/4 v3, 0x0

    :try_start_20
    new-instance v4, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;

    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mUrlDownloader:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v5, p3}, Lcom/google/android/picasastore/UrlDownloader;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/google/android/picasastore/PicasaStore$InputStreamWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/io/InputStream;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_3e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2e} :catch_30

    move-result-object v3

    goto :goto_15

    .line 391
    :catch_30
    move-exception v2

    .line 392
    .restart local v2       #t:Ljava/lang/Throwable;
    :try_start_31
    const-string v3, "PicasaStore"

    const-string v4, "download fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3
    :try_end_3e
    .catchall {:try_start_31 .. :try_end_3e} :catchall_3e

    .line 373
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAlbumCoverFile(JLjava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "albumId"
    .parameter "thumbnailUrl"

    .prologue
    .line 226
    const-string v1, ".thumb"

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getAlbumCoverCacheFile(JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 228
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d

    .end local v0           #file:Ljava/io/File;
    :goto_c
    return-object v0

    .restart local v0       #file:Ljava/io/File;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized getBlobCache()Lcom/android/gallery3d/common/BlobCache;
    .registers 9

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-nez v0, :cond_43

    .line 182
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_5e

    move-result-object v6

    .line 184
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

    .line 185
    .local v1, path:Ljava/lang/String;
    const-string v0, "picasa-image-cache-version"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/google/android/picasastore/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 186
    invoke-static {v1}, Lcom/android/gallery3d/common/BlobCache;->deleteFiles(Ljava/lang/String;)V

    .line 188
    :cond_32
    iget-boolean v0, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    if-eqz v0, :cond_47

    .line 189
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x4e2

    const/high16 v3, 0x320

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_5e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_43} :catch_55

    .line 200
    .end local v1           #path:Ljava/lang/String;
    .end local v6           #cacheDir:Ljava/io/File;
    :cond_43
    :goto_43
    :try_start_43
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_5e

    monitor-exit p0

    return-object v0

    .line 193
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #cacheDir:Ljava/io/File;
    :cond_47
    :try_start_47
    new-instance v0, Lcom/android/gallery3d/common/BlobCache;

    const/16 v2, 0x1388

    const/high16 v3, 0xc80

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_5e
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_54} :catch_55

    goto :goto_43

    .line 196
    .end local v1           #path:Ljava/lang/String;
    :catch_55
    move-exception v7

    .line 197
    .local v7, t:Ljava/lang/Throwable;
    :try_start_56
    const-string v0, "PicasaStore"

    const-string v2, "fail to create blob cache"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5e

    goto :goto_43

    .line 181
    .end local v6           #cacheDir:Ljava/io/File;
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDownloadCache()Lcom/android/gallery3d/common/FileCache;
    .registers 8

    .prologue
    .line 204
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4e

    if-nez v0, :cond_32

    .line 206
    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaStore;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "download-cache"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v2, rootDir:Ljava/io/File;
    const-string v0, "picasa-download-cache-version"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/picasastore/PicasaStore;->checkCacheVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 209
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v1, "picasa-downloads"

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/common/FileCache;->deleteFiles(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 211
    :cond_20
    iget-boolean v0, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    if-nez v0, :cond_36

    .line 212
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x6400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_32} :catch_45

    .line 222
    .end local v2           #rootDir:Ljava/io/File;
    :cond_32
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_4e

    monitor-exit p0

    return-object v0

    .line 215
    .restart local v2       #rootDir:Ljava/io/File;
    :cond_36
    :try_start_36
    new-instance v0, Lcom/android/gallery3d/common/FileCache;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    const-string v3, "picasa-downloads"

    const-wide/32 v4, 0x1400000

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/common/FileCache;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_32

    .line 218
    .end local v2           #rootDir:Ljava/io/File;
    :catch_45
    move-exception v6

    .line 219
    .local v6, t:Ljava/lang/Throwable;
    :try_start_46
    const-string v0, "PicasaStore"

    const-string v1, "fail to create file cache"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_32

    .line 204
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getItemIdFromUri(Landroid/net/Uri;)J
    .registers 5
    .parameter "uri"

    .prologue
    .line 233
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

    .line 236
    :goto_f
    return-wide v1

    .line 234
    :catch_10
    move-exception v0

    .line 235
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

    .line 236
    const-wide/16 v1, -0x1

    goto :goto_f
.end method

.method private isKeyMatched([B[B[B)Z
    .registers 12
    .parameter "key"
    .parameter "auxKey"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    .line 721
    if-nez p2, :cond_15

    .line 722
    array-length v6, p3

    array-length v7, p1

    if-ge v6, v7, :cond_8

    .line 747
    :cond_7
    :goto_7
    return v5

    .line 725
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, n:I
    :goto_a
    if-ge v0, v1, :cond_50

    .line 726
    aget-byte v6, p1, v0

    aget-byte v7, p3, v0

    if-ne v6, v7, :cond_7

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 729
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_15
    array-length v6, p1

    array-length v7, p2

    add-int/2addr v6, v7

    add-int/lit8 v4, v6, 0x2

    .line 730
    .local v4, totalKeyLength:I
    array-length v6, p3

    if-lt v6, v4, :cond_7

    invoke-direct {p0, v4}, Lcom/google/android/picasastore/PicasaStore;->isKeyTooLong(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 733
    const/4 v0, 0x0

    .restart local v0       #i:I
    array-length v1, p1

    .restart local v1       #n:I
    :goto_25
    if-ge v0, v1, :cond_30

    .line 734
    aget-byte v6, p1, v0

    aget-byte v7, p3, v0

    if-ne v6, v7, :cond_7

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 737
    :cond_30
    array-length v2, p1

    .line 739
    .local v2, offset:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    aget-byte v6, p3, v2

    int-to-byte v7, v4

    if-ne v6, v7, :cond_7

    .line 740
    add-int/lit8 v2, v3, 0x1

    .end local v3           #offset:I
    .restart local v2       #offset:I
    aget-byte v6, p3, v3

    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    if-ne v6, v7, :cond_7

    .line 743
    const/4 v0, 0x0

    array-length v1, p2

    :goto_43
    if-ge v0, v1, :cond_50

    .line 744
    aget-byte v6, p2, v0

    add-int v7, v0, v2

    aget-byte v7, p3, v7

    if-ne v6, v7, :cond_7

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 747
    .end local v2           #offset:I
    .end local v4           #totalKeyLength:I
    :cond_50
    const/4 v5, 0x1

    goto :goto_7
.end method

.method private isKeyTooLong(I)Z
    .registers 3
    .parameter "totalKeyLength"

    .prologue
    .line 650
    const/16 v0, 0x7fff

    if-le p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;
    .registers 8
    .parameter "id"
    .parameter "type"
    .parameter "url"

    .prologue
    .line 677
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v1

    .line 678
    .local v1, key:[B
    if-nez p4, :cond_c

    const/4 v0, 0x0

    .line 679
    .local v0, auxKey:[B
    :goto_7
    invoke-direct {p0, v1, v0}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache([B[B)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v2

    return-object v2

    .line 678
    .end local v0           #auxKey:[B
    :cond_c
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7
.end method

.method private lookupBlobCache([B[B)Lcom/google/android/picasastore/PicasaStore$ImagePack;
    .registers 12
    .parameter "key"
    .parameter "auxKey"

    .prologue
    const/4 v6, 0x0

    .line 658
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v0

    .line 659
    .local v0, cache:Lcom/android/gallery3d/common/BlobCache;
    if-nez v0, :cond_8

    .line 672
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_7
    :goto_7
    return-object v6

    .line 660
    .restart local v0       #cache:Lcom/android/gallery3d/common/BlobCache;
    :cond_8
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 662
    .local v2, hash:J
    monitor-enter v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_34

    .line 663
    :try_start_d
    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v1

    .line 664
    .local v1, content:[B
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_31

    .line 665
    if-eqz v1, :cond_7

    :try_start_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/picasastore/PicasaStore;->isKeyMatched([B[B[B)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 667
    array-length v7, p1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    array-length v8, p1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int v4, v7, v8

    .line 669
    .local v4, offset:I
    new-instance v7, Lcom/google/android/picasastore/PicasaStore$ImagePack;

    invoke-direct {v7, v4, v1}, Lcom/google/android/picasastore/PicasaStore$ImagePack;-><init>(I[B)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2f} :catch_34

    move-object v6, v7

    goto :goto_7

    .line 664
    .end local v1           #content:[B
    .end local v4           #offset:I
    :catchall_31
    move-exception v7

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v7
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_34} :catch_34

    .line 670
    .end local v0           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #hash:J
    :catch_34
    move-exception v5

    .line 671
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "PicasaStore"

    const-string v8, "cache lookup fail"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private makeKey(JI)[B
    .registers 9
    .parameter "id"
    .parameter "type"

    .prologue
    const/16 v4, 0x8

    .line 754
    const/16 v2, 0x9

    new-array v0, v2, [B

    .line 755
    .local v0, array:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v4, :cond_14

    .line 756
    mul-int/lit8 v2, v1, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 758
    :cond_14
    int-to-byte v2, p3

    aput-byte v2, v0, v4

    .line 759
    return-object v0
.end method

.method private declared-synchronized onMediaMountOrUnmount()V
    .registers 2

    .prologue
    .line 821
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 822
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    if-eqz v0, :cond_10

    .line 823
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mBlobCache:Lcom/android/gallery3d/common/BlobCache;

    .line 826
    :cond_10
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    if-eqz v0, :cond_1c

    .line 827
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mFileCache:Lcom/android/gallery3d/common/FileCache;

    .line 830
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaStore;->mVersionInfo:Lcom/google/android/picasastore/VersionInfo;
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    .line 831
    monitor-exit p0

    return-void

    .line 821
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
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
    .line 766
    .local p1, args:Ljava/lang/Object;,"TT;"
    .local p2, func:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;,"Lcom/google/android/picasastore/PicasaStore$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 767
    .local v1, pipe:[Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/google/android/picasastore/PicasaStore$4;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/google/android/picasastore/PicasaStore$4;-><init>(Lcom/google/android/picasastore/PicasaStore;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V

    .line 778
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/picasastore/AsyncTaskUtil;->executeInParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 779
    const/4 v3, 0x0

    aget-object v3, v1, v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v3

    .line 780
    .end local v1           #pipe:[Landroid/os/ParcelFileDescriptor;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_13
    move-exception v0

    .line 781
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
    .line 343
    const-string v0, "thumbnail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 344
    const/16 v0, 0xc8

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 350
    :cond_f
    :goto_f
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/picasastore/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 346
    :cond_16
    const-string v0, "screennail"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 347
    const/16 v0, 0x280

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f
.end method

.method private putBlobCache(JILjava/lang/String;[B)V
    .registers 8
    .parameter "id"
    .parameter "type"
    .parameter "url"
    .parameter "content"

    .prologue
    .line 711
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->makeKey(JI)[B

    move-result-object v1

    .line 712
    .local v1, key:[B
    if-nez p4, :cond_b

    const/4 v0, 0x0

    .line 713
    .local v0, auxKey:[B
    :goto_7
    invoke-direct {p0, v1, v0, p5}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache([B[B[B)V

    .line 714
    return-void

    .line 712
    .end local v0           #auxKey:[B
    :cond_b
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7
.end method

.method private putBlobCache([B[B[B)V
    .registers 14
    .parameter "key"
    .parameter "auxKey"
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 683
    if-nez p2, :cond_e

    .line 684
    .local v0, auxKeyLength:I
    :goto_3
    array-length v7, p1

    add-int/2addr v7, v0

    add-int/lit8 v6, v7, 0x2

    .line 685
    .local v6, totalKeyLength:I
    invoke-direct {p0, v6}, Lcom/google/android/picasastore/PicasaStore;->isKeyTooLong(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 708
    :cond_d
    :goto_d
    return-void

    .line 683
    .end local v0           #auxKeyLength:I
    .end local v6           #totalKeyLength:I
    :cond_e
    array-length v0, p2

    goto :goto_3

    .line 687
    .restart local v0       #auxKeyLength:I
    .restart local v6       #totalKeyLength:I
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getBlobCache()Lcom/android/gallery3d/common/BlobCache;

    move-result-object v1

    .line 688
    .local v1, cache:Lcom/android/gallery3d/common/BlobCache;
    if-eqz v1, :cond_d

    .line 689
    array-length v7, p3

    add-int/2addr v7, v6

    new-array v4, v7, [B

    .line 693
    .local v4, output:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    array-length v7, p1

    int-to-byte v8, v6

    aput-byte v8, v4, v7

    .line 695
    array-length v7, p1

    add-int/lit8 v7, v7, 0x1

    ushr-int/lit8 v8, v6, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 696
    if-lez v0, :cond_35

    .line 697
    const/4 v7, 0x0

    array-length v8, p1

    add-int/lit8 v8, v8, 0x2

    invoke-static {p2, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    :cond_35
    const/4 v7, 0x0

    array-length v8, p3

    invoke-static {p3, v7, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v2

    .line 702
    .local v2, hash:J
    monitor-enter v1
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_3f} :catch_47

    .line 703
    :try_start_3f
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/gallery3d/common/BlobCache;->insert(J[B)V

    .line 704
    monitor-exit v1

    goto :goto_d

    :catchall_44
    move-exception v7

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    :try_start_46
    throw v7
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_47} :catch_47

    .line 705
    .end local v1           #cache:Lcom/android/gallery3d/common/BlobCache;
    .end local v2           #hash:J
    .end local v4           #output:[B
    :catch_47
    move-exception v5

    .line 706
    .local v5, t:Ljava/lang/Throwable;
    const-string v7, "PicasaStore"

    const-string v8, "cache insert fail"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method


# virtual methods
.method public createTempFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 836
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 837
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

    .line 838
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    :catch_d
    move-exception v1

    .line 839
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized getCacheDirectory()Ljava/io/File;
    .registers 6

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5e

    .line 165
    :goto_7
    monitor-exit p0

    return-object v2

    .line 149
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z

    .line 153
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    if-nez v2, :cond_3f

    .line 154
    const-string v2, "PicasaStore"

    const-string v3, "switch to internal storage for picasastore cache"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    .line 156
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaStore;->mUsingInternalStorage:Z
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_5e

    .line 158
    :try_start_28
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    .local v1, nomedia:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_5e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3a} :catch_42

    .line 163
    .end local v1           #nomedia:Ljava/io/File;
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3f
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    goto :goto_7

    .line 160
    :catch_42
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PicasaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create \'.nomedia\' in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasastore/PicasaStore;->mCacheDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5e

    goto :goto_3a

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .parameter "downloadUrl"
    .parameter "file"

    .prologue
    .line 845
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaStore;->getDownloadCache()Lcom/android/gallery3d/common/FileCache;

    move-result-object v0

    .line 846
    .local v0, cache:Lcom/android/gallery3d/common/FileCache;
    if-eqz v0, :cond_c

    .line 847
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/common/FileCache;->store(Ljava/lang/String;Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    .line 851
    :goto_a
    monitor-exit p0

    return-void

    .line 849
    :cond_c
    :try_start_c
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    goto :goto_a

    .line 845
    .end local v0           #cache:Lcom/android/gallery3d/common/FileCache;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 26
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 249
    const-string v2, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 250
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid mode: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_25
    invoke-static/range {p1 .. p1}, Lcom/google/android/picasastore/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v3

    .line 254
    .local v3, id:J
    const-string v2, "content_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, thumbnailUrl:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2, v6}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v20

    .line 258
    .local v20, pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v20, :cond_47

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 294
    :goto_46
    return-object v2

    .line 261
    :cond_47
    if-nez v6, :cond_57

    .line 262
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_57
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/google/android/picasastore/PicasaStore;->getAlbumCoverFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 267
    .local v17, file:Ljava/io/File;
    if-eqz v17, :cond_e7

    .line 268
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/32 v11, 0x80000

    cmp-long v2, v9, v11

    if-gez v2, :cond_dd

    .line 269
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v2, v9

    new-array v7, v2, [B

    .line 270
    .local v7, content:[B
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 272
    .local v18, fis:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 273
    .local v19, offset:I
    :try_start_7c
    array-length v2, v7

    sub-int v2, v2, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v21

    .line 274
    .local v21, rc:I
    :goto_87
    if-ltz v21, :cond_9c

    array-length v2, v7

    move/from16 v0, v19

    if-ge v0, v2, :cond_9c

    .line 275
    add-int v19, v19, v21

    .line 276
    array-length v2, v7

    sub-int v2, v2, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v21

    goto :goto_87

    .line 278
    :cond_9c
    const/4 v5, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache(JILjava/lang/String;[B)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_ab
    .catchall {:try_start_7c .. :try_end_ab} :catchall_d8
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_ab} :catch_b0

    move-result-object v2

    .line 283
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_46

    .line 280
    .end local v21           #rc:I
    :catch_b0
    move-exception v16

    .line 281
    .local v16, e:Ljava/io/IOException;
    :try_start_b1
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d8
    .catchall {:try_start_b1 .. :try_end_d8} :catchall_d8

    .line 283
    .end local v16           #e:Ljava/io/IOException;
    :catchall_d8
    move-exception v2

    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 286
    .end local v7           #content:[B
    .end local v18           #fis:Ljava/io/FileInputStream;
    .end local v19           #offset:I
    :cond_dd
    const/high16 v2, 0x1000

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_46

    .line 291
    :cond_e7
    const/16 v2, 0xc8

    const/4 v5, 0x1

    :try_start_ea
    invoke-static {v6, v2, v5}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 293
    .local v15, downloadUrl:Ljava/lang/String;
    new-instance v8, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-wide v10, v3

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JILjava/lang/String;)V

    .line 294
    .local v8, register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    const/4 v2, 0x0

    new-instance v9, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object/from16 v10, p0

    move-wide v11, v3

    move-object v13, v15

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_108} :catch_10b

    move-result-object v2

    goto/16 :goto_46

    .line 296
    .end local v8           #register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    .end local v15           #downloadUrl:Ljava/lang/String;
    :catch_10b
    move-exception v22

    .line 297
    .local v22, t:Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v5, "download fail"

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v5, "w"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 305
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :cond_21
    const-string v5, "type"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, type:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/picasastore/PicasaStore;->getItemIdFromUri(Landroid/net/Uri;)J

    move-result-wide v1

    .line 312
    .local v1, id:J
    const-string v5, "content_url"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, contentUrl:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_72

    .line 317
    const-string v5, "screennail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 318
    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v5, v0}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v3

    .line 319
    .local v3, pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v3, :cond_4d

    .line 320
    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    invoke-direct {p0, v3, v5}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 335
    .end local v3           #pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :goto_4c
    return-object v5

    .line 322
    .restart local v3       #pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :cond_4d
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openScreenNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_4c

    .line 323
    .end local v3           #pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :cond_52
    const-string v5, "thumbnail"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 324
    const/4 v5, 0x1

    invoke-direct {p0, v1, v2, v5, v0}, Lcom/google/android/picasastore/PicasaStore;->lookupBlobCache(JILjava/lang/String;)Lcom/google/android/picasastore/PicasaStore$ImagePack;

    move-result-object v3

    .line 325
    .restart local v3       #pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    if-eqz v3, :cond_68

    .line 326
    iget-object v5, p0, Lcom/google/android/picasastore/PicasaStore;->mImagePackWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    invoke-direct {p0, v3, v5}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_4c

    .line 328
    :cond_68
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openThumbNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_4c

    .line 330
    .end local v3           #pack:Lcom/google/android/picasastore/PicasaStore$ImagePack;
    :cond_6d
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/picasastore/PicasaStore;->openFullImage(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_4c

    .line 332
    :cond_72
    if-eqz v0, :cond_79

    .line 335
    invoke-direct {p0, v0, v4}, Lcom/google/android/picasastore/PicasaStore;->openUnknownImage(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_4c

    .line 337
    :cond_79
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public openFullImage(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .parameter "id"
    .parameter "contentUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    const-string v2, ".full"

    invoke-static {p1, p2, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 358
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_17

    .line 359
    const/high16 v2, 0x1000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v2

    .line 367
    .end local v0           #file:Ljava/io/File;
    :goto_e
    return-object v2

    .line 361
    :catch_f
    move-exception v1

    .line 362
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v3, "openFullImage from cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_17
    if-nez p3, :cond_1f

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 367
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/picasastore/PicasaStore;->findInCacheOrDownload(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_e
.end method

.method public openScreenNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .parameter "id"
    .parameter "contentUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    const-string v1, ".screen"

    invoke-static {p1, p2, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 402
    .local v7, file:Ljava/io/File;
    if-eqz v7, :cond_17

    .line 403
    const/high16 v1, 0x1000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    .line 417
    .end local v7           #file:Ljava/io/File;
    :goto_e
    return-object v1

    .line 405
    :catch_f
    move-exception v8

    .line 406
    .local v8, t:Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "openScreenNail from cache"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_17
    if-nez p3, :cond_1f

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 413
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JILjava/lang/String;)V

    .line 415
    .local v0, register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    const/16 v1, 0x280

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, downloadUrl:Ljava/lang/String;
    const/4 v9, 0x0

    new-instance v1, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object v2, p0

    move-wide v3, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    invoke-direct {p0, v9, v1}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3b} :catch_3d

    move-result-object v1

    goto :goto_e

    .line 419
    .end local v0           #register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    .end local v5           #downloadUrl:Ljava/lang/String;
    :catch_3d
    move-exception v8

    .line 420
    .restart local v8       #t:Ljava/lang/Throwable;
    const-string v1, "PicasaStore"

    const-string v2, "download fail"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method public openThumbNail(JLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 24
    .parameter "id"
    .parameter "contentUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 429
    :try_start_0
    const-string v2, ".screen"

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getCacheFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 430
    .local v16, file:Ljava/io/File;
    if-eqz v16, :cond_8b

    .line 431
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, filepath:Ljava/lang/String;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 433
    .local v18, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 434
    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 435
    const/high16 v2, 0x4348

    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 438
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 441
    .local v15, bitmap:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_60

    .line 442
    const/16 v2, 0xc8

    const/4 v3, 0x1

    invoke-static {v15, v2, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 443
    const/16 v2, 0x5f

    invoke-static {v15, v2}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v7

    .line 445
    .local v7, content:[B
    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/picasastore/PicasaStore;->putBlobCache(JILjava/lang/String;[B)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasastore/PicasaStore;->mBytesWriter:Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 462
    .end local v7           #content:[B
    .end local v15           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filepath:Ljava/lang/String;
    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_5f
    return-object v2

    .line 448
    .restart local v15       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #filepath:Ljava/lang/String;
    .restart local v18       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_60
    const-string v2, "PicasaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid prefetch file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8b} :catch_93

    .line 456
    .end local v15           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filepath:Ljava/lang/String;
    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_8b
    :goto_8b
    if-nez p3, :cond_9e

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 451
    :catch_93
    move-exception v19

    .line 452
    .local v19, t:Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v3, "openThumbNail from screennail"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    .line 458
    .end local v19           #t:Ljava/lang/Throwable;
    :cond_9e
    :try_start_9e
    new-instance v8, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;

    const/4 v12, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;-><init>(Lcom/google/android/picasastore/PicasaStore;JILjava/lang/String;)V

    .line 460
    .local v8, register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    const/16 v2, 0xc8

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    .line 462
    .local v13, downloadUrl:Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v9, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;-><init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lcom/google/android/picasastore/PicasaStore;->openPipeHelper(Ljava/lang/Object;Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_c3} :catch_c5

    move-result-object v2

    goto :goto_5f

    .line 464
    .end local v8           #register:Lcom/google/android/picasastore/PicasaStore$BlobCacheRegister;
    .end local v13           #downloadUrl:Ljava/lang/String;
    :catch_c5
    move-exception v19

    .line 465
    .restart local v19       #t:Ljava/lang/Throwable;
    const-string v2, "PicasaStore"

    const-string v3, "download fail"

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
.end method
