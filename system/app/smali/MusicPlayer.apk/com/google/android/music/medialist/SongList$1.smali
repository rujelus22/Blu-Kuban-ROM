.class final Lcom/google/android/music/medialist/SongList$1;
.super Ljava/lang/Object;
.source "SongList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/SongList;
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
        "Lcom/google/android/music/medialist/SongList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/SongList;
    .registers 4
    .parameter "source"

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/medialist/MediaList;->thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    .line 228
    .local v0, songList:Lcom/google/android/music/medialist/SongList;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/SongList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/music/medialist/SongList;
    .registers 3
    .parameter "size"

    .prologue
    .line 232
    new-array v0, p1, [Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/SongList$1;->newArray(I)[Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    return-object v0
.end method
