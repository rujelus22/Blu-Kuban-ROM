.class public Lcom/sec/android/app/FileTransferClient/Data/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFileNames:Ljava/lang/String;

.field mSendingByteSize:J

.field mSendingCount:I

.field mSendingFileName:Ljava/lang/String;

.field mSessionID:Ljava/lang/String;

.field mSessionState:I

.field mTargetDeviceName:Ljava/lang/String;

.field mTotalByteSize:J

.field mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 191
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Data/SessionData$1;

    invoke-direct {v0}, Lcom/sec/android/app/FileTransferClient/Data/SessionData$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionID:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTargetDeviceName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalByteSize:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalCount:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionState:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingCount:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_39} :catch_3a

    .line 75
    :goto_39
    return-void

    .line 70
    :catch_3a
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionData :Exception on SessionData in Parcel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public constructor <init>(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V
    .registers 11
    .parameter "info"
    .parameter "state"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    :try_start_3
    iget-object v5, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->targetDevice:Ljava/lang/String;

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTargetDeviceName:Ljava/lang/String;

    .line 34
    const-string v5, ""

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getSendingFileList()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_37

    aget-object v2, v0, v3

    .line 37
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 39
    .end local v2           #file:Ljava/io/File;
    :cond_37
    iget-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    .line 40
    iget v5, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    iput v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionState:I

    .line 41
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingCount:I

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalCount()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalCount:I

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getTotalByteSize()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalByteSize:J

    .line 44
    const-string v5, ""

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    .line 45
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    .line 46
    iget-object v5, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionID:Ljava/lang/String;

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionID:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_66

    .line 52
    .end local v0           #arr$:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_65
    return-void

    .line 48
    :catch_66
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionData :Exception on SessionData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method public static calPercent(JJ)I
    .registers 10
    .parameter "progVal"
    .parameter "maxVal"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 162
    cmp-long v3, p2, v4

    if-gtz v3, :cond_8

    .line 168
    :cond_7
    :goto_7
    return v2

    .line 164
    :cond_8
    cmp-long v3, p0, v4

    if-lez v3, :cond_7

    .line 167
    long-to-double v2, p0

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide v4, 0x3f747ae147ae147bL

    add-double v0, v2, v4

    .line 168
    .local v0, percent:D
    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, v0

    double-to-int v2, v2

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getProgressPercent()I
    .registers 5

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    iget-wide v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalByteSize:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->calPercent(JJ)I

    move-result v0

    return v0
.end method

.method public getSendByte()J
    .registers 3

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    return-wide v0
.end method

.method public getSendCount()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingCount:I

    return v0
.end method

.method public getSessionID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionState()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionState:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTargetDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalByte()J
    .registers 3

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalByteSize:J

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalCount:I

    return v0
.end method

.method public updateSessionData(Lcom/samsung/android/application/fileshare/api/SessionInfo;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .registers 8
    .parameter "info"
    .parameter "state"

    .prologue
    .line 82
    :try_start_0
    iget v2, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionState:I

    iput v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionState:I

    .line 83
    iget-object v2, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingCount:I

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_24

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getSendingFileList()[Ljava/io/File;

    move-result-object v1

    .line 88
    .local v1, files:[Ljava/io/File;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    .line 102
    .end local v1           #files:[Ljava/io/File;
    :goto_23
    return-object p0

    .line 93
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getCurrentSendingItem()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->getSentByteSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_23

    .line 98
    :catch_35
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionData :Exception on updateSessionData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTargetDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mFileNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingFileName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-wide v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingByteSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-wide v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalByteSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mTotalCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSessionState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->mSendingCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 189
    :goto_2d
    return-void

    .line 185
    :catch_2e
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionData :Exception on writeToParcel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method
