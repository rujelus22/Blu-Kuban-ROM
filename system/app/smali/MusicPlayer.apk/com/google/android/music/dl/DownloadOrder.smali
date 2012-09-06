.class public final Lcom/google/android/music/dl/DownloadOrder;
.super Ljava/lang/Object;
.source "DownloadOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z


# instance fields
.field private final mAlbumArtistName:Ljava/lang/String;

.field private final mAlbumName:Ljava/lang/String;

.field private final mArtistName:Ljava/lang/String;

.field private final mAutoDelete:Z

.field private mCompleted:J

.field private volatile mDomainParam:Ljava/lang/String;

.field private volatile mDownloadStartTime:J

.field private mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private final mDuration:J

.field private volatile mErrorType:I

.field private mExperiencedGlitchDuringDownload:Z

.field private mFullPath:Ljava/io/File;

.field private volatile mHandler:Lcom/google/android/music/dl/DownloadHandler;

.field private final mId:Lcom/google/android/music/dl/ContentIdentifier;

.field private volatile mIsResumable:Z

.field private mLastWaitLog:J

.field private final mLength:J

.field private mLocalCopyPath:Ljava/lang/String;

.field private mLocalCopyStorageType:I

.field private mLocalCopyType:I

.field private mPurposes:I

.field private mRecommendedBitrate:I

.field private final mRemoteId:Ljava/lang/String;

.field private volatile mRemoteUrl:Ljava/lang/String;

.field private mSavableLocalLocation:Z

.field private mSeekPoint:J

.field private mShouldCompareCompleted:Z

.field private mSourceAccount:I

.field private volatile mStreamUrl:Ljava/lang/String;

.field private final mTrackName:Ljava/lang/String;

