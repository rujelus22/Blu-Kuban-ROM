.class public Lcom/google/android/music/download/DownloadProgress;
.super Ljava/lang/Object;
.source "DownloadProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mByteLength:J

.field private final mCompletedBytes:J

.field private final mError:Lcom/google/android/music/download/DownloadState$Error;

.field private final mId:Lcom/google/android/music/dl/ContentIdentifier;

.field private final mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

.field private final mPriority:I

.field private final mState:Lcom/google/android/music/download/DownloadState$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/music/download/DownloadProgress$1;

    invoke-direct {v0}, Lcom/google/android/music/download/DownloadProgress$1;-><init>()V

    sput-object v0, Lcom/google/android/music/download/DownloadProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    iput-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/download/DownloadProgress;->mPriority:I

    .line 41
    invoke-static {}, Lcom/google/android/music/download/DownloadRequest$Owner;->values()[Lcom/google/android/music/download/DownloadRequest$Owner;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    .line 42
    invoke-static {}, Lcom/google/android/music/download/DownloadState$State;->values()[Lcom/google/android/music/download/DownloadState$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mState:Lcom/google/android/music/download/DownloadState$State;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/download/DownloadProgress;->mCompletedBytes:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/download/DownloadProgress;->mByteLength:J

    .line 45
    invoke-static {}, Lcom/google/android/music/download/DownloadState$Error;->values()[Lcom/google/android/music/download/DownloadState$Error;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mError:Lcom/google/android/music/download/DownloadState$Error;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/download/DownloadProgress$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/music/download/DownloadProgress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lcom/google/android/music/download/DownloadState$State;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mState:Lcom/google/android/music/download/DownloadState$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadProgress;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, " mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/download/DownloadProgress;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, " mOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadProgress;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, " mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadProgress;->mState:Lcom/google/android/music/download/DownloadState$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, " mCompletedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/download/DownloadProgress;->mCompletedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, " mByteLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/download/DownloadProgress;->mByteLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, " mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadProgress;->mError:Lcom/google/android/music/download/DownloadState$Error;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget v0, p0, Lcom/google/android/music/download/DownloadProgress;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mOwner:Lcom/google/android/music/download/DownloadRequest$Owner;

    invoke-virtual {v0}, Lcom/google/android/music/download/DownloadRequest$Owner;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mState:Lcom/google/android/music/download/DownloadState$State;

    invoke-virtual {v0}, Lcom/google/android/music/download/DownloadState$State;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-wide v0, p0, Lcom/google/android/music/download/DownloadProgress;->mCompletedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Lcom/google/android/music/download/DownloadProgress;->mByteLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-object v0, p0, Lcom/google/android/music/download/DownloadProgress;->mError:Lcom/google/android/music/download/DownloadState$Error;

    invoke-virtual {v0}, Lcom/google/android/music/download/DownloadState$Error;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
