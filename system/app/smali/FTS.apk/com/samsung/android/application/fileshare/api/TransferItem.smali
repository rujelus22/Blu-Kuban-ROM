.class public abstract Lcom/samsung/android/application/fileshare/api/TransferItem;
.super Ljava/lang/Object;
.source "TransferItem.java"


# instance fields
.field protected mDownloadSize:J

.field protected mDownloadUri:Landroid/net/Uri;

.field protected mMimeType:Ljava/lang/String;

.field protected mPhysicalType:Ljava/lang/String;

.field protected mRelativePath:Ljava/lang/String;

.field protected mSenderInfo:Lcom/samsung/android/application/fileshare/api/SenderInfo;

.field protected mSize:J

.field protected mTitle:Ljava/lang/String;

.field protected mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mUri:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mTitle:Ljava/lang/String;

    .line 34
    iput-wide v2, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSize:J

    .line 35
    iput-wide v2, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadSize:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mMimeType:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mPhysicalType:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mRelativePath:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadUri:Landroid/net/Uri;

    .line 40
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSenderInfo:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 31
    return-void
.end method


# virtual methods
.method public final getDownloadedSize()J
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadSize:J

    return-wide v0
.end method

.method public final getDownloadedUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getFileSize()J
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSize:J

    return-wide v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mSenderInfo:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/TransferItem;->mUri:Ljava/lang/String;

    return-object v0
.end method
