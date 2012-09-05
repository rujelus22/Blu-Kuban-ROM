.class public Lcom/google/android/music/dl/DownloadState;
.super Ljava/lang/Object;
.source "DownloadState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/dl/DownloadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private final mDuration:J

.field private final mErrorType:I

.field private final mId:Lcom/google/android/music/dl/ContentIdentifier;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    new-instance v0, Lcom/google/android/music/dl/DownloadState$1;

    invoke-direct {v0}, Lcom/google/android/music/dl/DownloadState$1;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/DownloadState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-class v0, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/ContentIdentifier;

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 78
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/dl/DownloadState;->mErrorType:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mUrl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadState;->mDuration:J

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V
    .registers 7
    .parameter "id"
    .parameter "status"
    .parameter "errorType"
    .parameter "url"
    .parameter "duration"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadState;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 21
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadState;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 22
    iput p3, p0, Lcom/google/android/music/dl/DownloadState;->mErrorType:I

    .line 23
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadState;->mUrl:Ljava/lang/String;

    .line 24
    iput-wide p5, p0, Lcom/google/android/music/dl/DownloadState;->mDuration:J

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadState;->mDuration:J

    return-wide v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/music/dl/DownloadState;->mErrorType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadState;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " mDownloadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadState;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " mErrorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v1, p0, Lcom/google/android/music/dl/DownloadState;->mErrorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, " mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v1, p0, Lcom/google/android/music/dl/DownloadState;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mDownloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/google/android/music/dl/DownloadState;->mErrorType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadState;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-wide v0, p0, Lcom/google/android/music/dl/DownloadState;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    return-void
.end method
