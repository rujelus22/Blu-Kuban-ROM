.class public Lcom/sec/android/providers/downloads/SecDownloadService;
.super Landroid/app/Service;
.source "SecDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;,
        Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;,
        Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mDownloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/providers/downloads/SecDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mNewChars:Landroid/database/CharArrayBuffer;

.field private mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

.field private mObserver:Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;

.field private mPendingUpdate:Z

.field private mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

.field private oldChars:Landroid/database/CharArrayBuffer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 310
    return-void
.end method

.method private HandleRoapData(Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z
    .registers 6
    .parameter "Info"

    .prologue
    const/4 v3, 0x0

    .line 1354
    iget v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 1356
    iget-object v0, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mAppData:Ljava/lang/String;

    .line 1403
    .local v0, Filename:Ljava/lang/String;
    :goto_8
    if-eqz v0, :cond_12

    .line 1404
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1409
    .end local v0           #Filename:Ljava/lang/String;
    :cond_12
    return v3

    .line 1358
    :cond_13
    iget v1, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_12

    .line 1360
    iget-object v0, p1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .restart local v0       #Filename:Ljava/lang/String;
    goto :goto_8
.end method

.method static synthetic access$000(Lcom/sec/android/providers/downloads/SecDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/providers/downloads/SecDownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/android/providers/downloads/SecDownloadService;->scanFile(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/providers/downloads/SecDownloadService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadService;->deleteDownload(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;IZZJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/providers/downloads/SecDownloadService;->insertDownload(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/providers/downloads/SecDownloadService;IJ)J
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/providers/downloads/SecDownloadService;->nextAction(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/Cursor;IZZJ)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/providers/downloads/SecDownloadService;->updateDownload(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadNotification;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnection:Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/providers/downloads/SecDownloadService;)Landroid/media/IMediaScannerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/providers/downloads/SecDownloadService;)Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/providers/downloads/SecDownloadService;Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;)Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/providers/downloads/SecDownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/providers/downloads/SecDownloadService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/android/providers/downloads/SecDownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/providers/downloads/SecDownloadService;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/providers/downloads/SecDownloadService;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/providers/downloads/SecDownloadService;->shouldScanFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/providers/downloads/SecDownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->mediaScannerConnected()Z

    move-result v0

    return v0
.end method

.method private deleteDownload(I)V
    .registers 8
    .parameter "arrayPos"

    .prologue
    const/16 v5, 0x1ea

    const/4 v4, 0x7

    .line 1193
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 1194
    .local v1, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    iget v2, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_55

    .line 1195
    iput v5, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1196
    iget-object v2, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 1197
    iput v4, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 1198
    new-instance v0, Lcom/sec/android/providers/downloads/SecNotifyThread;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/providers/downloads/SecNotifyThread;-><init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V

    .line 1199
    .local v0, NotifyThread:Lcom/sec/android/providers/downloads/SecNotifyThread;
    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecNotifyThread;->start()V

    .line 1209
    .end local v0           #NotifyThread:Lcom/sec/android/providers/downloads/SecNotifyThread;
    :cond_21
    :goto_21
    const/16 v2, 0xb6

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    if-ne v2, v3, :cond_68

    .line 1210
    iput v5, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1211
    iget-object v2, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    if-eqz v2, :cond_37

    .line 1212
    iput v4, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 1213
    new-instance v0, Lcom/sec/android/providers/downloads/SecNotifyThread;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/providers/downloads/SecNotifyThread;-><init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V

    .line 1214
    .restart local v0       #NotifyThread:Lcom/sec/android/providers/downloads/SecNotifyThread;
    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecNotifyThread;->start()V

    .line 1233
    .end local v0           #NotifyThread:Lcom/sec/android/providers/downloads/SecNotifyThread;
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    iget-object v2, v2, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1236
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f

    .line 1242
    invoke-static {p0, v1}, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->deleteInfo(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)V

    .line 1246
    :cond_4f
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1247
    return-void

    .line 1205
    :cond_55
    iget v2, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 1207
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_21

    .line 1220
    :cond_68
    const/4 v2, 0x2

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-eq v2, v3, :cond_7c

    const/4 v2, 0x3

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-eq v2, v3, :cond_7c

    const/4 v2, 0x4

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-eq v2, v3, :cond_7c

    const/4 v2, 0x5

    iget v3, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    if-ne v2, v3, :cond_37

    .line 1224
    :cond_7c
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    if-eqz v2, :cond_37

    .line 1225
    iget-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    invoke-virtual {v2}, Lcom/sec/android/providers/downloads/SecDrmHandler;->CancelRoapProcess()Z

    .line 1229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    goto :goto_37
.end method

.method private insertDownload(Landroid/database/Cursor;IZZJ)V
    .registers 49
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "networkRoaming"
    .parameter "now"

    .prologue
    .line 673
    const-string v3, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 674
    .local v39, statusColumn:I
    const-string v3, "numfailed"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 675
    .local v36, failedColumn:I
    const-string v3, "method"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 677
    .local v38, retryRedirect:I
    new-instance v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no_integrity"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_217

    const/4 v5, 0x1

    :goto_4e
    const-string v6, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const v14, 0xfffffff

    and-int v14, v14, v38

    shr-int/lit8 v15, v38, 0x1c

    const-string v16, "lastmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v18, "notificationpackage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "notificationclass"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "notificationextras"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "cookiedata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "useragent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "referer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v26, "etag"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_21a

    const/16 v27, 0x1

    :goto_189
    const-string v28, "downloadmethod"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const-string v29, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const-string v30, "dd_objUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v31, "dd_notifyurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    const-string v32, "entity"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const-string v33, "storagetype"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    invoke-direct/range {v2 .. v33}, Lcom/sec/android/providers/downloads/SecDownloadInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    .local v2, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 747
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21e

    .line 753
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->checkInfoForInsert(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21e

    .line 899
    :cond_216
    :goto_216
    return-void

    .line 677
    .end local v2           #info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    :cond_217
    const/4 v5, 0x0

    goto/16 :goto_4e

    :cond_21a
    const/16 v27, 0x0

    goto/16 :goto_189

    .line 764
    .restart local v2       #info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    :cond_21e
    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_238

    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v4, 0xb5

    if-ne v3, v4, :cond_238

    .line 766
    new-instance v37, Lcom/sec/android/providers/downloads/SecDescriptionParser;

    iget-object v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mAppData:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/providers/downloads/SecDescriptionParser;-><init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Ljava/lang/String;Landroid/content/Context;)V

    .line 767
    .local v37, handle:Lcom/sec/android/providers/downloads/SecDescriptionParser;
    invoke-virtual/range {v37 .. v37}, Lcom/sec/android/providers/downloads/SecDescriptionParser;->ParseData()V

    goto :goto_216

    .line 770
    .end local v37           #handle:Lcom/sec/android/providers/downloads/SecDescriptionParser;
    :cond_238
    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v4, 0xb8

    if-ne v3, v4, :cond_28c

    .line 777
    const/16 v3, 0x291

    iput v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 778
    const/16 v3, 0x9

    iput v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 779
    iget-object v0, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mAppData:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 781
    .local v34, Filename:Ljava/lang/String;
    if-eqz v34, :cond_256

    .line 782
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v34

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 785
    :cond_256
    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v40

    .line 787
    .local v40, uri:Landroid/net/Uri;
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v41, values:Landroid/content/ContentValues;
    const-string v3, "status"

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v3, "state"

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_216

    .line 828
    .end local v34           #Filename:Ljava/lang/String;
    .end local v40           #uri:Landroid/net/Uri;
    .end local v41           #values:Landroid/content/ContentValues;
    :cond_28c
    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    if-nez v3, :cond_2f7

    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    if-eqz v3, :cond_299

    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f7

    :cond_299
    iget-object v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_2f7

    .line 833
    iget-object v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/sec/android/providers/downloads/SecHelpers;->isSupportMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f7

    iget-object v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f7

    .line 834
    const/16 v3, 0x196

    iput v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 835
    const/16 v3, 0x9

    iput v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 836
    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v40

    .line 837
    .restart local v40       #uri:Landroid/net/Uri;
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 838
    .restart local v41       #values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0x196

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v3, "state"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 841
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->sendIntentIfRequested(Landroid/net/Uri;Landroid/content/Context;)V

    goto/16 :goto_216

    .line 847
    .end local v40           #uri:Landroid/net/Uri;
    .end local v41           #values:Landroid/content/ContentValues;
    :cond_2f7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->canUseNetwork(ZZ)Z

    move-result v3

    if-eqz v3, :cond_356

    .line 848
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->isReadyToStart(J)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 854
    iget-boolean v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    if-eqz v3, :cond_315

    .line 855
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Multiple threads on same download on insert"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 857
    :cond_315
    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_345

    .line 858
    const/16 v3, 0xc0

    iput v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 859
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .restart local v41       #values:Landroid/content/ContentValues;
    const-string v3, "status"

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v5, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 865
    .end local v41           #values:Landroid/content/ContentValues;
    :cond_345
    new-instance v35, Lcom/sec/android/providers/downloads/SecDownloadThread;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/providers/downloads/SecDownloadThread;-><init>(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)V

    .line 866
    .local v35, downloader:Lcom/sec/android/providers/downloads/SecDownloadThread;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 867
    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/providers/downloads/SecDownloadThread;->start()V

    goto/16 :goto_216

    .line 870
    .end local v35           #downloader:Lcom/sec/android/providers/downloads/SecDownloadThread;
    :cond_356
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->isReadyToStart(J)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 871
    new-instance v41, Landroid/content/ContentValues;

    invoke-direct/range {v41 .. v41}, Landroid/content/ContentValues;-><init>()V

    .line 872
    .restart local v41       #values:Landroid/content/ContentValues;
    iget v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3b4

    .line 873
    const-string v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 875
    const-string v3, "numfailed"

    iget v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v3, "SecDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SecDownloadService : insertDownload : Network Not Available : Retry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v5, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_216

    .line 882
    :cond_3b4
    iget-object v3, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v3, :cond_3cf

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3cf

    .line 883
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 885
    :cond_3cf
    const-string v3, "status"

    const/16 v4, 0x1ef

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    const-string v3, "state"

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v3, "SecDownloader"

    const-string v4, "SecDownloadService : insertDownload : Network Not Available : All retries failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v5, v2, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_216
.end method

.method private mediaScannerConnected()Z
    .registers 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private nextAction(IJ)J
    .registers 12
    .parameter "arrayPos"
    .parameter "now"

    .prologue
    const-wide/16 v3, 0x0

    .line 1257
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 1258
    .local v0, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1259
    const-wide/16 v3, -0x1

    .line 1272
    :cond_14
    :goto_14
    return-wide v3

    .line 1261
    :cond_15
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    const/16 v6, 0xc1

    if-ne v5, v6, :cond_14

    .line 1264
    iget v5, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    if-eqz v5, :cond_14

    .line 1267
    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->restartTime()J

    move-result-wide v1

    .line 1268
    .local v1, when:J
    cmp-long v5, v1, p2

    if-gtz v5, :cond_4a

    .line 1269
    const-string v5, "SecDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecDownloadService : nextAction : when: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "now :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1272
    :cond_4a
    sub-long v3, v1, p2

    goto :goto_14
.end method

.method private processRoapMimeData(Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z
    .registers 3
    .parameter "info"

    .prologue
    .line 1449
    const/4 v0, 0x0

    return v0
.end method

.method private removeSpuriousFiles()V
    .registers 16

    .prologue
    .line 567
    const/4 v10, 0x0

    .line 569
    .local v10, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v8, "(status ==  \'193\' ) OR (status ==  \'190\')"

    .line 574
    .local v8, WHERE_INCOMPLETE:Ljava/lang/String;
    const/4 v0, 0x1

    sget-boolean v1, Lcom/sec/android/providers/downloads/SecConstants;->bInternalSDFlag:Z

    if-ne v0, v1, :cond_2f

    .line 575
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, PhoneMemory_DirPath:Ljava/lang/String;
    if-eqz v7, :cond_2f

    .line 578
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 579
    .local v12, files:[Ljava/io/File;
    if-eqz v12, :cond_2f

    .line 580
    new-instance v10, Ljava/util/HashSet;

    .end local v10           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 581
    .restart local v10       #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_20
    array-length v0, v12

    if-ge v13, v0, :cond_2f

    .line 582
    aget-object v0, v12, v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    .line 588
    .end local v7           #PhoneMemory_DirPath:Ljava/lang/String;
    .end local v12           #files:[Ljava/io/File;
    .end local v13           #i:I
    :cond_2f
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/providers/downloads/SecHelpers;->GetDownloadTempPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 590
    .local v6, ExternalMemory_DirPath:Ljava/lang/String;
    if-eqz v6, :cond_58

    .line 591
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 592
    .restart local v12       #files:[Ljava/io/File;
    if-eqz v12, :cond_58

    .line 593
    if-nez v10, :cond_48

    .line 594
    new-instance v10, Ljava/util/HashSet;

    .end local v10           #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 596
    .restart local v10       #fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_48
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_49
    array-length v0, v12

    if-ge v13, v0, :cond_58

    .line 597
    aget-object v0, v12, v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    .line 602
    .end local v12           #files:[Ljava/io/File;
    .end local v13           #i:I
    :cond_58
    if-nez v10, :cond_5b

    .line 632
    :cond_5a
    return-void

    .line 606
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "(status ==  \'193\' ) OR (status ==  \'190\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 611
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_a7

    .line 612
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 614
    :cond_79
    const-string v0, "SecDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecDownloadService : removeSpuriousFiles : file to be kept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 618
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_79

    .line 620
    :cond_a4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_a7
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 623
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_ab
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 624
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 630
    .local v11, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_ab
.end method

.method private scanFile(Landroid/database/Cursor;I)Z
    .registers 11
    .parameter "cursor"
    .parameter "arrayPos"

    .prologue
    const/4 v3, 0x1

    .line 1307
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 1309
    .local v1, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    monitor-enter p0

    .line 1310
    :try_start_a
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v4, :cond_2b

    .line 1313
    :goto_e
    iget-boolean v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z

    if-eqz v4, :cond_2b

    .line 1314
    const-string v4, "SecDownloader"

    const-string v5, "waiting for mMediaScannerService service: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_28

    .line 1316
    const-wide/16 v4, 0x2710

    :try_start_1b
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_e

    .line 1317
    :catch_1f
    move-exception v0

    .line 1318
    .local v0, e1:Ljava/lang/InterruptedException;
    :try_start_20
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "wait interrupted"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1346
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v3

    .line 1323
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    if-eqz v4, :cond_65

    .line 1329
    :try_start_2f
    iget-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    iget-object v5, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v6, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/media/IMediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    if-eqz p1, :cond_62

    .line 1331
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1332
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "scanned"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_28
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_62} :catch_64

    .line 1338
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_62
    :try_start_62
    monitor-exit p0

    .line 1349
    :goto_63
    return v3

    .line 1339
    :catch_64
    move-exception v3

    .line 1346
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_28

    .line 1349
    const/4 v3, 0x0

    goto :goto_63
.end method

.method private shouldScanFile(I)Z
    .registers 5
    .parameter "arrayPos"

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 1289
    .local v0, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    iget-boolean v1, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMediaScanned:Z

    if-nez v1, :cond_1c

    iget v1, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    if-nez v1, :cond_1c

    iget v1, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    iget v2, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    invoke-static {v1, v2}, Landroid/provider/Downloads$Impl;->isDownloadSuccessCompleted(II)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "old"
    .parameter "cursor"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 1163
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1164
    .local v1, index:I
    if-nez p1, :cond_c

    .line 1165
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1186
    .end local p1
    :cond_b
    :goto_b
    return-object p1

    .line 1167
    .restart local p1
    :cond_c
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_19

    .line 1168
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    .line 1170
    :cond_19
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1171
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1172
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_2d

    .line 1173
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 1175
    :cond_2d
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_3e

    .line 1176
    :cond_37
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    .line 1178
    :cond_3e
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 1179
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNewChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 1180
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1181
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_4b
    if-ltz v0, :cond_b

    .line 1182
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_59

    .line 1183
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    .line 1181
    .restart local p1
    :cond_59
    add-int/lit8 v0, v0, -0x1

    goto :goto_4b
.end method

.method private trimDatabase()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 638
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 642
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_21

    .line 644
    const-string v0, "SecDownloader"

    const-string v1, "SecDownloadService : trimDatabase : null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_20
    return-void

    .line 647
    :cond_21
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 648
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v8, v0, -0x3e8

    .line 649
    .local v8, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 650
    .local v6, columnId:I
    :goto_33
    if-lez v8, :cond_4c

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_50

    .line 660
    .end local v6           #columnId:I
    .end local v8           #numDelete:I
    :cond_4c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_20

    .line 657
    .restart local v6       #columnId:I
    .restart local v8       #numDelete:I
    :cond_50
    add-int/lit8 v8, v8, -0x1

    goto :goto_33
.end method

.method private updateDownload(Landroid/database/Cursor;IZZJ)V
    .registers 30
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "networkRoaming"
    .parameter "now"

    .prologue
    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 911
    .local v10, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    const-string v19, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 912
    .local v16, statusColumn:I
    const-string v19, "numfailed"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 913
    .local v9, failedColumn:I
    const-string v19, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 916
    .local v15, stateColumn:I
    const-string v19, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    .line 917
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    .line 918
    const-string v19, "no_integrity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_297

    const/16 v19, 0x1

    :goto_76
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNoIntegrity:Z

    .line 920
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHint:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "hint"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHint:Ljava/lang/String;

    .line 921
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mFileName:Ljava/lang/String;

    .line 922
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "mimetype"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMimeType:Ljava/lang/String;

    .line 923
    const-string v19, "destination"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mDestination:I

    .line 926
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mObjectURI:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dd_objUrl"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mObjectURI:Ljava/lang/String;

    .line 927
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dd_notifyurl"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    .line 928
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPrimaryMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dd_primaryMimeType"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPrimaryMimeType:Ljava/lang/String;

    .line 929
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType1:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dd_SecondaryMimeType1"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType1:Ljava/lang/String;

    .line 930
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType2:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dd_SecondaryMimeType2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mSecMimeType2:Ljava/lang/String;

    .line 931
    const-string v19, "dd_contentSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mContentSize:I

    .line 932
    const-string v19, "downloadmethod"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    .line 934
    const-string v19, "visibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 936
    .local v13, newVisibility:I
    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mVisibility:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1ad

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_1ad

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v19

    if-eqz v19, :cond_1ad

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 941
    :cond_1ad
    iput v13, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mVisibility:I

    .line 942
    monitor-enter v10

    .line 943
    :try_start_1b0
    const-string v19, "control"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mControl:I

    .line 944
    monitor-exit v10
    :try_end_1c7
    .catchall {:try_start_1b0 .. :try_end_1c7} :catchall_29b

    .line 945
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 946
    .local v12, newStatus:I
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 948
    .local v11, newState:I
    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v19

    if-nez v19, :cond_1f8

    invoke-static {v11}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v19

    if-eqz v19, :cond_1f8

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 951
    :cond_1f8
    iput v12, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 952
    iput v11, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 957
    const/16 v19, 0x2

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22c

    const/16 v19, 0x5

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22c

    const/16 v19, 0x3

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_22c

    const/16 v19, 0x4

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_252

    :cond_22c
    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/provider/Downloads$Impl;->isDownloadCompleted(I)Z

    move-result v19

    if-nez v19, :cond_242

    const/16 v19, 0x8

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_252

    .line 960
    :cond_242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_252

    .line 964
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    .line 968
    :cond_252
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v0, v11, :cond_29e

    .line 973
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 974
    .local v18, values:Landroid/content/ContentValues;
    const-string v19, "state"

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 980
    new-instance v6, Lcom/sec/android/providers/downloads/SecNotifyThread;

    move-object/from16 v0, p0

    invoke-direct {v6, v10, v0}, Lcom/sec/android/providers/downloads/SecNotifyThread;-><init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V

    .line 981
    .local v6, Notification:Lcom/sec/android/providers/downloads/SecNotifyThread;
    invoke-virtual {v6}, Lcom/sec/android/providers/downloads/SecNotifyThread;->start()V

    .line 1156
    .end local v6           #Notification:Lcom/sec/android/providers/downloads/SecNotifyThread;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_296
    :goto_296
    return-void

    .line 918
    .end local v11           #newState:I
    .end local v12           #newStatus:I
    .end local v13           #newVisibility:I
    :cond_297
    const/16 v19, 0x0

    goto/16 :goto_76

    .line 944
    .restart local v13       #newVisibility:I
    :catchall_29b
    move-exception v19

    :try_start_29c
    monitor-exit v10
    :try_end_29d
    .catchall {:try_start_29c .. :try_end_29d} :catchall_29b

    throw v19

    .line 986
    .restart local v11       #newState:I
    .restart local v12       #newStatus:I
    :cond_29e
    const/16 v19, 0x3

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2b6

    const/16 v19, 0x4

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_339

    :cond_2b6
    const/16 v19, 0xb7

    move/from16 v0, v19

    if-ne v0, v12, :cond_339

    .line 994
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/providers/downloads/SecDownloadService;->processRoapMimeData(Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z

    move-result v19

    if-nez v19, :cond_32c

    .line 995
    const/16 v19, 0x290

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 996
    const/16 v19, 0x9

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 1010
    :goto_2d0
    sget-object v19, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 1012
    .local v17, uri:Landroid/net/Uri;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1013
    .restart local v18       #values:Landroid/content/ContentValues;
    const/16 v19, 0x3

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2fb

    .line 1014
    const-string v7, "Download_Drm"

    .line 1015
    .local v7, Title:Ljava/lang/String;
    const-string v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    .end local v7           #Title:Ljava/lang/String;
    :cond_2fb
    const-string v19, "status"

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string v19, "state"

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_296

    .line 1002
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_32c
    const/16 v19, 0xb9

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1003
    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    goto :goto_2d0

    .line 1020
    :cond_339
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v0, v11, :cond_3f1

    .line 1021
    const/16 v19, 0x5

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMethod:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3b1

    .line 1023
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/android/providers/downloads/SecDownloadService;->HandleRoapData(Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z

    move-result v19

    if-nez v19, :cond_3a4

    .line 1028
    const/16 v19, 0x291

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1029
    const/16 v19, 0x9

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    .line 1036
    :goto_35f
    sget-object v19, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 1038
    .restart local v17       #uri:Landroid/net/Uri;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1039
    .restart local v18       #values:Landroid/content/ContentValues;
    const-string v19, "status"

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    const-string v19, "state"

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_296

    .line 1032
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_3a4
    const/16 v19, 0xb9

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1033
    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mState:I

    goto :goto_35f

    .line 1046
    :cond_3b1
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1047
    .restart local v18       #values:Landroid/content/ContentValues;
    const-string v19, "state"

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1053
    new-instance v5, Lcom/sec/android/providers/downloads/SecHandlerThread;

    move-object/from16 v0, p0

    invoke-direct {v5, v10, v0}, Lcom/sec/android/providers/downloads/SecHandlerThread;-><init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V

    .line 1054
    .local v5, Handler:Lcom/sec/android/providers/downloads/SecHandlerThread;
    invoke-virtual {v5}, Lcom/sec/android/providers/downloads/SecHandlerThread;->start()V

    goto/16 :goto_296

    .line 1059
    .end local v5           #Handler:Lcom/sec/android/providers/downloads/SecHandlerThread;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_3f1
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNumFailed:I

    .line 1060
    const-string v19, "method"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1062
    .local v14, retryRedirect:I
    const v19, 0xfffffff

    and-int v19, v19, v14

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRetryAfter:I

    .line 1063
    shr-int/lit8 v19, v14, 0x1c

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mRedirectCount:I

    .line 1064
    const-string v19, "lastmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    iput-wide v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mLastMod:J

    .line 1066
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "notificationpackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mPackage:Ljava/lang/String;

    .line 1068
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mClass:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "notificationclass"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mClass:Ljava/lang/String;

    .line 1069
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCookies:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "cookiedata"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCookies:Ljava/lang/String;

    .line 1070
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUserAgent:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "useragent"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 1071
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mReferer:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "referer"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mReferer:Ljava/lang/String;

    .line 1072
    const-string v19, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mTotalBytes:I

    .line 1074
    const-string v19, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mCurrentBytes:I

    .line 1076
    iget-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mETag:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "etag"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/providers/downloads/SecDownloadService;->stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mETag:Ljava/lang/String;

    .line 1077
    const-string v19, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_542

    const/16 v19, 0x1

    :goto_4fe
    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mMediaScanned:Z

    .line 1081
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_522

    .line 1087
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sec/android/providers/downloads/saveas/SecDownloadSaveasManager;->checkInfoForUpdate(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_296

    .line 1098
    :cond_522
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->canUseNetwork(ZZ)Z

    move-result v19

    if-eqz v19, :cond_296

    .line 1099
    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->isReadyToRestart(J)Z

    move-result v19

    if-eqz v19, :cond_296

    .line 1106
    iget-boolean v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    move/from16 v19, v0

    if-eqz v19, :cond_545

    .line 1107
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Multiple threads on same download on update"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1077
    :cond_542
    const/16 v19, 0x0

    goto :goto_4fe

    .line 1109
    :cond_545
    const/16 v19, 0xc0

    move/from16 v0, v19

    iput v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    .line 1110
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    .restart local v18       #values:Landroid/content/ContentValues;
    const-string v19, "status"

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1115
    new-instance v8, Lcom/sec/android/providers/downloads/SecDownloadThread;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10}, Lcom/sec/android/providers/downloads/SecDownloadThread;-><init>(Landroid/content/Context;Lcom/sec/android/providers/downloads/SecDownloadInfo;)V

    .line 1116
    .local v8, downloader:Lcom/sec/android/providers/downloads/SecDownloadThread;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mHasActiveThread:Z

    .line 1120
    invoke-virtual {v8}, Lcom/sec/android/providers/downloads/SecDownloadThread;->start()V

    goto/16 :goto_296
.end method

.method private updateFromProvider()V
    .registers 2

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mPendingUpdate:Z

    .line 296
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    if-nez v0, :cond_14

    .line 301
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;-><init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    .line 302
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mUpdateThread:Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;

    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecDownloadService$UpdateThread;->start()V

    .line 307
    :cond_14
    monitor-exit p0

    .line 308
    return-void

    .line 307
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private visibleNotification(I)Z
    .registers 4
    .parameter "arrayPos"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 1280
    .local v0, info:Lcom/sec/android/providers/downloads/SecDownloadInfo;
    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecDownloadInfo;->hasCompletionNotification()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "i"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 234
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 240
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDownloads:Ljava/util/ArrayList;

    .line 242
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;-><init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mObserver:Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mObserver:Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iput-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnecting:Z

    .line 249
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;-><init>(Lcom/sec/android/providers/downloads/SecDownloadService;)V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mMediaScannerConnection:Lcom/sec/android/providers/downloads/SecDownloadService$MediaScannerConnection;

    .line 251
    iput-object v4, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    .line 253
    new-instance v0, Lcom/sec/android/providers/downloads/SecDownloadNotification;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/downloads/SecDownloadNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    .line 254
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mNotifier:Lcom/sec/android/providers/downloads/SecDownloadNotification;

    invoke-virtual {v0}, Lcom/sec/android/providers/downloads/SecDownloadNotification;->updateNotification()V

    .line 257
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->trimDatabase()V

    .line 258
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->removeSpuriousFiles()V

    .line 259
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->updateFromProvider()V

    .line 262
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mObserver:Lcom/sec/android/providers/downloads/SecDownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadService;->mDrmHandler:Lcom/sec/android/providers/downloads/SecDrmHandler;

    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 288
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/providers/downloads/SecDownloadService;->updateFromProvider()V

    .line 274
    return-void
.end method
