.class public Landroid/support/place/music/TgsTransmitterPlayState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final FIELD_ALBUM:Ljava/lang/String; = "album"

.field private static final FIELD_ALBUM_ART:Ljava/lang/String; = "album_art"

.field private static final FIELD_ALBUM_ART_URL:Ljava/lang/String; = "album_art_url"

.field private static final FIELD_ARTIST:Ljava/lang/String; = "artist"

.field private static final FIELD_PLAYING:Ljava/lang/String; = "playing"

.field private static final FIELD_TRACK:Ljava/lang/String; = "track"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArt:Landroid/graphics/Bitmap;

.field private mAlbumArtUrl:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mPlaying:Z

.field private mTrack:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Landroid/support/place/music/TgsTransmitterPlayState$1;

    invoke-direct {v0}, Landroid/support/place/music/TgsTransmitterPlayState$1;-><init>()V

    sput-object v0, Landroid/support/place/music/TgsTransmitterPlayState;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "playing"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    .line 41
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    .line 42
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    .line 43
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    .line 44
    const-string v0, "album_art"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 45
    const-string v0, "album_art_url"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "album_art_url"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_39
    iput-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    .line 46
    return-void

    .line 45
    :cond_3c
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    .line 32
    iput-object p2, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArt:Landroid/graphics/Bitmap;

    .line 36
    iput-object p6, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 92
    instance-of v1, p1, Landroid/support/place/music/TgsTransmitterPlayState;

    if-nez v1, :cond_6

    .line 96
    :cond_5
    :goto_5
    return v0

    .line 95
    :cond_6
    check-cast p1, Landroid/support/place/music/TgsTransmitterPlayState;

    .line 96
    iget-boolean v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    iget-boolean v2, p1, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    iget-object v2, p1, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArt()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAlbumArtUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaying()Z
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    return v0
.end method

.method public getTrack()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    return-object v0
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    const-string v0, "playing"

    iget-boolean v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    const-string v0, "artist"

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "track"

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mTrack:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "album"

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "album_art"

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 55
    const-string v0, "album_art_url"

    iget-object v1, p0, Landroid/support/place/music/TgsTransmitterPlayState;->mAlbumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
