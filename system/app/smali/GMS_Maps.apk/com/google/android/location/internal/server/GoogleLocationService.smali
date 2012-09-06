.class public Lcom/google/android/location/internal/server/GoogleLocationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

.field private b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 282
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Ljava/io/FilenameFilter;)Ljava/lang/ClassLoader;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 102
    if-nez v2, :cond_d

    .line 206
    :goto_c
    return-object v0

    .line 106
    :cond_d
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 107
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    xor-long/2addr v5, v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    xor-long/2addr v5, v7

    long-to-int v2, v5

    const v5, 0xffffff

    and-int/2addr v2, v5

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nlp-dex-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jar"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 132
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-eqz v2, :cond_db

    .line 142
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 144
    array-length v4, v3

    move v2, v1

    :goto_6e
    if-ge v2, v4, :cond_7b

    aget-object v7, v3, v2

    .line 145
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_78

    .line 144
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 158
    :cond_7b
    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/location/internal/server/GoogleLocationService$DexJarNameFilter;

    const-string v4, ".dex"

    invoke-direct {v3, v4}, Lcom/google/android/location/internal/server/GoogleLocationService$DexJarNameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 160
    array-length v3, v2

    :goto_8e
    if-ge v1, v3, :cond_a9

    aget-object v4, v2, v1

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 160
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    .line 173
    :cond_a9
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 175
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 181
    :goto_c4
    const/4 v4, 0x0

    const/16 v7, 0x2000

    invoke-virtual {v1, v3, v4, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_d5

    .line 182
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_c4

    .line 198
    :catch_d2
    move-exception v1

    goto/16 :goto_c

    .line 184
    :cond_d5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 185
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 194
    :cond_db
    invoke-virtual {p2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 196
    new-instance v1, Ldalvik/system/DexClassLoader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, v2, v5, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_104} :catch_d2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_104} :catch_107

    move-object v0, v1

    goto/16 :goto_c

    .line 202
    :catch_107
    move-exception v1

    goto/16 :goto_c
.end method

.method private a(Landroid/content/Context;Ljava/io/FilenameFilter;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 219
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v4, :cond_1f

    aget-object v0, v3, v2

    .line 220
    const/4 v5, 0x0

    invoke-interface {p2, v5, v0}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_1e

    move-result v5

    if-eqz v5, :cond_1a

    .line 231
    :goto_19
    return-object v0

    .line 219
    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e

    .line 224
    :catch_1e
    move-exception v0

    :cond_1f
    move-object v0, v1

    .line 231
    goto :goto_19
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    if-eqz v0, :cond_a

    .line 265
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    invoke-interface {v0, p2}, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;->dump(Ljava/io/PrintWriter;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 267
    :cond_a
    monitor-exit p0

    return-void

    .line 264
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    if-eqz v0, :cond_d

    .line 237
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    invoke-interface {v0}, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;->getBinder()Landroid/os/IBinder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 239
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 236
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCreate()V
    .registers 3

    .prologue
    .line 38
    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Ljava/lang/ClassLoader;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-nez v0, :cond_18

    .line 47
    :try_start_5
    new-instance v0, Lcom/google/android/location/internal/server/GoogleLocationService$DexJarNameFilter;

    const-string v1, ".jar"

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/GoogleLocationService$DexJarNameFilter;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p0, v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Landroid/content/Context;Ljava/io/FilenameFilter;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_33

    .line 53
    invoke-direct {p0, v1, p0, v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->a(Ljava/lang/String;Landroid/content/Context;Ljava/io/FilenameFilter;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Ljava/lang/ClassLoader;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_3a

    .line 65
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Ljava/lang/ClassLoader;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_3c

    if-eqz v0, :cond_31

    .line 67
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Ljava/lang/ClassLoader;

    const-string v1, "com.google.android.location.internal.server.NetworkLocationServiceImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    iput-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    .line 72
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    invoke-interface {v0, p0}, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;->init(Landroid/app/Service;)V
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_3f

    .line 79
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 57
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->b:Ljava/lang/ClassLoader;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_18

    .line 60
    :catch_3a
    move-exception v0

    goto :goto_18

    .line 38
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :catch_3f
    move-exception v0

    goto :goto_31
.end method

.method public declared-synchronized onDestroy()V
    .registers 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    invoke-interface {v0}, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;->destroy()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 260
    :cond_d
    monitor-exit p0

    return-void

    .line 256
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStart(Landroid/content/Intent;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_5

    .line 252
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 249
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/google/android/location/internal/server/GoogleLocationService;->a:Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;

    invoke-interface {v0, p1}, Lcom/google/android/location/internal/server/GoogleLocationService$NetworkServiceInterface;->handleIntent(Landroid/content/Intent;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_3

    .line 245
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
