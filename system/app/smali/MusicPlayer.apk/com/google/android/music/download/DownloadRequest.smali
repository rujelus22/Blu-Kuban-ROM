.class public Lcom/google/android/music/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/DownloadRequest$Owner;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static PRIORITY_KEEPON:I

.field public static PRIORITY_PREFETCH1:I

.field public static PRIORITY_PREFETCH2:I

.field public static PRIORITY_PREFETCH3:I

.field public static PRIORITY_PREFETCH4:I

.field public static PRIORITY_RINGTONE:I

.field public static PRIORITY_STREAM:I


# instance fields
.field private final mCacheFile:Ljava/io/File;

.field private final mId:Lcom/google/android/music/dl/ContentIdentifier;

.field private final mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

.field private volatile mPriority:I

.field private final mRetryAllowed:Z

.field private final mSeekMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_STREAM:I

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_PREFETCH1:I

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_PREFETCH2:I

    .line 66
    sput v1, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_PREFETCH3:I

    .line 71
    const/4 v0, 0x4

    sput v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_PREFETCH4:I

    .line 76
    sput v1, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_RINGTONE:I

    .line 81
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_KEEPON:I

    .line 216
    new-instance v0, Lcom/google/android/music/download/DownloadRequest$1;

    invoke-direct {v0}, Lcom/google/android/music/download/DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/google/android/music/download/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    iput-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/download/DownloadRequest;->mPriority:I

    .line 124
    invoke-static {}, Lcom/google/android/music/download/DownloadRequest$Owner;->values()[Lcom/google/android/music/download/DownloadRequest$Owner;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/music/download/DownloadRequest;->mSeekMs:J

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3f

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Lcom/google/android/music/download/DownloadRequest;->mRetryAllowed:Z

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mCacheFile:Ljava/io/File;

    .line 128
    return-void

    .line 126
    :cond_3f
    const/4 v0, 0x0

    goto :goto_31
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/download/DownloadRequest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/music/download/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/ContentIdentifier;ILcom/google/android/music/download/DownloadRequest$Owner;JZLjava/io/File;)V
    .registers 11
    .parameter "id"
    .parameter "priority"
    .parameter "owner"
    .parameter "seekMs"
    .parameter "retryAllowed"
    .parameter "cacheFile"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_STREAM:I

    if-lt p2, v0, :cond_b

    sget v0, Lcom/google/android/music/download/DownloadRequest;->PRIORITY_KEEPON:I

    if-le p2, v0, :cond_24

    .line 105
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_24
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_32

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative seek time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_32
    if-nez p7, :cond_3c

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing cache file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3c
    iput-object p1, p0, Lcom/google/android/music/download/DownloadRequest;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 114
    iput p2, p0, Lcom/google/android/music/download/DownloadRequest;->mPriority:I

    .line 115
    iput-object p3, p0, Lcom/google/android/music/download/DownloadRequest;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 116
    iput-wide p4, p0, Lcom/google/android/music/download/DownloadRequest;->mSeekMs:J

    .line 117
    iput-boolean p6, p0, Lcom/google/android/music/download/DownloadRequest;->mRetryAllowed:Z

    .line 118
    iput-object p7, p0, Lcom/google/android/music/download/DownloadRequest;->mCacheFile:Ljava/io/File;

    .line 119
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/google/android/music/download/DownloadRequest;->mPriority:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadRequest;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, " mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/download/DownloadRequest;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " mOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadRequest;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, " mSeekMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/download/DownloadRequest;->mSeekMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, " mRetryAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/download/DownloadRequest;->mRetryAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, " mCacheFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadRequest;->mCacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget v0, p0, Lcom/google/android/music/download/DownloadRequest;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-virtual {v0}, Lcom/google/android/music/download/DownloadRequest$Owner;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-wide v0, p0, Lcom/google/android/music/download/DownloadRequest;->mSeekMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    iget-boolean v0, p0, Lcom/google/android/music/download/DownloadRequest;->mRetryAllowed:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/google/android/music/download/DownloadRequest;->mCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return-void

    .line 212
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1d
.end method
