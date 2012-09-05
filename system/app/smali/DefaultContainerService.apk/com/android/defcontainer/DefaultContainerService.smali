.class public Lcom/android/defcontainer/DefaultContainerService;
.super Landroid/app/IntentService;
.source "DefaultContainerService.java"


# instance fields
.field private mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 209
    const-string v0, "DefaultContainerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/android/defcontainer/DefaultContainerService$1;

    invoke-direct {v0, p0}, Lcom/android/defcontainer/DefaultContainerService$1;-><init>(Lcom/android/defcontainer/DefaultContainerService;)V

    iput-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/defcontainer/DefaultContainerService;->setIntentRedelivery(Z)V

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/OutputStream;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;IJ)I
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/defcontainer/DefaultContainerService;->recommendAppInstallLocation(ILjava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;J)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/defcontainer/DefaultContainerService;Ljava/io/File;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private calculateContainerSize(Ljava/io/File;)I
    .registers 9
    .parameter "apkFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 570
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 571
    .local v0, sizeBytes:J
    cmp-long v3, v0, v5

    if-nez v3, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_16

    .line 572
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 577
    :cond_16
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesLI(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 579
    const/16 v3, 0x14

    shr-long v3, v0, v3

    long-to-int v2, v3

    .line 580
    .local v2, sizeMb:I
    mul-int/lit16 v3, v2, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v3, v3

    sub-long v3, v0, v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 581
    add-int/lit8 v2, v2, 0x1

    .line 589
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 591
    return v2
.end method

.method private copyFile(Landroid/net/Uri;Ljava/io/OutputStream;)V
    .registers 11
    .parameter "pPackageURI"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_e

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 355
    :cond_e
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, srcPackageFile:Ljava/io/File;
    invoke-static {v4, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 390
    .end local v4           #srcPackageFile:Ljava/io/File;
    :goto_1a
    return-void

    .line 360
    :cond_1b
    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 361
    const/4 v2, 0x0

    .line 363
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_24
    invoke-virtual {p0}, Lcom/android/defcontainer/DefaultContainerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2d} :catch_54

    move-result-object v2

    .line 370
    if-nez v2, :cond_6e

    .line 371
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider returned no file descriptor for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "provider returned no file descriptor"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    :catch_54
    move-exception v1

    .line 365
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open file descriptor from download service. Failed with exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    throw v1

    .line 375
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_6e
    const-string v5, "DefContainer"

    const-string v6, "Opened file descriptor from download service."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 384
    .local v0, dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    invoke-static {v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_1a

    .line 387
    .end local v0           #dlStream:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_7e
    const-string v5, "DefContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package URI is not \'file:\' or \'content:\' - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    new-instance v5, Ljava/io/FileNotFoundException;

    const-string v6, "Package URI is not \'file:\' or \'content:\'"

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private copyResourceInner(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "packageURI"
    .parameter "newCid"
    .parameter "key"
    .parameter "resFileName"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/defcontainer/DefaultContainerService;->isInstalledStorageMounted()Z

    move-result v8

    if-nez v8, :cond_f

    .line 251
    const-string v8, "DefContainer"

    const-string v9, "Make sure sdcard is mounted."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v3, 0x0

    .line 330
    :goto_e
    return-object v3

    .line 256
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, codePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, codeFile:Ljava/io/File;
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;)I
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_40

    move-result v7

    .line 270
    .local v7, sizeMb:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v7, p2, p3, v8}, Lcom/android/internal/content/PackageHelper;->createSdDir(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, newCachePath:Ljava/lang/String;
    if-nez v3, :cond_5f

    .line 271
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v3, 0x0

    goto :goto_e

    .line 263
    .end local v3           #newCachePath:Ljava/lang/String;
    .end local v7           #sizeMb:I
    :catch_40
    move-exception v2

    .line 264
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File does not exist when trying to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v3, 0x0

    goto :goto_e

    .line 276
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #newCachePath:Ljava/lang/String;
    .restart local v7       #sizeMb:I
    :cond_5f
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created container for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v4, resFile:Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 282
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copied "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v6, Ljava/io/File;

    const-string v8, "lib"

    invoke-direct {v6, v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v6, sharedLibraryDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-eqz v8, :cond_111

    .line 293
    invoke-static {v0, v6}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I

    move-result v5

    .line 294
    .local v5, ret:I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_133

    .line 295
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not copy native libraries to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 297
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 285
    .end local v5           #ret:I
    .end local v6           #sharedLibraryDir:Ljava/io/File;
    :cond_e9
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 288
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 300
    .restart local v6       #sharedLibraryDir:Ljava/io/File;
    :cond_111
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not create native lib directory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 302
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 305
    .restart local v5       #ret:I
    :cond_133
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_161

    .line 306
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to finalize "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 309
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 313
    :cond_161
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finalized container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ad

    .line 318
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unmounting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 323
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    goto/16 :goto_e

    .line 326
    :cond_1ad
    const-string v8, "DefContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not mounted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method private static copyToFile(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "srcFile"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_a
    invoke-static {v0, p1}, Lcom/android/defcontainer/DefaultContainerService;->copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    .line 347
    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_16

    .line 349
    :goto_10
    return-void

    .line 347
    :catchall_11
    move-exception v1

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_18

    :goto_15
    throw v1

    :catch_16
    move-exception v1

    goto :goto_10

    :catch_18
    move-exception v2

    goto :goto_15
.end method

.method private static copyToFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "inputStream"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/16 v2, 0x4000

    new-array v0, v2, [B

    .line 336
    .local v0, buffer:[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_f

    .line 337
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 339
    :cond_f
    return-void
.end method

.method private getInstalledStorageDirectory()Ljava/lang/String;
    .registers 5

    .prologue
    .line 618
    const/4 v1, 0x0

    .line 620
    .local v1, result:Ljava/lang/String;
    :try_start_1
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 622
    .local v0, pm:Landroid/content/pm/IPackageManager;
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstalledStorageDirectory()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_11

    move-result-object v1

    move-object v2, v1

    .line 625
    .end local v0           #pm:Landroid/content/pm/IPackageManager;
    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    :goto_10
    return-object v2

    .line 623
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :catch_11
    move-exception v3

    move-object v2, v1

    .line 625
    .end local v1           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_10

    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :catchall_14
    move-exception v3

    move-object v2, v1

    .end local v1           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_10
.end method

.method private isInstalledStorageMounted()Z
    .registers 5

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 603
    .local v1, result:Z
    :try_start_1
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 605
    .local v0, pm:Landroid/content/pm/IPackageManager;
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isInstalledStorageMounted()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_11

    move-result v1

    move v2, v1

    .line 608
    .end local v0           #pm:Landroid/content/pm/IPackageManager;
    .end local v1           #result:Z
    .local v2, result:I
    :goto_10
    return v2

    .line 606
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_11
    move-exception v3

    move v2, v1

    .line 608
    .restart local v2       #result:I
    goto :goto_10

    .end local v2           #result:I
    :catchall_14
    move-exception v3

    move v2, v1

    .restart local v2       #result:I
    goto :goto_10
.end method

.method private isUnderExternalThreshold(Ljava/io/File;)Z
    .registers 10
    .parameter "apkFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 540
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 558
    :cond_7
    :goto_7
    return v5

    .line 544
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/defcontainer/DefaultContainerService;->calculateContainerSize(Ljava/io/File;)I

    move-result v4

    .line 548
    .local v4, sizeMb:I
    invoke-direct {p0}, Lcom/android/defcontainer/DefaultContainerService;->getInstalledStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, installedStorageDirectory:Ljava/lang/String;
    if-eqz v2, :cond_29

    .line 550
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 552
    .local v3, sdStats:Landroid/os/StatFs;
    const/high16 v6, 0x10

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    div-int v1, v6, v7

    .line 553
    .local v1, blocksToMb:I
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    mul-int v0, v6, v1

    .line 558
    .end local v1           #blocksToMb:I
    .end local v3           #sdStats:Landroid/os/StatFs;
    .local v0, availSdMb:I
    :goto_25
    if-le v0, v4, :cond_7

    const/4 v5, 0x1

    goto :goto_7

    .line 555
    .end local v0           #availSdMb:I
    :cond_29
    const/4 v0, -0x1

    .restart local v0       #availSdMb:I
    goto :goto_25
.end method

.method private isUnderInternalThreshold(Ljava/io/File;J)Z
    .registers 13
    .parameter "apkFile"
    .parameter "threshold"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 520
    .local v3, size:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_16

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    .line 521
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5

    .line 524
    :cond_16
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, internalStats:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v0, v5, v7

    .line 528
    .local v0, availInternalSize:J
    sub-long v5, v0, v3

    cmp-long v5, v5, p2

    if-lez v5, :cond_37

    const/4 v5, 0x1

    :goto_36
    return v5

    :cond_37
    const/4 v5, 0x0

    goto :goto_36
.end method

.method private recommendAppInstallLocation(ILjava/lang/String;IJ)I
    .registers 19
    .parameter "installLocation"
    .parameter "archiveFilePath"
    .parameter "flags"
    .parameter "threshold"

    .prologue
    .line 398
    const/4 v3, 0x0

    .line 404
    .local v3, checkBoth:Z
    and-int/lit8 v10, p3, 0x1

    if-eqz v10, :cond_2e

    .line 409
    const/4 v9, 0x1

    .line 454
    .local v9, prefer:I
    :goto_6
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    .line 456
    .local v5, emulated:Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, apkFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 459
    .local v6, fitsOnInternal:Z
    if-nez v3, :cond_15

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    .line 461
    :cond_15
    :try_start_15
    move-wide/from16 v0, p4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/defcontainer/DefaultContainerService;->isUnderInternalThreshold(Ljava/io/File;J)Z
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_65

    move-result v6

    .line 467
    :cond_1b
    const/4 v7, 0x0

    .line 468
    .local v7, fitsOnSd:Z
    if-nez v5, :cond_27

    if-nez v3, :cond_23

    const/4 v10, 0x2

    if-ne v9, v10, :cond_27

    .line 470
    :cond_23
    :try_start_23
    invoke-direct {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->isUnderExternalThreshold(Ljava/io/File;)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_68

    move-result v7

    .line 476
    :cond_27
    const/4 v10, 0x1

    if-ne v9, v10, :cond_6b

    .line 477
    if-eqz v6, :cond_74

    .line 478
    const/4 v10, 0x1

    .line 505
    .end local v7           #fitsOnSd:Z
    :goto_2d
    return v10

    .line 411
    .end local v2           #apkFile:Ljava/io/File;
    .end local v5           #emulated:Z
    .end local v6           #fitsOnInternal:Z
    .end local v9           #prefer:I
    :cond_2e
    and-int/lit8 v10, p3, 0x10

    if-eqz v10, :cond_34

    .line 412
    const/4 v9, 0x1

    .line 413
    .restart local v9       #prefer:I
    goto :goto_6

    .line 414
    .end local v9           #prefer:I
    :cond_34
    and-int/lit8 v10, p3, 0x8

    if-eqz v10, :cond_3a

    .line 415
    const/4 v9, 0x2

    .line 416
    .restart local v9       #prefer:I
    goto :goto_6

    .line 420
    .end local v9           #prefer:I
    :cond_3a
    const/4 v10, 0x1

    if-ne p1, v10, :cond_3f

    .line 421
    const/4 v9, 0x1

    .line 422
    .restart local v9       #prefer:I
    goto :goto_6

    .line 423
    .end local v9           #prefer:I
    :cond_3f
    const/4 v10, 0x2

    if-ne p1, v10, :cond_45

    .line 424
    const/4 v9, 0x2

    .line 425
    .restart local v9       #prefer:I
    const/4 v3, 0x1

    .line 426
    goto :goto_6

    .line 427
    .end local v9           #prefer:I
    :cond_45
    if-nez p1, :cond_4a

    .line 429
    const/4 v9, 0x1

    .line 430
    .restart local v9       #prefer:I
    const/4 v3, 0x1

    .line 431
    goto :goto_6

    .line 435
    .end local v9           #prefer:I
    :cond_4a
    invoke-virtual {p0}, Lcom/android/defcontainer/DefaultContainerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "default_install_location"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 439
    .local v8, installPreference:I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_5e

    .line 440
    const/4 v9, 0x1

    .line 441
    .restart local v9       #prefer:I
    goto :goto_6

    .line 442
    .end local v9           #prefer:I
    :cond_5e
    const/4 v10, 0x2

    if-ne v8, v10, :cond_63

    .line 443
    const/4 v9, 0x2

    .line 444
    .restart local v9       #prefer:I
    goto :goto_6

    .line 451
    .end local v9           #prefer:I
    :cond_63
    const/4 v9, 0x1

    .restart local v9       #prefer:I
    goto :goto_6

    .line 462
    .end local v8           #installPreference:I
    .restart local v2       #apkFile:Ljava/io/File;
    .restart local v5       #emulated:Z
    .restart local v6       #fitsOnInternal:Z
    :catch_65
    move-exception v4

    .line 463
    .local v4, e:Ljava/io/FileNotFoundException;
    const/4 v10, -0x6

    goto :goto_2d

    .line 471
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v7       #fitsOnSd:Z
    :catch_68
    move-exception v4

    .line 472
    .restart local v4       #e:Ljava/io/FileNotFoundException;
    const/4 v10, -0x6

    goto :goto_2d

    .line 480
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :cond_6b
    if-nez v5, :cond_74

    const/4 v10, 0x2

    if-ne v9, v10, :cond_74

    .line 481
    if-eqz v7, :cond_74

    .line 482
    const/4 v10, 0x2

    goto :goto_2d

    .line 486
    :cond_74
    if-eqz v3, :cond_80

    .line 487
    if-eqz v6, :cond_7a

    .line 488
    const/4 v10, 0x1

    goto :goto_2d

    .line 489
    :cond_7a
    if-nez v5, :cond_80

    if-eqz v7, :cond_80

    .line 490
    const/4 v10, 0x2

    goto :goto_2d

    .line 499
    :cond_80
    if-nez v5, :cond_8f

    if-nez v3, :cond_87

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8f

    :cond_87
    invoke-direct {p0}, Lcom/android/defcontainer/DefaultContainerService;->isInstalledStorageMounted()Z

    move-result v10

    if-nez v10, :cond_8f

    .line 503
    const/4 v10, -0x5

    goto :goto_2d

    .line 505
    :cond_8f
    const/4 v10, -0x1

    goto :goto_2d
.end method


# virtual methods
.method eraseFiles(Ljava/io/File;)V
    .registers 8
    .parameter "path"

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, files:[Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 234
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v4, :cond_1e

    aget-object v1, v0, v3

    .line 235
    .local v1, file:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 239
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #file:Ljava/lang/String;
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1e
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 240
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService;->mBinder:Lcom/android/internal/app/IMediaContainerService$Stub;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 215
    const-string v2, "android.content.pm.CLEAN_EXTERNAL_STORAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 216
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 218
    .local v1, pm:Landroid/content/pm/IPackageManager;
    const/4 v0, 0x0

    .line 220
    .local v0, pkg:Ljava/lang/String;
    :goto_17
    :try_start_17
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 221
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 222
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V

    .line 223
    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/defcontainer/DefaultContainerService;->eraseFiles(Ljava/io/File;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_32} :catch_33

    goto :goto_17

    .line 225
    :catch_33
    move-exception v2

    .line 228
    .end local v0           #pkg:Ljava/lang/String;
    .end local v1           #pm:Landroid/content/pm/IPackageManager;
    :cond_34
    return-void
.end method
