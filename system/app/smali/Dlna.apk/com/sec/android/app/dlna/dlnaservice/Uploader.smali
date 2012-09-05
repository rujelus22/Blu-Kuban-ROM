.class public Lcom/sec/android/app/dlna/dlnaservice/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/dlnaservice/Uploader$CountingOutputStream;,
        Lcom/sec/android/app/dlna/dlnaservice/Uploader$DOAInputStreamEntity;,
        Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;
    }
.end annotation


# static fields
.field private static MediaSize:J

.field private static instance:Lcom/sec/android/app/dlna/dlnaservice/Uploader;


# instance fields
.field private isCancel:Z

.field private progressHandler:Landroid/os/Handler;

.field uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z

    return p1
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 43
    sget-wide v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->MediaSize:J

    return-wide v0
.end method

.method static synthetic access$102(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    sput-wide p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->MediaSize:J

    return-wide p0
.end method

.method static synthetic access$114(J)J
    .registers 4
    .parameter "x0"

    .prologue
    .line 43
    sget-wide v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->MediaSize:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->MediaSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/dlnaservice/Uploader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/dlna/dlnaservice/Uploader;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    if-nez v0, :cond_f

    .line 59
    const-class v1, Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    monitor-enter v1

    .line 60
    :try_start_7
    new-instance v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    .line 61
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 63
    :cond_f
    sget-object v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->instance:Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    return-object v0

    .line 61
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public cancelUpload(Z)Z
    .registers 3
    .parameter "toCancel"

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z

    .line 289
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z

    return v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCancel:Z

    return v0
.end method

.method public postContents(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "targetDMSUdn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, selectedItemsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/api/ContentItem;>;"
    new-instance v0, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;-><init>(Lcom/sec/android/app/dlna/dlnaservice/Uploader;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->uploaderThread:Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/dlnaservice/Uploader$ProgressDialogThreadAtMultiUpload;->start()V

    .line 89
    return-void
.end method

.method public setProgressHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->progressHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method
