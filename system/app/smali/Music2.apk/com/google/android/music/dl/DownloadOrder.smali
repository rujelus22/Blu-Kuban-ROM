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

.field private volatile mDownloadStartTime:J

.field private mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private final mDuration:J

.field private volatile mErrorType:I

.field private mExperiencedGlitchDuringDownload:Z

.field private volatile mHandler:Lcom/google/android/music/dl/DownloadHandler;

.field private final mId:Lcom/google/android/music/dl/ContentIdentifier;

.field private volatile mIsResumable:Z

.field private mLastWaitLog:J

.field private final mLength:J

.field private mLocalCopyType:I

.field private mLocalLocation:Ljava/io/File;

.field private mPurposes:I

.field private mRecommendedBitrate:I

.field private final mRemoteId:Ljava/lang/String;

.field private volatile mRemoteUrl:Ljava/lang/String;

.field private mSavableLocalLocation:Z

.field private mSeekPoint:J

.field private mSourceAccount:I

.field private volatile mStreamUrl:Ljava/lang/String;

.field private final mTrackName:Ljava/lang/String;

.field private mTranscodedLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    .line 765
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

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 140
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 145
    iput-boolean v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 155
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 161
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 166
    iput-boolean v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 168
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 173
    iput-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 180
    iput v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 192
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 214
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_d2

    move v0, v1

    :goto_5d
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    .line 226
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_8a

    .line 229
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    .line 231
    :cond_8a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d4

    move v0, v1

    :goto_97
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_d6

    :goto_ab
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    .line 242
    return-void

    :cond_d2
    move v0, v2

    .line 222
    goto :goto_5d

    :cond_d4
    move v0, v2

    .line 232
    goto :goto_97

    :cond_d6
    move v1, v2

    .line 235
    goto :goto_ab
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/dl/DownloadOrder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
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
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 155
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mIsResumable:Z

    .line 201
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 202
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 203
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

    .line 204
    iput-wide p3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    .line 205
    iput-wide p5, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    .line 206
    iput-object p7, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    .line 207
    iput-object p8, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    .line 208
    iput-object p9, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    .line 209
    iput-object p10, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v0

    if-nez v0, :cond_58

    const/4 v0, 0x1

    :goto_55
    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    .line 211
    return-void

    .line 210
    :cond_58
    const/4 v0, 0x0

    goto :goto_55
.end method

