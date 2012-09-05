.class public Lcom/sec/android/app/dlna/dlnaservice/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/app/dlna/dlnaservice/Downloader;


# instance fields
.field downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

.field private isCancel:Z

.field private mContentName:Ljava/lang/String;

.field private progressHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/dlnaservice/Downloader;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    if-nez v0, :cond_f

    .line 65
    const-class v1, Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    monitor-enter v1

    .line 66
    :try_start_7
    new-instance v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    .line 67
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 69
    :cond_f
    sget-object v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    return-object v0

    .line 67
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public cancelDownload(Z)Z
    .registers 3
    .parameter "toCancel"

    .prologue
    .line 334
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z

    .line 335
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z

    return v0
.end method

.method public downloadContents(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, selectedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/ContentItem;>;"
    new-instance v0, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;-><init>(Lcom/sec/android/app/dlna/dlnaservice/Downloader;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->downloadThread:Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/dlnaservice/Downloader$ProgressDialogThreadAtDownload;->start()V

    .line 84
    return-void
.end method

.method public getDownloadingContentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCancel:Z

    return v0
.end method

.method public setDownloadingContentName(Ljava/lang/String;)V
    .registers 2
    .parameter "contentName"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->mContentName:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setProgressHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->progressHandler:Landroid/os/Handler;

    .line 331
    return-void
.end method
