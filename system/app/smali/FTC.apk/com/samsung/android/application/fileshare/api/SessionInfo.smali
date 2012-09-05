.class public Lcom/samsung/android/application/fileshare/api/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# instance fields
.field mCurrentFileIndex:I

.field mCurrentSendingItem:Ljava/io/File;

.field mSendItemList:[Ljava/io/File;

.field mSenderDescription:Ljava/lang/String;

.field mSenderName:Ljava/lang/String;

.field mSentByteSize:J

.field mSessionDescription:Ljava/lang/String;

.field mSessionID:Ljava/lang/String;

.field mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

.field mTotalByteSize:J

.field mTotalCount:I

.field mTransferStatus:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 43
    return-void
.end method


# virtual methods
.method final clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 127
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentSendingItem:Ljava/io/File;

    .line 128
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    .line 129
    const/16 v0, 0x2713

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    .line 131
    return-void
.end method

.method public final getCurrentSendingItem()Ljava/io/File;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentSendingItem:Ljava/io/File;

    return-object v0
.end method

.method public final getCurrentSendingItemIndex()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    return v0
.end method

.method public final getSendingFileList()[Ljava/io/File;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    return-object v0
.end method

.method public final getSentByteSize()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    return-wide v0
.end method

.method public final getSessionID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetDevice()Lcom/samsung/android/application/fileshare/api/DeviceItem;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    return-object v0
.end method

.method public final getTotalByteSize()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalByteSize:J

    return-wide v0
.end method

.method public final getTotalCount()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalCount:I

    return v0
.end method

.method final moveToNextFile()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    array-length v1, v1

    if-nez v1, :cond_b

    .line 122
    :cond_a
    :goto_a
    return-object v0

    .line 117
    :cond_b
    iget v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    .line 118
    iget v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 121
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSendItemList:[Ljava/io/File;

    iget v1, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentSendingItem:Ljava/io/File;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentSendingItem:Ljava/io/File;

    goto :goto_a
.end method