.method private appendShortDescription(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "buffer"

    .prologue
    .line 359
    const-string v0, "DownloadOrder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 362
    const-string v0, "EXPLICIT|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_28
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 365
    const-string v0, "PREFETCH|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_34
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 368
    const-string v0, "KEEPON|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_40
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 371
    const-string v0, "RINGTONE|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 374
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    const-string v0, " completed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    return-void
.end method

.method private calculateLatency()J
    .registers 5

    .prologue
    .line 513
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

    .line 616
    if-nez p0, :cond_4

    .line 627
    :cond_3
    :goto_3
    return-object v1

    .line 620
    :cond_4
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 622
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 627
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    goto :goto_3
.end method

.method private getStatusEventDownloadType()I
    .registers 5

    .prologue
    .line 636
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 637
    const/4 v0, 0x1

    .line 649
    .local v0, ret:I
    :goto_8
    return v0

    .line 638
    .end local v0           #ret:I
    :cond_9
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 639
    const/4 v0, 0x2

    .restart local v0       #ret:I
    goto :goto_8

    .line 640
    .end local v0           #ret:I
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 641
    const/4 v0, 0x3

    .restart local v0       #ret:I
    goto :goto_8

    .line 642
    .end local v0           #ret:I
    :cond_1a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 643
    const/4 v0, 0x4

    .restart local v0       #ret:I
    goto :goto_8

    .line 645
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

    .line 646
    const/4 v0, 0x0

    .restart local v0       #ret:I
    goto :goto_8
.end method

.method public static isServerError(I)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 605
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


# virtual methods
.method declared-synchronized addPurpose(I)V
    .registers 3
    .parameter "purpose"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 299
    monitor-exit p0

    return-void

    .line 298
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized changePurpose(I)V
    .registers 3
    .parameter "newPurpose"

    .prologue
    .line 303
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 304
    monitor-exit p0

    return-void

    .line 303
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCompleted()V
    .registers 3

    .prologue
    .line 480
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 482
    monitor-exit p0

    return-void

    .line 480
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 4
    .parameter "order"

    .prologue
    .line 720
    if-nez p1, :cond_4

    .line 721
    const/4 v0, 0x0

    .line 726
    :goto_3
    return v0

    .line 723
    :cond_4
    if-ne p0, p1, :cond_8

    .line 724
    const/4 v0, 0x1

    goto :goto_3

    .line 726
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

    .line 713
    instance-of v1, p1, Lcom/google/android/music/dl/DownloadOrder;

    if-eqz v1, :cond_10

    .line 714
    if-eq p0, p1, :cond_f

    check-cast p1, Lcom/google/android/music/dl/DownloadOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 716
    :cond_10
    return v0
.end method

.method public getAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCompleted()J
    .registers 3

    .prologue
    .line 470
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
    .line 245
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method public declared-synchronized getDownloadLength()J
    .registers 5

    .prologue
    .line 430
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 431
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    .line 433
    :goto_b
    monitor-exit p0

    return-wide v0

    :cond_d
    :try_start_d
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    .line 430
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2

    .prologue
    .line 500
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
    .line 274
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    return-wide v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 541
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    return v0
.end method

.method public getHandler()Lcom/google/android/music/dl/DownloadHandler;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    return-wide v0
.end method

.method public declared-synchronized getLocalCopyType()I
    .registers 2

    .prologue
    .line 521
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

.method public declared-synchronized getLocalLocation()Ljava/io/File;
    .registers 2

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPurposes()I
    .registers 2

    .prologue
    .line 311
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
    .line 408
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Recommended bitrate was never set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 408
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 411
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
    .line 249
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getRingtoneSize()J
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 451
    monitor-enter p0

    :try_start_3
    iget-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3b

    iget-boolean v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_3b

    .line 457
    iget v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    invoke-static {v4}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFileSize(I)J

    move-result-wide v0

    .line 458
    .local v0, ringtoneSize:J
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v5, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v4, v5, :cond_35

    iget-wide v4, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_3b

    .line 459
    :cond_35
    iget-wide v2, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3d

    move-result-wide v2

    .line 463
    .end local v0           #ringtoneSize:J
    :cond_3b
    monitor-exit p0

    return-wide v2

    .line 451
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getSeekPoint()J
    .registers 3

    .prologue
    .line 597
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
    .line 261
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public hasExplicitPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasKeeponPurpose()Z
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hasPrefetchPlaybackPurpose()Z
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized hasPurpose(I)Z
    .registers 3
    .parameter "purpose"

    .prologue
    .line 307
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

.method hasRingtonePurpose()Z
    .registers 2

    .prologue
    .line 331
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->hasPurpose(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 708
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
    .line 474
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    .line 475
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 476
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-wide v0

    .line 474
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoDelete()Z
    .registers 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    return v0
.end method

.method public declared-synchronized isKeeponOnly()Z
    .registers 3

    .prologue
    .line 343
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

.method public declared-synchronized isRingtoneOnly()Z
    .registers 3

    .prologue
    .line 339
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

    .line 612
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 613
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
    .line 655
    invoke-static {p1}, Lcom/google/android/music/dl/DownloadOrder;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 656
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const/16 v7, 0x2710

    .line 657
    .local v7, type:I
    const/4 v6, 0x0

    .line 658
    .local v6, subtype:I
    const-wide/16 v2, 0x0

    .line 659
    .local v2, latency:J
    const/4 v0, 0x0

    .line 660
    .local v0, downloadType:I
    const/4 v1, 0x0

    .line 661
    .local v1, id:Lcom/google/android/music/dl/ContentIdentifier;
    const-string v5, "unknown"

    .line 663
    .local v5, remoteId:Ljava/lang/String;
    monitor-enter p0

    .line 664
    if-eqz v4, :cond_d3

    .line 665
    :try_start_10
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    .line 666
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 673
    :goto_18
    if-eqz p4, :cond_1e

    .line 674
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadOrder;->calculateLatency()J

    move-result-wide v2

    .line 677
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadOrder;->getStatusEventDownloadType()I

    move-result v0

    .line 678
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 679
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    .line 680
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_d7

    .line 682
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

    .line 692
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

    .line 700
    :goto_d2
    return-void

    .line 667
    :cond_d3
    if-nez p5, :cond_da

    .line 668
    :try_start_d5
    monitor-exit p0

    goto :goto_d2

    .line 680
    :catchall_d7
    move-exception v8

    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_d7

    throw v8

    .line 670
    :cond_da
    :try_start_da
    const-string v8, "MusicDL"

    const-string v9, "No active network"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_d7

    goto/16 :goto_18

    .line 692
    :cond_e3
    const-string v8, ""

    goto :goto_a9
.end method

.method declared-synchronized makeResumable()Z
    .registers 5

    .prologue
    .line 556
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    and-int/lit8 v0, v1, -0x5

    .line 560
    .local v0, newPurpose:I
    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 561
    :cond_b
    sget-boolean v1, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v1, :cond_2d

    .line 562
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

    .line 565
    :cond_2d
    const/4 v1, 0x0

    .line 573
    :goto_2e
    monitor-exit p0

    return v1

    .line 568
    :cond_30
    :try_start_30
    sget-boolean v1, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v1, :cond_56

    iget v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    if-eq v1, v0, :cond_56

    .line 569
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

    .line 572
    :cond_56
    iput v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_5a

    .line 573
    const/4 v1, 0x1

    goto :goto_2e

    .line 556
    .end local v0           #newPurpose:I
    :catchall_5a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected markDownloadFailed(I)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 387
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 388
    sget-object v0, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 389
    return-void
.end method

.method public declared-synchronized requiresDownload()Z
    .registers 6

    .prologue
    .line 347
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

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

    .line 351
    .local v0, ret:Z
    :goto_20
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v2, :cond_2c

    .line 353
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_30

    .line 355
    :cond_2c
    monitor-exit p0

    return v0

    .line 347
    .end local v0           #ret:Z
    :cond_2e
    const/4 v0, 0x0

    goto :goto_20

    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDownloadStartTime(J)V
    .registers 3
    .parameter "timestamp"

    .prologue
    .line 509
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    .line 510
    return-void
.end method

.method public declared-synchronized setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V
    .registers 3
    .parameter "downloadStatus"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setErrorType(I)V
    .registers 2
    .parameter "errorType"

    .prologue
    .line 545
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    .line 546
    return-void
.end method

.method public setExperiencedGlitchDuringDownload(Z)V
    .registers 2
    .parameter "experiencedGlitchDuringDownload"

    .prologue
    .line 585
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    .line 586
    return-void
.end method

.method public setHandler(Lcom/google/android/music/dl/DownloadHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mHandler:Lcom/google/android/music/dl/DownloadHandler;

    .line 405
    return-void
.end method

.method public declared-synchronized setLocalLocation(Ljava/io/File;I)V
    .registers 4
    .parameter "location"
    .parameter "fileType"

    .prologue
    .line 529
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    .line 530
    iput p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 532
    monitor-exit p0

    return-void

    .line 529
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalLocation(Ljava/io/File;Z)V
    .registers 4
    .parameter "localLocation"
    .parameter "saveable"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    .line 536
    iput-boolean p2, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 538
    monitor-exit p0

    return-void

    .line 535
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecommendedBitrate(I)V
    .registers 5
    .parameter "recommendedBitrate"

    .prologue
    .line 415
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 423
    :goto_6
    monitor-exit p0

    return-void

    .line 419
    :cond_8
    :try_start_8
    sget-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v0, :cond_32

    .line 420
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

    .line 422
    :cond_32
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_35

    goto :goto_6

    .line 415
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteUrl"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    .line 258
    return-void
.end method

.method setRingtoneRequested()V
    .registers 2

    .prologue
    .line 335
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->addPurpose(I)V

    .line 336
    return-void
.end method

.method public declared-synchronized setSeekPoint(J)V
    .registers 4
    .parameter "seekPoint"

    .prologue
    .line 593
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 594
    monitor-exit p0

    return-void

    .line 593
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSourceAccount(I)V
    .registers 2
    .parameter "sourceAccount"

    .prologue
    .line 265
    iput p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    .line 266
    return-void
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "streamUrl"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public declared-synchronized setTranscodedLength(J)V
    .registers 4
    .parameter "transcodedLength"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 427
    monitor-exit p0

    return-void

    .line 426
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldSaveLocation()Z
    .registers 5

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1c
    monitor-exit p0

    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, buff:Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->appendShortDescription(Ljava/lang/StringBuilder;)V

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 381
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
    .line 490
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

    .line 491
    sget-boolean v0, Lcom/google/android/music/dl/DownloadOrder;->LOGV:Z

    if-eqz v0, :cond_48

    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_48

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    .line 493
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

    .line 495
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4c

    goto :goto_1

    .line 490
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 497
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

    .line 732
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 733
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mPurposes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mLength:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 735
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mDuration:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 736
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAlbumArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mTrackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mAutoDelete:Z

    if-eqz v0, :cond_8f

    move v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRemoteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 744
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mTranscodedLength:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 745
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    if-nez v0, :cond_91

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 751
    :goto_52
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalCopyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSavableLocalLocation:Z

    if-eqz v0, :cond_9b

    move v0, v1

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mCompleted:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    iget-wide v3, p0, Lcom/google/android/music/dl/DownloadOrder;->mSeekPoint:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 756
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mExperiencedGlitchDuringDownload:Z

    if-eqz v0, :cond_9d

    :goto_6d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mRecommendedBitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLastWaitLog:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 759
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mErrorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mStreamUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mDownloadStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 762
    iget v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mSourceAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    return-void

    :cond_8f
    move v0, v2

    .line 740
    goto :goto_2f

    .line 749
    :cond_91
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadOrder;->mLocalLocation:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_52

    :cond_9b
    move v0, v2

    .line 752
    goto :goto_5c

    :cond_9d
    move v1, v2

    .line 756
    goto :goto_6d
.end method
