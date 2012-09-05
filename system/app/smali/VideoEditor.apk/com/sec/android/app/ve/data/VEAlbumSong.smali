.class public Lcom/sec/android/app/ve/data/VEAlbumSong;
.super Ljava/lang/Object;
.source "VEAlbumSong.java"


# instance fields
.field private mSongDuration:I

.field private mSongId:J

.field private mSongName:Ljava/lang/String;

.field private mSongPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSongDuration()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongDuration:I

    return v0
.end method

.method public getSongId()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongId:J

    return-wide v0
.end method

.method public getVESongName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongName:Ljava/lang/String;

    return-object v0
.end method

.method public getVESongPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongPath:Ljava/lang/String;

    return-object v0
.end method

.method public setSongDuration(I)V
    .registers 2
    .parameter "aSongDuration"

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongDuration:I

    .line 49
    return-void
.end method

.method public setSongId(J)V
    .registers 3
    .parameter "aSongId"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongId:J

    .line 40
    return-void
.end method

.method public setVESongName(Ljava/lang/String;)V
    .registers 2
    .parameter "aSongName"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setVESongPath(Ljava/lang/String;)V
    .registers 2
    .parameter "aSongPath"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VEAlbumSong;->mSongPath:Ljava/lang/String;

    .line 31
    return-void
.end method
