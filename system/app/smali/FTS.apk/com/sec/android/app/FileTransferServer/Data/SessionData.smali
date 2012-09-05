.class public Lcom/sec/android/app/FileTransferServer/Data/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field public mDownloadedByte:J

.field public mDownloadingFileName:Ljava/lang/String;

.field public mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mResult:Z

.field public mResultType:I

.field public mSavedByte:J

.field public mSavedFileCnt:I

.field public mSender:Ljava/lang/String;

.field public mSessionID:Ljava/lang/String;

.field public mSessionTitle:Ljava/lang/String;

.field public mState:I

.field public mTotalByte:J

.field public mTotalFileCnt:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    .registers 7
    .parameter "si"
    .parameter "state"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResult:Z

    .line 25
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mFileList:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTransportDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionTitle:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTransportDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadingFileName:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    .line 36
    iput-wide v2, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadedByte:J

    .line 37
    iput-wide v2, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedByte:J

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    .line 39
    iput p2, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mState:I

    .line 40
    return-void
.end method

.method public static calPercent(JJ)I
    .registers 10
    .parameter "progVal"
    .parameter "maxVal"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 54
    cmp-long v3, p2, v4

    if-gtz v3, :cond_8

    .line 60
    :cond_7
    :goto_7
    return v2

    .line 56
    :cond_8
    cmp-long v3, p0, v4

    if-lez v3, :cond_7

    .line 59
    long-to-double v2, p0

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide v4, 0x3f747ae147ae147bL

    add-double v0, v2, v4

    .line 60
    .local v0, percent:D
    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, v0

    double-to-int v2, v2

    goto :goto_7
.end method


# virtual methods
.method public addFiles(Lcom/samsung/android/application/fileshare/api/TransferItem;)I
    .registers 4
    .parameter "item"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mFileList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    invoke-direct {v1, p1}, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;-><init>(Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getProgressPercent()I
    .registers 5

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedByte:J

    iget-wide v2, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mDownloadedByte:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalByte:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->calPercent(JJ)I

    move-result v0

    return v0
.end method
