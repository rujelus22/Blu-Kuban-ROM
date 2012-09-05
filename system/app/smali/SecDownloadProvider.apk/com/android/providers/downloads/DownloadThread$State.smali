.class Lcom/android/providers/downloads/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mBytesNotified:J

.field public mContinuingDownload:Z

.field public mCountRetry:Z

.field public mCurrentBytes:J

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mHeaderETag:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNewUri:Ljava/lang/String;

.field public mRedirectCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStream:Ljava/io/FileOutputStream;

.field public mTimeLastNotification:J

.field public mTotalBytes:J


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 93
    iput v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 94
    iput v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 96
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 98
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 99
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 101
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 102
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 103
    iput-wide v3, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 106
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/downloads/DownloadThread;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 109
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 110
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 111
    return-void
.end method