.field private mTranscodedLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    .line 939
    new-instance v0, Lcom/google/android/music/dl/DownloadOrder$1;

    invoke-direct {v0}, Lcom/google/android/music/dl/DownloadOrder$1;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/DownloadOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    .line 124
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 154
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 158
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 162
    iput-boolean v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 172
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 178
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 183
    iput-boolean v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 185
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 190
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 197
    iput v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 211
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 233
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f1

    move v0, v1

    :goto_61
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f4

    move v0, v1

    :goto_7c
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    .line 246
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_97

    .line 249
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    .line 251
    :cond_97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f6

    move v0, v1

    :goto_b0
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_f8

    :goto_c4
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDomainParam:Ljava/lang/String;

    .line 265
    return-void

    :cond_f1
    move v0, v2

    .line 241
    goto/16 :goto_61

    :cond_f4
    move v0, v2

    .line 245
    goto :goto_7c

    :cond_f6
    move v0, v2

    .line 254
    goto :goto_b0

    :cond_f8
    move v1, v2

    .line 257
    goto :goto_c4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/dl/DownloadOrder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/DownloadOrder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "songId"
    .parameter "remoteId"
    .parameter "length"
    .parameter "duration"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "albumArtistName"
    .parameter "trackName"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    .line 124
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 220
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 221
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://android.clients.google.com/music/mplay?songid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    .line 223
    iput-wide p3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    .line 224
    iput-wide p5, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    .line 225
    iput-object p7, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    .line 226
    iput-object p8, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    .line 227
    iput-object p9, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    .line 228
    iput-object p10, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x1

    :goto_5b
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    .line 230
    return-void

    .line 229
    :cond_5e
    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private appendShortDescription(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "buffer"

    .prologue
    .line 401
    const-string v0, "DownloadOrder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 404
    const-string v0, "EXPLICIT|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_28
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 407
    const-string v0, "PREFETCH|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_34
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 410
    const-string v0, "KEEPON|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_40
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 413
    const-string v0, "RINGTONE|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, " completed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    return-void
.end method

.method private calculateLatency()J
    .registers 5

    .prologue
    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 786
    if-nez p0, :cond_4

    .line 797
    :cond_3
    :goto_3
    return-object v1

    .line 790
    :cond_4
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 792
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 796
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 797
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    goto :goto_3
.end method

.method private getStatusEventDownloadType()I
    .registers 5

    .prologue
    .line 806
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 807
    const/4 v0, 0x1

    .line 819
    .local v0, ret:I
    :goto_8
    return v0

    .line 808
    .end local v0           #ret:I
    :cond_9
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 809
    const/4 v0, 0x2

    .restart local v0       #ret:I
    goto :goto_8

    .line 810
    .end local v0           #ret:I
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 811
    const/4 v0, 0x3

    .restart local v0       #ret:I
    goto :goto_8

    .line 812
    .end local v0           #ret:I
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 813
    const/4 v0, 0x4

    .restart local v0       #ret:I
    goto :goto_8

    .line 815
    .end local v0           #ret:I
    :cond_24
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported download type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v0, 0x0

    .restart local v0       #ret:I
    goto :goto_8
.end method

.method public static isServerError(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 775
    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static ordersToString([Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;
    .registers 8
    .parameter "prefetchList"

    .prologue
    .line 953
    if-nez p0, :cond_5

    .line 954
    const-string v5, "null"

    .line 965
    :goto_4
    return-object v5

    .line 957
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Lcom/google/android/music/dl/DownloadOrder;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v3, :cond_1c

    aget-object v4, v0, v2

    .line 959
    .local v4, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 960
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 962
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_30

    .line 963
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 965
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method


# virtual methods
.method declared-synchronized addPurpose(I)V
    .registers 3
    .parameter "purpose"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 331
    monitor-exit p0

    return-void

    .line 330
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized changePurpose(I)V
    .registers 3
    .parameter "newPurpose"

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCompleted()V
    .registers 3

    .prologue
    .line 613
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 615
    monitor-exit p0

    return-void

    .line 613
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearLocalLocation(Z)V
    .registers 3
    .parameter "saveable"

    .prologue
    .line 691
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 694
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 696
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 697
    monitor-exit p0

    return-void

    .line 691
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 4
    .parameter "order"

    .prologue
    .line 890
    if-nez p1, :cond_4

    .line 891
    const/4 v0, 0x0

    .line 896
    :goto_3
    return v0

    .line 893
    :cond_4
    if-ne p0, p1, :cond_8

    .line 894
    const/4 v0, 0x1

    goto :goto_3

    .line 896
    :cond_8
    iget-object v0, p1, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v0

    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 883
    instance-of v1, p1, Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v1, :cond_10

    .line 884
    if-eq p0, p1, :cond_f

    check-cast p1, Lcom/google/android/music/dl/DownloadOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 886
    :cond_10
    return v0
.end method

.method public getAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCompleted()J
    .registers 3

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method public getDomainParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDomainParam:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDownloadLength()J
    .registers 5

    .prologue
    .line 562
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 563
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    .line 565
    :goto_b
    monitor-exit p0

    return-wide v0

    :cond_d
    :try_start_d
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    .line 562
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2

    .prologue
    .line 633
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    return-wide v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    return v0
.end method

.method public declared-synchronized getFullPath()Ljava/io/File;
    .registers 2

    .prologue
    .line 650
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHandler()Lcom/google/android/music/dl/DownloadHandler;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    return-wide v0
.end method

.method public declared-synchronized getLocalCopyPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 658
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalCopyStorageType()I
    .registers 2

    .prologue
    .line 662
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalCopyType()I
    .registers 2

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPurposes()I
    .registers 2

    .prologue
    .line 343
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecommendedBitrate()I
    .registers 3

    .prologue
    .line 532
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recommended bitrate was never set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 532
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 535
    :cond_11
    :try_start_11
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_e

    monitor-exit p0

    return v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getRingtoneSize()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 584
    monitor-enter p0

    :try_start_3
    iget-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3b

    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_3b

    .line 590
    iget v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    invoke-static {v4}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFileSize(I)J

    move-result-wide v0

    .line 591
    .local v0, ringtoneSize:J
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v4, v5, :cond_35

    iget-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_3b

    .line 592
    :cond_35
    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3d

    move-result-wide v2

    .line 596
    .end local v0           #ringtoneSize:J
    :cond_3b
    monitor-exit p0

    return-wide v2

    .line 584
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSeekPoint()J
    .registers 3

    .prologue
    .line 767
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceAccount()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public hasExplicitPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasKeeponPurpose()Z
    .registers 2

    .prologue
    .line 359
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasPrefetchPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasPurpose(I)Z
    .registers 3
    .parameter "purpose"

    .prologue
    .line 339
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasRingtonePurpose()Z
    .registers 2

    .prologue
    .line 363
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized incrementCompleted(J)J
    .registers 5
    .parameter "completed"

    .prologue
    .line 607
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 609
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-wide v0

    .line 607
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoDelete()Z
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    return v0
.end method

.method public declared-synchronized isKeeponOnly()Z
    .registers 3

    .prologue
    .line 375
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReusableForStreaming()Z
    .registers 5

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_18

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1a

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRingtoneOnly()Z
    .registers 3

    .prologue
    .line 371
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logStatusEvent(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    .line 782
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 783
    return-void
.end method

.method public logStatusEvent(Landroid/content/Context;IIZZ)V
    .registers 18
    .parameter "context"
    .parameter "status"
    .parameter "data"
    .parameter "includeLatency"
    .parameter "logIfNoNetwork"

    .prologue
    .line 825
    invoke-static {p1}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 826
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const/16 v7, 0x2710

    .line 827
    .local v7, type:I
    const/4 v6, 0x0

    .line 828
    .local v6, subtype:I
    const-wide/16 v2, 0x0

    .line 829
    .local v2, latency:J
    const/4 v0, 0x0

    .line 830
    .local v0, downloadType:I
    const/4 v1, 0x0

    .line 831
    .local v1, id:Lcom/google/android/music/dl/ContentIdentifier;
    const-string v5, "unknown"

    .line 833
    .local v5, remoteId:Ljava/lang/String;
    monitor-enter p0

    .line 834
    if-eqz v4, :cond_d3

    .line 835
    :try_start_10
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 836
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 843
    :goto_18
    if-eqz p4, :cond_1e

    .line 844
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v2

    .line 847
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadOrder;->getStatusEventDownloadType()I

    move-result v0

    .line 848
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 849
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 850
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_d7

    .line 852
    const v8, 0x12113

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 862
    const-string v9, "MusicDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event logging MUSIC_DOWNLOAD_STATUS: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " status: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p4, :cond_e3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " latency: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_a9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " type: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " subtype: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " download type: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :goto_d2
    return-void

    .line 837
    :cond_d3
    if-nez p5, :cond_da

    .line 838
    :try_start_d5
    monitor-exit p0

    goto :goto_d2

    .line 850
    :catchall_d7
    move-exception v8

    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_d7

    throw v8

    .line 840
    :cond_da
    :try_start_da
    const-string v8, "MusicDL"

    const-string v9, "No active network"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_d7

    goto/16 :goto_18

    .line 862
    :cond_e3
    const-string v8, ""

    goto :goto_a9
.end method

.method public declared-synchronized makeResumable()Z
    .registers 5

    .prologue
    .line 726
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    and-int/lit8 v0, v1, -0x5

    .line 730
    .local v0, newPurpose:I
    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 731
    :cond_b
    sget-boolean v1, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v1, :cond_2d

    .line 732
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not retrying download ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") since it\'s not resumable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_5a

    .line 735
    :cond_2d
    const/4 v1, 0x0

    .line 743
    :goto_2e
    monitor-exit p0

    return v1

    .line 738
    :cond_30
    :try_start_30
    sget-boolean v1, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v1, :cond_56

    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    if-eq v1, v0, :cond_56

    .line 739
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing downloader order ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to make it resumable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_56
    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_5a

    .line 743
    const/4 v1, 0x1

    goto :goto_2e

    .line 726
    .end local v0           #newPurpose:I
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markDownloadFailed(I)V
    .registers 3
    .parameter "errorType"

    .prologue
    .line 511
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 512
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 513
    return-void
.end method

.method public declared-synchronized requiresDownload()Z
    .registers 6

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v1, v2, :cond_2e

    :cond_1f
    const/4 v0, 0x1

    .line 393
    .local v0, ret:Z
    :goto_20
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v2, :cond_2c

    .line 395
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_30

    .line 397
    :cond_2c
    monitor-exit p0

    return v0

    .line 389
    .end local v0           #ret:Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_20

    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDomainParam(Ljava/lang/String;)V
    .registers 2
    .parameter "domainParam"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDomainParam:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setDownloadStartTime(J)V
    .registers 3
    .parameter "timestamp"

    .prologue
    .line 642
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    .line 643
    return-void
.end method

.method public declared-synchronized setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V
    .registers 3
    .parameter "downloadStatus"

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 638
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 639
    monitor-exit p0

    return-void

    .line 637
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setErrorType(I)V
    .registers 2
    .parameter "errorType"

    .prologue
    .line 715
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 716
    return-void
.end method

.method public setExperiencedGlitchDuringDownload(Z)V
    .registers 2
    .parameter "experiencedGlitchDuringDownload"

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 756
    return-void
.end method

.method public setHandler(Lcom/google/android/music/dl/DownloadHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    .line 529
    return-void
.end method

.method public declared-synchronized setLocalLocation(Lcom/google/android/music/dl/cache/CacheLocation;Ljava/lang/String;I)V
    .registers 5
    .parameter "cacheLocation"
    .parameter "localCopyPath"
    .parameter "localCopyType"

    .prologue
    .line 670
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/music/dl/cache/CacheLocation;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    .line 671
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    .line 672
    iput p3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 673
    invoke-virtual {p1}, Lcom/google/android/music/dl/cache/CacheLocation;->getSchemaValueForStorageType()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 675
    monitor-exit p0

    return-void

    .line 670
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalLocation(Lcom/google/android/music/dl/cache/CacheLocation;Ljava/lang/String;Z)V
    .registers 5
    .parameter "cacheLocation"
    .parameter "localCopyPath"
    .parameter "saveable"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/android/music/dl/cache/CacheLocation;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    .line 681
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    .line 682
    invoke-virtual {p1}, Lcom/google/android/music/dl/cache/CacheLocation;->getSchemaValueForStorageType()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    .line 683
    iput-boolean p3, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 685
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 686
    monitor-exit p0

    return-void

    .line 680
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecommendedBitrate(I)V
    .registers 5
    .parameter "recommendedBitrate"

    .prologue
    .line 539
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 547
    :goto_6
    monitor-exit p0

    return-void

    .line 543
    :cond_8
    :try_start_8
    sget-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v0, :cond_32

    .line 544
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting bitrate of ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_32
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_35

    goto :goto_6

    .line 539
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteUrl"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public declared-synchronized setSeekPoint(J)V
    .registers 4
    .parameter "seekPoint"

    .prologue
    .line 763
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 764
    monitor-exit p0

    return-void

    .line 763
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShouldCompareCompleted(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 550
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 551
    monitor-exit p0

    return-void

    .line 550
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSourceAccount(I)V
    .registers 2
    .parameter "sourceAccount"

    .prologue
    .line 288
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    .line 289
    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "streamUrl"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public declared-synchronized setTranscodedLength(J)V
    .registers 4
    .parameter "transcodedLength"

    .prologue
    .line 558
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 559
    monitor-exit p0

    return-void

    .line 558
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldSaveLocation()Z
    .registers 5

    .prologue
    .line 570
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2c

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    :cond_27
    const/4 v0, 0x1

    :goto_28
    monitor-exit p0

    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_28

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toDetailedString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 429
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IHC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, " mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, " mPurposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 436
    const-string v1, "EXPLICIT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_3b
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 439
    const-string v1, "PREFETCH|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_47
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 442
    const-string v1, "KEEPON|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_53
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 445
    const-string v1, "RINGTONE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, " mLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, " mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, " mAlbumName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, " mArtistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, " mAlbumArtistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, " mTrackName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v1, " mAutoDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    const-string v1, " mRemoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, " mRemoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v1, " mTranscodedLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, " mShouldCompareCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, " mDownloadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, " mFullPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, " mLocalCopyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, " mLocalCopyPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, " mLocalCopyStorageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, " mSavableLocalLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, " mCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, " mSeekPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, " mExperiencedGlitchDuringDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, " mRecommendedBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    const-string v1, " mLastWaitLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, " mErrorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, " mStreamUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, " mDownloadStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, " mSourceAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, " mDomainParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDomainParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1aa
    .catchall {:try_start_1 .. :try_end_1aa} :catchall_1ad

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 429
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :catchall_1ad
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->appendShortDescription(Ljava/lang/StringBuilder;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 423
    .end local v0           #buff:Ljava/lang/StringBuilder;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized waitForData(J)V
    .registers 7
    .parameter "amount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 623
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_4f

    .line 624
    sget-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v0, :cond_48

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_48

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 626
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes in file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4c

    goto :goto_1

    .line 623
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 630
    :cond_4f
    monitor-exit p0

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 902
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 903
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 905
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 906
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    if-eqz v0, :cond_a6

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 915
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mShouldCompareCompleted:Z

    if-eqz v0, :cond_a8

    move v0, v1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    if-nez v0, :cond_aa

    .line 918
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 922
    :goto_5a
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyStorageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    if-eqz v0, :cond_b4

    move v0, v1

    :goto_6e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-eqz v0, :cond_b6

    :goto_7f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 932
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 934
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDomainParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 937
    return-void

    :cond_a6
    move v0, v2

    .line 910
    goto :goto_2f

    :cond_a8
    move v0, v2

    .line 915
    goto :goto_46

    .line 920
    :cond_aa
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mFullPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5a

    :cond_b4
    move v0, v2

    .line 925
    goto :goto_6e

    :cond_b6
    move v1, v2

    .line 929
    goto :goto_7f
.end method
