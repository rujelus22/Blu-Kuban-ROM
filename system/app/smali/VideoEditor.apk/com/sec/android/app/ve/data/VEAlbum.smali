.class public Lcom/sec/android/app/ve/data/VEAlbum;
.super Ljava/lang/Object;
.source "VEAlbum.java"


# instance fields
.field private mAlbumArtPath:Ljava/lang/String;

.field private mAlbumArtistName:Ljava/lang/String;

.field private mAlbumId:I

.field private mAlbumName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVEAlbumArtPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumArtPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVEAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getVEAlbumId()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumId:I

    return v0
.end method

.method public getVEAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public setVEAlbumArtPath(Ljava/lang/String;)V
    .registers 2
    .parameter "aAlbumArtPath"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumArtPath:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVEAlbumArtistName(Ljava/lang/String;)V
    .registers 2
    .parameter "aAlbumArtistName"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumArtistName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setVEAlbumId(I)V
    .registers 2
    .parameter "aAlbumId"

    .prologue
    .line 48
    iput p1, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumId:I

    .line 49
    return-void
.end method

.method public setVEAlbumName(Ljava/lang/String;)V
    .registers 2
    .parameter "aAlbumName"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sec/android/app/ve/data/VEAlbum;->mAlbumName:Ljava/lang/String;

    .line 23
    return-void
.end method
