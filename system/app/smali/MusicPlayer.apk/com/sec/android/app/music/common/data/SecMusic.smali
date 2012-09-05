.class public Lcom/sec/android/app/music/common/data/SecMusic;
.super Ljava/lang/Object;
.source "SecMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/data/SecMusic$QuickList;
    }
.end annotation


# static fields
.field public static final ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    const-string v0, "content://media/internal/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->YEARS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 138
    const-string v0, "content://media/external/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://media/internal/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->COMPOSERS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 144
    const-string v0, "content://media/external/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 147
    const-string v0, "content://media/internal/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->GENRES_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 150
    const-string v0, "content://media/external/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 153
    const-string v0, "content://media/internal/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 156
    const-string v0, "content://media/external/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 159
    const-string v0, "content://media/internal/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ALBUMS_INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 162
    const-string v0, "content://media/external/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 165
    const-string v0, "content://media/external/audio/music_folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;
    .registers 4
    .parameter "volumeName"
    .parameter "playlistId"

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public static getPlaylistUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, uri:Landroid/net/Uri;
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 116
    return-object v0
.end method
