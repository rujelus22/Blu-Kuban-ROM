.class public Lcom/google/android/music/athome/AtHomeConstants;
.super Ljava/lang/Object;
.source "AtHomeConstants.java"


# static fields
.field static final MUSIC_AUDIO_ID_COLS:[Ljava/lang/String;

.field public static final MUSIC_COLS:[Ljava/lang/String;

.field static final PLAYLIST_AUDIO_ID_COLS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/music/athome/AtHomeConstants;->PLAYLIST_AUDIO_ID_COLS:[Ljava/lang/String;

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/music/athome/AtHomeConstants;->MUSIC_AUDIO_ID_COLS:[Ljava/lang/String;

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AlbumArtistId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artistSort"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SourceAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SourceId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SongId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Rating"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/athome/AtHomeConstants;->MUSIC_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
