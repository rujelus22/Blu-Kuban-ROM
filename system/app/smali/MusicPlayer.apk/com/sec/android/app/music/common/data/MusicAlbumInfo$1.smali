.class final Lcom/sec/android/app/music/common/data/MusicAlbumInfo$1;
.super Ljava/lang/Object;
.source "MusicAlbumInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/app/music/common/data/MusicAlbumInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 5
    .parameter "in"

    .prologue
    .line 24
    new-instance v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    invoke-direct {v0}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;-><init>()V

    .line 26
    .local v0, albumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mDuration:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    .line 34
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 39
    new-array v0, p1, [Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo$1;->newArray(I)[Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v0

    return-object v0
.end method
