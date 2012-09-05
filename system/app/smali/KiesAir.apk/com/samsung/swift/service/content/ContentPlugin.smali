.class public Lcom/samsung/swift/service/content/ContentPlugin;
.super Ljava/lang/Object;
.source "ContentPlugin.java"


# static fields
.field private static final ALBUM_URI:Landroid/net/Uri; = null

.field private static final ARTIST_URI:Landroid/net/Uri; = null

.field private static final FILTER_ANY:Ljava/lang/String; = "any"

.field private static final FILTER_PICTURE:Ljava/lang/String; = "picture"

.field private static final FILTER_VIDEO:Ljava/lang/String; = "video"

.field private static final GENRE_URI:Landroid/net/Uri; = null

.field private static final GROUPBY_DATE_TAKEN:I = 0x0

.field private static final IS_SOUND_FIELD:Ljava/lang/String; = "is_sound"

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MEDIA_URI:Landroid/net/Uri; = null

.field private static final ONE_DAY_SECS:J = 0x15180L

.field private static final PHOTO_URI:Landroid/net/Uri; = null

.field private static final PLAYLIST_URI:Landroid/net/Uri; = null

.field private static final SORT_ALBUM_RELEASE_ASCENDING:I = 0x5

.field private static final SORT_ALBUM_RELEASE_DESCENDING:I = 0x6

.field private static final SORT_ALBUM_TITLE_ASCENDING:I = 0x3

.field private static final SORT_ALBUM_TITLE_DESCENDING:I = 0x4

.field private static final SORT_ARTIST_NAME_ASCENDING:I = 0x1

.field private static final SORT_ARTIST_NAME_DESCENDING:I = 0x2

.field private static final SORT_DATEADDED_ASCENDING:I = 0x17

.field private static final SORT_DATEADDED_DESCENDING:I = 0x18

.field private static final SORT_DATEMODIFIED_ASCENDING:I = 0x19

.field private static final SORT_DATEMODIFIED_DESCENDING:I = 0x1a

.field private static final SORT_DATETAKEN_ASCENDING:I = 0x15

.field private static final SORT_DATETAKEN_DESCENDING:I = 0x16

.field private static final SORT_DURATION_ASCENDING:I = 0x1b

.field private static final SORT_DURATION_DESCENDING:I = 0x1c

.field private static final SORT_FILENAME_ASCENDING:I = 0x11

.field private static final SORT_FILENAME_DESCENDING:I = 0x12

.field private static final SORT_NATURAL:I = 0x0

.field private static final SORT_PLAYLIST_NAME_ASCENDING:I = 0xd

.field private static final SORT_PLAYLIST_NAME_DESCENDING:I = 0xe

.field private static final SORT_SIZE_ASCENDING:I = 0xf

.field private static final SORT_SIZE_DESCENDING:I = 0x10

.field private static final SORT_SONG_ALBUM_ASCENDING:I = 0xb

.field private static final SORT_SONG_ALBUM_DESCENDING:I = 0xc

.field private static final SORT_SONG_ARTIST_ASCENDING:I = 0x9

.field private static final SORT_SONG_ARTIST_DESCENDING:I = 0xa

.field private static final SORT_SONG_RELEASE_ASCENDING:I = 0x1d

.field private static final SORT_SONG_RELEASE_DESCENDING:I = 0x1e

.field private static final SORT_SONG_TITLE_ASCENDING:I = 0x7

.field private static final SORT_SONG_TITLE_DESCENDING:I = 0x8

.field private static final SORT_TITLE_ASCENDING:I = 0x13

.field private static final SORT_TITLE_DESCENDING:I = 0x14

.field private static final TYPE_AUDIO:I = 0x0

.field private static final TYPE_IMAGE:I = 0x1

.field private static final TYPE_VIDEO:I = 0x2

.field private static final VIDEO_URI:Landroid/net/Uri; = null

.field private static _hasIsSoundColumn:Ljava/lang/Boolean; = null

.field private static albumObserver:Lcom/samsung/swift/service/content/AlbumContentObserver; = null

.field private static artistObserver:Lcom/samsung/swift/service/content/ArtistContentObserver; = null

.field private static final confirmationReceiver:Lcom/samsung/swift/service/content/ContentConfirmationReceiver; = null

.field private static final monitor:Ljava/lang/Object; = null

.field private static photoObserver:Lcom/samsung/swift/service/content/PhotoContentObserver; = null

.field private static playlistObserver:Lcom/samsung/swift/service/content/PlaylistContentObserver; = null

.field private static final projAlbum:[Ljava/lang/String; = null

.field private static final projAlbumArt:[Ljava/lang/String; = null

.field private static final projArtist:[Ljava/lang/String; = null

.field private static final projGenre:[Ljava/lang/String; = null

.field private static final projMedia:[Ljava/lang/String; = null

.field private static final projPhoto:[Ljava/lang/String; = null

.field private static final projPhotoByDate:[Ljava/lang/String; = null

.field private static final projPlaylist:[Ljava/lang/String; = null

.field private static final projVideo:[Ljava/lang/String; = null

.field private static final projVideoByDate:[Ljava/lang/String; = null

.field private static final random:Ljava/util/Random; = null

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter; = null

.field private static final renameWhereAudioClause:Ljava/lang/String; = "_data = ?"

.field private static final renameWhereImageClause:Ljava/lang/String; = "_data = ?"

.field private static final renameWhereVideoClause:Ljava/lang/String; = "_data = ?"

.field private static revision:Ljava/lang/String; = null

.field private static final songListWhereClause:Ljava/lang/String; = "is_sound = 0"

.field private static songObserver:Lcom/samsung/swift/service/content/SongContentObserver;

.field private static videoObserver:Lcom/samsung/swift/service/content/VideoContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const-class v0, Lcom/samsung/swift/service/content/ContentPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    .line 165
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->ARTIST_URI:Landroid/net/Uri;

    .line 166
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->ALBUM_URI:Landroid/net/Uri;

    .line 167
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    .line 168
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->PLAYLIST_URI:Landroid/net/Uri;

    .line 169
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->GENRE_URI:Landroid/net/Uri;

    .line 171
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    .line 172
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    .line 176
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "album_art"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projAlbumArt:[Ljava/lang/String;

    .line 181
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "numsongs"

    aput-object v1, v0, v6

    const-string v1, "maxyear"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projAlbum:[Ljava/lang/String;

    .line 191
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "track"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "year"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    .line 206
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "number_of_albums"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projArtist:[Ljava/lang/String;

    .line 213
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projPlaylist:[Ljava/lang/String;

    .line 219
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projGenre:[Ljava/lang/String;

    .line 225
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "date_modified"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projPhoto:[Ljava/lang/String;

    .line 238
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projPhotoByDate:[Ljava/lang/String;

    .line 245
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "date_modified"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "resolution"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projVideo:[Ljava/lang/String;

    .line 260
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "datetaken"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->projVideoByDate:[Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    .line 295
    new-instance v0, Lcom/samsung/swift/service/content/ContentConfirmationReceiver;

    invoke-direct {v0}, Lcom/samsung/swift/service/content/ContentConfirmationReceiver;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->confirmationReceiver:Lcom/samsung/swift/service/content/ContentConfirmationReceiver;

    .line 298
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->random:Ljava/util/Random;

    .line 299
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->revision:Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->monitor:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAlbum(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Album;
    .registers 10
    .parameter "c"

    .prologue
    .line 1871
    new-instance v0, Lcom/samsung/swift/service/content/Album;

    invoke-direct {v0}, Lcom/samsung/swift/service/content/Album;-><init>()V

    .line 1874
    .local v0, album:Lcom/samsung/swift/service/content/Album;
    const-string v8, "_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1875
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 1877
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/Album;->setId(Ljava/lang/String;)V

    .line 1881
    :cond_14
    const-string v8, "album"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1882
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_23

    .line 1884
    invoke-virtual {v0, v7}, Lcom/samsung/swift/service/content/Album;->setTitle(Ljava/lang/String;)V

    .line 1888
    :cond_23
    const-string v8, "artist"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1889
    .local v2, artist:Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 1891
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/Album;->setArtistName(Ljava/lang/String;)V

    .line 1895
    :cond_32
    const-string v8, "numsongs"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1896
    .local v4, numTracks:I
    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/content/Album;->setNumTracks(I)V

    .line 1899
    const-string v8, "maxyear"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1900
    .local v5, releaseDate:J
    invoke-virtual {v0, v5, v6}, Lcom/samsung/swift/service/content/Album;->setReleaseDate(J)V

    .line 1903
    const-string v8, "album_art"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, albumArt:Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 1906
    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/content/Album;->setAlbumArt(Ljava/lang/String;)V

    .line 1909
    :cond_5b
    return-object v0
.end method

.method private static buildArtist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Artist;
    .registers 6
    .parameter "c"

    .prologue
    .line 1842
    new-instance v0, Lcom/samsung/swift/service/content/Artist;

    invoke-direct {v0}, Lcom/samsung/swift/service/content/Artist;-><init>()V

    .line 1845
    .local v0, artist:Lcom/samsung/swift/service/content/Artist;
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1846
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 1848
    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/content/Artist;->setId(Ljava/lang/String;)V

    .line 1852
    :cond_14
    const-string v4, "artist"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1853
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 1855
    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/Artist;->setName(Ljava/lang/String;)V

    .line 1859
    :cond_23
    const-string v4, "number_of_albums"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1860
    .local v3, numAlbums:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_33

    .line 1862
    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/Artist;->setNumAlbums(I)V

    .line 1865
    :cond_33
    return-object v0
.end method

.method private static buildPhoto(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Photo;
    .registers 15
    .parameter "c"

    .prologue
    .line 2038
    new-instance v8, Lcom/samsung/swift/service/content/Photo;

    invoke-direct {v8}, Lcom/samsung/swift/service/content/Photo;-><init>()V

    .line 2040
    .local v8, photo:Lcom/samsung/swift/service/content/Photo;
    const-string v12, "_id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2041
    .local v9, photoId:Ljava/lang/String;
    if-eqz v9, :cond_14

    .line 2043
    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/content/Photo;->setPhotoId(Ljava/lang/String;)V

    .line 2047
    :cond_14
    const-string v12, "title"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2048
    .local v11, title:Ljava/lang/String;
    if-eqz v11, :cond_23

    .line 2050
    invoke-virtual {v8, v11}, Lcom/samsung/swift/service/content/Photo;->setTitle(Ljava/lang/String;)V

    .line 2054
    :cond_23
    const-string v12, "_display_name"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2055
    .local v6, displayName:Ljava/lang/String;
    if-eqz v6, :cond_32

    .line 2057
    invoke-virtual {v8, v6}, Lcom/samsung/swift/service/content/Photo;->setDisplayName(Ljava/lang/String;)V

    .line 2061
    :cond_32
    const-string v12, "datetaken"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2063
    .local v4, dateTaken:J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-ltz v12, :cond_48

    .line 2066
    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    .line 2068
    invoke-virtual {v8, v4, v5}, Lcom/samsung/swift/service/content/Photo;->setDateTaken(J)V

    .line 2072
    :cond_48
    const-string v12, "date_added"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2073
    .local v0, dateAdded:J
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-ltz v12, :cond_5b

    .line 2075
    invoke-virtual {v8, v0, v1}, Lcom/samsung/swift/service/content/Photo;->setDateAdded(J)V

    .line 2079
    :cond_5b
    const-string v12, "date_modified"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2080
    .local v2, dateModified:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-ltz v12, :cond_6e

    .line 2082
    invoke-virtual {v8, v2, v3}, Lcom/samsung/swift/service/content/Photo;->setDateModified(J)V

    .line 2086
    :cond_6e
    const-string v12, "_data"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2087
    .local v7, path:Ljava/lang/String;
    if-eqz v7, :cond_7d

    .line 2089
    invoke-virtual {v8, v7}, Lcom/samsung/swift/service/content/Photo;->setPath(Ljava/lang/String;)V

    .line 2093
    :cond_7d
    const-string v12, "_size"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2094
    .local v10, size:I
    if-ltz v10, :cond_8c

    .line 2096
    invoke-virtual {v8, v10}, Lcom/samsung/swift/service/content/Photo;->setSize(I)V

    .line 2100
    :cond_8c
    return-object v8
.end method

.method private static buildPlaylist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Playlist;
    .registers 7
    .parameter "c"

    .prologue
    .line 2011
    new-instance v4, Lcom/samsung/swift/service/content/Playlist;

    invoke-direct {v4}, Lcom/samsung/swift/service/content/Playlist;-><init>()V

    .line 2014
    .local v4, playlist:Lcom/samsung/swift/service/content/Playlist;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2015
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 2017
    invoke-virtual {v4, v0}, Lcom/samsung/swift/service/content/Playlist;->setId(Ljava/lang/String;)V

    .line 2021
    :cond_14
    const-string v5, "name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2022
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 2024
    invoke-virtual {v4, v1}, Lcom/samsung/swift/service/content/Playlist;->setName(Ljava/lang/String;)V

    .line 2028
    :cond_23
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2030
    .local v2, playListId:J
    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getNumTracksInPlayList(J)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/swift/service/content/Playlist;->setNumTracks(I)V

    .line 2032
    return-object v4
.end method

.method private static buildSong(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;
    .registers 20
    .parameter "c"
    .parameter "albumArt"
    .parameter "genre"

    .prologue
    .line 1914
    new-instance v10, Lcom/samsung/swift/service/content/Song;

    invoke-direct {v10}, Lcom/samsung/swift/service/content/Song;-><init>()V

    .line 1916
    .local v10, song:Lcom/samsung/swift/service/content/Song;
    const-string v15, "_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1920
    .local v11, songId:Ljava/lang/String;
    const-string v15, "album_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, albumId:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 1923
    invoke-virtual {v10, v1}, Lcom/samsung/swift/service/content/Song;->setAlbumId(Ljava/lang/String;)V

    .line 1927
    :cond_26
    const-string v15, "track"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1928
    .local v14, trackId:Ljava/lang/String;
    if-eqz v14, :cond_39

    .line 1930
    invoke-virtual {v10, v14}, Lcom/samsung/swift/service/content/Song;->setTrackId(Ljava/lang/String;)V

    .line 1934
    :cond_39
    const-string v15, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1935
    .local v13, title:Ljava/lang/String;
    if-eqz v13, :cond_4c

    .line 1937
    invoke-virtual {v10, v13}, Lcom/samsung/swift/service/content/Song;->setTitle(Ljava/lang/String;)V

    .line 1941
    :cond_4c
    const-string v15, "artist"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1942
    .local v3, artistName:Ljava/lang/String;
    if-eqz v3, :cond_5f

    .line 1944
    invoke-virtual {v10, v3}, Lcom/samsung/swift/service/content/Song;->setArtistName(Ljava/lang/String;)V

    .line 1948
    :cond_5f
    const-string v15, "album"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, albumTitle:Ljava/lang/String;
    if-eqz v2, :cond_72

    .line 1951
    invoke-virtual {v10, v2}, Lcom/samsung/swift/service/content/Song;->setAlbumTitle(Ljava/lang/String;)V

    .line 1955
    :cond_72
    if-eqz p1, :cond_79

    .line 1957
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/samsung/swift/service/content/Song;->setAlbumArt(Ljava/lang/String;)V

    .line 1960
    :cond_79
    if-eqz p2, :cond_80

    .line 1962
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/samsung/swift/service/content/Song;->setGenre(Ljava/lang/String;)V

    .line 1966
    :cond_80
    const-string v15, "year"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1967
    .local v7, releaseDate:J
    invoke-virtual {v10, v7, v8}, Lcom/samsung/swift/service/content/Song;->setReleaseDate(J)V

    .line 1970
    const-string v15, "duration"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1971
    .local v4, duration:J
    invoke-virtual {v10, v4, v5}, Lcom/samsung/swift/service/content/Song;->setDuration(J)V

    .line 1974
    const-string v15, "_size"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1975
    .local v9, size:I
    invoke-virtual {v10, v9}, Lcom/samsung/swift/service/content/Song;->setSize(I)V

    .line 1977
    const-string v15, "_data"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1978
    .local v12, songPath:Ljava/lang/String;
    invoke-virtual {v10, v12}, Lcom/samsung/swift/service/content/Song;->setPath(Ljava/lang/String;)V

    .line 1980
    const-string v15, "is_ringtone"

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1982
    .local v6, isRingtone:Ljava/lang/String;
    if-eqz v6, :cond_116

    .line 1984
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v15

    if-eqz v15, :cond_117

    .line 1986
    const-string v15, "gsm"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_ee

    .line 1988
    const/4 v15, 0x1

    const-string v16, "gsm"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/samsung/swift/service/content/Song;->setSelectedRingtone(ZLjava/lang/String;)V

    .line 1990
    :cond_ee
    const-string v15, "cdma"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_102

    .line 1992
    const/4 v15, 0x1

    const-string v16, "cdma"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/samsung/swift/service/content/Song;->setSelectedRingtone(ZLjava/lang/String;)V

    .line 1994
    :cond_102
    const-string v15, "wcdma"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_116

    .line 1996
    const/4 v15, 0x1

    const-string v16, "wcdma"

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/samsung/swift/service/content/Song;->setSelectedRingtone(ZLjava/lang/String;)V

    .line 2006
    :cond_116
    :goto_116
    return-object v10

    .line 1999
    :cond_117
    const/4 v15, 0x1

    invoke-static {v12, v15}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_116

    .line 2001
    const/4 v15, 0x1

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/samsung/swift/service/content/Song;->setSelectedRingtone(ZLjava/lang/String;)V

    goto :goto_116
.end method

.method private static buildVideo(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Video;
    .registers 21
    .parameter "c"

    .prologue
    .line 2106
    new-instance v15, Lcom/samsung/swift/service/content/Video;

    invoke-direct {v15}, Lcom/samsung/swift/service/content/Video;-><init>()V

    .line 2108
    .local v15, video:Lcom/samsung/swift/service/content/Video;
    const-string v18, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2109
    .local v16, videoId:Ljava/lang/String;
    if-eqz v16, :cond_1c

    .line 2111
    invoke-virtual/range {v15 .. v16}, Lcom/samsung/swift/service/content/Video;->setVideoId(Ljava/lang/String;)V

    .line 2114
    :cond_1c
    const-string v18, "resolution"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2115
    .local v11, resolution:Ljava/lang/String;
    if-eqz v11, :cond_57

    .line 2117
    new-instance v12, Lcom/samsung/swift/service/content/Resolution;

    invoke-direct {v12}, Lcom/samsung/swift/service/content/Resolution;-><init>()V

    .line 2119
    .local v12, resolutionVals:Lcom/samsung/swift/service/content/Resolution;
    invoke-static {v11}, Lcom/samsung/swift/service/content/ContentPlugin;->getHeightWidthFromResolution(Ljava/lang/String;)Lcom/samsung/swift/service/content/Resolution;

    move-result-object v12

    .line 2121
    invoke-virtual {v12}, Lcom/samsung/swift/service/content/Resolution;->height()I

    move-result v18

    if-ltz v18, :cond_48

    .line 2123
    invoke-virtual {v12}, Lcom/samsung/swift/service/content/Resolution;->height()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/samsung/swift/service/content/Video;->setHeight(I)V

    .line 2126
    :cond_48
    invoke-virtual {v12}, Lcom/samsung/swift/service/content/Resolution;->width()I

    move-result v18

    if-ltz v18, :cond_57

    .line 2128
    invoke-virtual {v12}, Lcom/samsung/swift/service/content/Resolution;->width()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/samsung/swift/service/content/Video;->setWidth(I)V

    .line 2133
    .end local v12           #resolutionVals:Lcom/samsung/swift/service/content/Resolution;
    :cond_57
    const-string v18, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2134
    .local v14, title:Ljava/lang/String;
    if-eqz v14, :cond_6e

    .line 2136
    invoke-virtual {v15, v14}, Lcom/samsung/swift/service/content/Video;->setTitle(Ljava/lang/String;)V

    .line 2140
    :cond_6e
    const-string v18, "_display_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2141
    .local v8, displayName:Ljava/lang/String;
    if-eqz v8, :cond_85

    .line 2143
    invoke-virtual {v15, v8}, Lcom/samsung/swift/service/content/Video;->setDisplayName(Ljava/lang/String;)V

    .line 2147
    :cond_85
    const-string v18, "datetaken"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2148
    .local v6, dateTaken:J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-ltz v18, :cond_a4

    .line 2151
    const-wide/16 v18, 0x3e8

    div-long v6, v6, v18

    .line 2153
    invoke-virtual {v15, v6, v7}, Lcom/samsung/swift/service/content/Video;->setDateTaken(J)V

    .line 2157
    :cond_a4
    const-string v18, "date_added"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2158
    .local v2, dateAdded:J
    const-wide/16 v18, 0x0

    cmp-long v18, v2, v18

    if-ltz v18, :cond_bf

    .line 2160
    invoke-virtual {v15, v2, v3}, Lcom/samsung/swift/service/content/Video;->setDateAdded(J)V

    .line 2164
    :cond_bf
    const-string v18, "date_modified"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2165
    .local v4, dateModified:J
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-ltz v18, :cond_da

    .line 2167
    invoke-virtual {v15, v4, v5}, Lcom/samsung/swift/service/content/Video;->setDateModified(J)V

    .line 2171
    :cond_da
    const-string v18, "_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2172
    .local v17, videoPath:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/swift/service/content/Video;->setPath(Ljava/lang/String;)V

    .line 2175
    const-string v18, "_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2176
    .local v13, size:I
    if-ltz v13, :cond_108

    .line 2178
    invoke-virtual {v15, v13}, Lcom/samsung/swift/service/content/Video;->setSize(I)V

    .line 2182
    :cond_108
    const-string v18, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2183
    .local v9, duration:J
    const-wide/16 v18, 0x0

    cmp-long v18, v9, v18

    if-ltz v18, :cond_123

    .line 2185
    invoke-virtual {v15, v9, v10}, Lcom/samsung/swift/service/content/Video;->setDuration(J)V

    .line 2188
    :cond_123
    return-object v15
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static consumeFile(Ljava/lang/String;Z)V
    .registers 7
    .parameter "path"
    .parameter "sync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2584
    new-instance v1, Lcom/samsung/swift/service/content/MediaScannerRequest;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/MediaScannerRequest;-><init>()V

    .line 2586
    .local v1, request:Lcom/samsung/swift/service/content/MediaScannerRequest;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2587
    .local v0, androidVersion:I
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "androidVersion - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v2, 0x7

    if-le v0, v2, :cond_50

    .line 2591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/swift/service/content/MediaScannerRequest;->setPath(Ljava/lang/String;)V

    .line 2600
    :goto_3c
    invoke-virtual {v1}, Lcom/samsung/swift/service/content/MediaScannerRequest;->dispatch()V

    .line 2601
    if-eqz p1, :cond_48

    .line 2603
    monitor-enter v1

    .line 2606
    const-wide/16 v2, 0x7d0

    :try_start_44
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 2607
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_54

    .line 2610
    :cond_48
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "########## ALL DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    return-void

    .line 2595
    :cond_50
    invoke-virtual {v1, p0}, Lcom/samsung/swift/service/content/MediaScannerRequest;->setPath(Ljava/lang/String;)V

    goto :goto_3c

    .line 2607
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method private static covertToLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 2566
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 2577
    :cond_9
    :goto_9
    return-object v0

    .line 2571
    :cond_a
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_11} :catch_13

    move-result-object v0

    .line 2573
    .local v0, _id:Ljava/lang/Long;
    goto :goto_9

    .line 2575
    .end local v0           #_id:Ljava/lang/Long;
    :catch_13
    move-exception v1

    .line 2577
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method private static getAlbum(Ljava/lang/String;)Lcom/samsung/swift/service/content/Album;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 352
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 354
    .local v7, album_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 357
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_11

    .line 383
    :cond_10
    :goto_10
    return-object v6

    .line 365
    :cond_11
    :try_start_11
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projAlbum:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    if-eqz v8, :cond_4e

    .line 369
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_39

    .line 371
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_47

    .line 388
    if-eqz v8, :cond_10

    .line 390
    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 375
    :cond_39
    :try_start_39
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Record found. Building Album record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->buildAlbum(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Album;
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_47

    move-result-object v6

    .line 388
    .local v6, album:Lcom/samsung/swift/service/content/Album;
    if-eqz v8, :cond_10

    goto :goto_35

    .end local v6           #album:Lcom/samsung/swift/service/content/Album;
    :catchall_47
    move-exception v1

    if-eqz v8, :cond_4d

    .line 390
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_4d
    throw v1

    :cond_4e
    if-eqz v8, :cond_10

    goto :goto_35
.end method

.method private static getAlbumArtForId(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "albumId"

    .prologue
    const/4 v9, 0x0

    .line 2520
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 2522
    .local v7, album_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2523
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2524
    .local v6, albumArt:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2526
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    :cond_1b
    move-object v1, v9

    .line 2551
    :goto_1c
    return-object v1

    .line 2534
    :cond_1d
    :try_start_1d
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projAlbumArt:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2536
    if-eqz v8, :cond_57

    .line 2538
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_46

    .line 2540
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1d .. :try_end_3f} :catchall_5e

    .line 2555
    if-eqz v8, :cond_44

    .line 2557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v1, v9

    .line 2541
    goto :goto_1c

    .line 2544
    :cond_46
    :try_start_46
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Record found. Retrieving Path"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const-string v1, "album_art"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_5e

    move-result-object v6

    .line 2555
    :cond_57
    if-eqz v8, :cond_5c

    .line 2557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5c
    move-object v1, v6

    .line 2551
    goto :goto_1c

    .line 2555
    :catchall_5e
    move-exception v1

    if-eqz v8, :cond_64

    .line 2557
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2555
    :cond_64
    throw v1
.end method

.method private static getAlbumList(III)Lcom/samsung/swift/service/content/AlbumList;
    .registers 14
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 399
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAlbumList: startIndex - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v7, Lcom/samsung/swift/service/content/AlbumList;

    invoke-direct {v7}, Lcom/samsung/swift/service/content/AlbumList;-><init>()V

    .line 403
    .local v7, albumList:Lcom/samsung/swift/service/content/AlbumList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 408
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_30
    invoke-static {p2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortAlbumClause(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, sortClause:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/AlbumList;->setEstimatedResultSize(I)V

    .line 412
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->ALBUM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projAlbum:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    if-eqz v8, :cond_c2

    .line 416
    invoke-interface {v8, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 418
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/AlbumList;->setEstimatedResultSize(I)V

    .line 419
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_c5

    .line 452
    if-eqz v8, :cond_5d

    .line 454
    :goto_5a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_5d
    return-object v7

    .line 423
    :cond_5e
    :try_start_5e
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Records found. Building Album list - Num Items found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v9, 0x0

    .local v9, listSize:I
    move v10, v9

    .line 426
    .end local v9           #listSize:I
    .local v10, listSize:I
    :goto_7c
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 428
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting album for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    add-int/lit8 v9, v10, 0x1

    .end local v10           #listSize:I
    .restart local v9       #listSize:I
    if-lt v10, p1, :cond_a8

    .line 432
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/AlbumList;->setEstimatedResultSize(I)V

    .line 452
    if-eqz v8, :cond_5d

    goto :goto_5a

    .line 436
    :cond_a8
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->buildAlbum(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Album;

    move-result-object v6

    .line 438
    .local v6, album:Lcom/samsung/swift/service/content/Album;
    invoke-virtual {v7, v6}, Lcom/samsung/swift/service/content/AlbumList;->add(Lcom/samsung/swift/service/content/Album;)V

    .line 440
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move v10, v9

    .line 441
    .end local v9           #listSize:I
    .restart local v10       #listSize:I
    goto :goto_7c

    .line 443
    .end local v6           #album:Lcom/samsung/swift/service/content/Album;
    :cond_b4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/AlbumList;->setEstimatedResultSize(I)V

    .line 445
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Returning listing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_5e .. :try_end_c2} :catchall_c5

    .line 452
    .end local v10           #listSize:I
    :cond_c2
    if-eqz v8, :cond_5d

    goto :goto_5a

    .end local v5           #sortClause:Ljava/lang/String;
    :catchall_c5
    move-exception v1

    if-eqz v8, :cond_cb

    .line 454
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_cb
    throw v1
.end method

.method private static getArtist(Ljava/lang/String;)Lcom/samsung/swift/service/content/Artist;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 465
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 467
    .local v7, artist_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 468
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 470
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_11

    .line 496
    :cond_10
    :goto_10
    return-object v6

    .line 478
    :cond_11
    :try_start_11
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->ARTIST_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projArtist:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 480
    if-eqz v8, :cond_4e

    .line 482
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_39

    .line 484
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_47

    .line 501
    if-eqz v8, :cond_10

    .line 503
    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 488
    :cond_39
    :try_start_39
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Record found. Building Artist record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->buildArtist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Artist;
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_47

    move-result-object v6

    .line 501
    .local v6, artist:Lcom/samsung/swift/service/content/Artist;
    if-eqz v8, :cond_10

    goto :goto_35

    .end local v6           #artist:Lcom/samsung/swift/service/content/Artist;
    :catchall_47
    move-exception v1

    if-eqz v8, :cond_4d

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_4d
    throw v1

    :cond_4e
    if-eqz v8, :cond_10

    goto :goto_35
.end method

.method private static getArtistList(III)Lcom/samsung/swift/service/content/ArtistList;
    .registers 14
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 512
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getArtistList: startIndex - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v7, Lcom/samsung/swift/service/content/ArtistList;

    invoke-direct {v7}, Lcom/samsung/swift/service/content/ArtistList;-><init>()V

    .line 516
    .local v7, artistList:Lcom/samsung/swift/service/content/ArtistList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 517
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 521
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_30
    invoke-static {p2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortArtistClause(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    .local v5, sortClause:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/ArtistList;->setEstimatedResultSize(I)V

    .line 525
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->ARTIST_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projArtist:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 527
    if-eqz v8, :cond_c2

    .line 529
    invoke-interface {v8, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 531
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/ArtistList;->setEstimatedResultSize(I)V

    .line 532
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_c5

    .line 565
    if-eqz v8, :cond_5d

    .line 567
    :goto_5a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 561
    :cond_5d
    return-object v7

    .line 536
    :cond_5e
    :try_start_5e
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Records found. Building Artist list - Num Items found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v9, 0x0

    .local v9, listSize:I
    move v10, v9

    .line 539
    .end local v9           #listSize:I
    .local v10, listSize:I
    :goto_7c
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 541
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting artist for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    add-int/lit8 v9, v10, 0x1

    .end local v10           #listSize:I
    .restart local v9       #listSize:I
    if-lt v10, p1, :cond_a8

    .line 545
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/ArtistList;->setEstimatedResultSize(I)V

    .line 565
    if-eqz v8, :cond_5d

    goto :goto_5a

    .line 549
    :cond_a8
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->buildArtist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Artist;

    move-result-object v6

    .line 551
    .local v6, artist:Lcom/samsung/swift/service/content/Artist;
    invoke-virtual {v7, v6}, Lcom/samsung/swift/service/content/ArtistList;->add(Lcom/samsung/swift/service/content/Artist;)V

    .line 553
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move v10, v9

    .line 554
    .end local v9           #listSize:I
    .restart local v10       #listSize:I
    goto :goto_7c

    .line 556
    .end local v6           #artist:Lcom/samsung/swift/service/content/Artist;
    :cond_b4
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/samsung/swift/service/content/ArtistList;->setEstimatedResultSize(I)V

    .line 558
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Returning listing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_5e .. :try_end_c2} :catchall_c5

    .line 565
    .end local v10           #listSize:I
    :cond_c2
    if-eqz v8, :cond_5d

    goto :goto_5a

    .end local v5           #sortClause:Ljava/lang/String;
    :catchall_c5
    move-exception v1

    if-eqz v8, :cond_cb

    .line 567
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_cb
    throw v1
.end method

.method private static getEndDate(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .parameter "startDate"
    .parameter "bMilliSeconds"

    .prologue
    const-wide/32 v4, 0x15180

    .line 1546
    if-eqz p1, :cond_17

    .line 1548
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 1555
    .local v0, endDate:J
    :goto_12
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1552
    .end local v0           #endDate:J
    :cond_17
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v2, v4

    .restart local v0       #endDate:J
    goto :goto_12
.end method

.method private static getGenreForId(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "songId"

    .prologue
    const/4 v9, 0x0

    .line 2476
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 2477
    .local v8, song_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2478
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2479
    .local v7, songGenre:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2481
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_13

    move-object v1, v9

    .line 2504
    :goto_12
    return-object v1

    .line 2488
    :cond_13
    :try_start_13
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->GENRE_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projGenre:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2490
    if-eqz v6, :cond_4d

    .line 2492
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 2494
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_54

    .line 2508
    if-eqz v6, :cond_3a

    .line 2510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3a
    move-object v1, v9

    .line 2495
    goto :goto_12

    .line 2497
    :cond_3c
    :try_start_3c
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Record found. Retrieving Genre"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const-string v1, "name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_54

    move-result-object v7

    .line 2508
    :cond_4d
    if-eqz v6, :cond_52

    .line 2510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    move-object v1, v7

    .line 2504
    goto :goto_12

    .line 2508
    :catchall_54
    move-exception v1

    if-eqz v6, :cond_5a

    .line 2510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2508
    :cond_5a
    throw v1
.end method

.method private static getHeightWidthFromResolution(Ljava/lang/String;)Lcom/samsung/swift/service/content/Resolution;
    .registers 9
    .parameter "resolution"

    .prologue
    const/4 v7, -0x1

    .line 2193
    new-instance v2, Lcom/samsung/swift/service/content/Resolution;

    invoke-direct {v2}, Lcom/samsung/swift/service/content/Resolution;-><init>()V

    .line 2197
    .local v2, resolutionVals:Lcom/samsung/swift/service/content/Resolution;
    const-string v3, "x"

    .line 2199
    .local v3, separator:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2202
    .local v0, fields:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_2e

    .line 2204
    sget-object v4, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHeightWidthFromResolution - Invalid value for resolution (too many fields) - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-virtual {v2, v7}, Lcom/samsung/swift/service/content/Resolution;->setHeight(I)V

    .line 2207
    invoke-virtual {v2, v7}, Lcom/samsung/swift/service/content/Resolution;->setWidth(I)V

    .line 2212
    :cond_2e
    const/4 v4, 0x0

    :try_start_2f
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/content/Resolution;->setWidth(I)V

    .line 2213
    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/swift/service/content/Resolution;->setHeight(I)V
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_4a} :catch_4b

    .line 2223
    :goto_4a
    return-object v2

    .line 2215
    :catch_4b
    move-exception v1

    .line 2217
    .local v1, nfe:Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHeightWidthFromResolution - Invalid value for resolution (non numeric) - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {v2, v7}, Lcom/samsung/swift/service/content/Resolution;->setHeight(I)V

    .line 2220
    invoke-virtual {v2, v7}, Lcom/samsung/swift/service/content/Resolution;->setWidth(I)V

    goto :goto_4a
.end method

.method private static getItemList(ILcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/ItemList;
    .registers 26
    .parameter "groupBy"
    .parameter "sqf"

    .prologue
    .line 1413
    sget-object v4, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getItemList: groupBy - "

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-wide/16 v9, 0x0

    .line 1419
    .local v9, dateTaken:J
    const/16 v18, 0x0

    .line 1421
    .local v18, numUniqueItems:I
    new-instance v14, Lcom/samsung/swift/service/content/ItemList;

    invoke-direct {v14}, Lcom/samsung/swift/service/content/ItemList;-><init>()V

    .line 1422
    .local v14, itemList:Lcom/samsung/swift/service/content/ItemList;
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lcom/samsung/swift/service/content/ItemList;->setEstimatedResultSize(I)V

    .line 1424
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1425
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1431
    .local v7, cursor:Landroid/database/Cursor;
    if-nez p1, :cond_3a

    .line 1534
    if-eqz v7, :cond_39

    .line 1536
    :goto_36
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1530
    :cond_39
    return-object v14

    .line 1437
    :cond_3a
    :try_start_3a
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->filter:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_14e

    .line 1439
    sget v4, Lcom/samsung/swift/util/SearchQueryFilter;->filter:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v16

    .line 1441
    .local v16, mediaType:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v5, "picture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 1443
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    .line 1444
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projPhotoByDate:[Ljava/lang/String;

    .line 1445
    .local v3, proj:[Ljava/lang/String;
    const/4 v4, 0x0

    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoGroupByClause(IZ)Ljava/lang/String;

    move-result-object v6

    .line 1459
    .local v6, sortClause:Ljava/lang/String;
    :goto_63
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1462
    if-nez p0, :cond_14e

    .line 1464
    if-eqz v7, :cond_14e

    .line 1467
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1469
    .local v8, dateNumItemsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1471
    :goto_79
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_10e

    .line 1473
    const-wide/16 v20, 0x0

    .line 1475
    .local v20, utcDate:J
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v5, "picture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 1478
    const-string v4, "datetaken"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1489
    :cond_96
    :goto_96
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-ltz v4, :cond_c6

    .line 1492
    invoke-static {v9, v10}, Lcom/samsung/swift/service/content/ContentPlugin;->getUTCDateForItem(J)J

    move-result-wide v20

    .line 1494
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ff

    .line 1496
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1497
    .local v17, numItems:I
    add-int/lit8 v17, v17, 0x1

    .line 1498
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    .end local v17           #numItems:I
    :cond_c6
    :goto_c6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c9
    .catchall {:try_start_3a .. :try_end_c9} :catchall_ca

    goto :goto_79

    .line 1534
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v6           #sortClause:Ljava/lang/String;
    .end local v8           #dateNumItemsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v16           #mediaType:[Ljava/lang/String;
    .end local v20           #utcDate:J
    :catchall_ca
    move-exception v4

    if-eqz v7, :cond_d0

    .line 1536
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1534
    :cond_d0
    throw v4

    .line 1447
    .restart local v16       #mediaType:[Ljava/lang/String;
    :cond_d1
    const/4 v4, 0x0

    :try_start_d2
    aget-object v4, v16, v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    .line 1449
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    .line 1450
    .restart local v2       #uri:Landroid/net/Uri;
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projVideoByDate:[Ljava/lang/String;

    .line 1451
    .restart local v3       #proj:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p0

    invoke-static {v0, v4}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoGroupByClause(IZ)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #sortClause:Ljava/lang/String;
    goto/16 :goto_63

    .line 1480
    .restart local v8       #dateNumItemsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v20       #utcDate:J
    :cond_e9
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 1483
    const-string v4, "datetaken"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1484
    .local v11, dt:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    goto :goto_96

    .line 1502
    .end local v11           #dt:I
    :cond_ff
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    add-int/lit8 v18, v18, 0x1

    goto :goto_c6

    .line 1512
    .end local v20           #utcDate:J
    :cond_10e
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 1514
    .local v19, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_116
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_149

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1516
    .local v15, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    new-instance v13, Lcom/samsung/swift/service/content/Item;

    invoke-direct {v13}, Lcom/samsung/swift/service/content/Item;-><init>()V

    .line 1518
    .local v13, item:Lcom/samsung/swift/service/content/Item;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    invoke-virtual {v13, v4, v5}, Lcom/samsung/swift/service/content/Item;->setDateTaken(J)V

    .line 1519
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v4}, Lcom/samsung/swift/service/content/Item;->setSize(I)V

    .line 1521
    invoke-virtual {v14, v13}, Lcom/samsung/swift/service/content/ItemList;->add(Lcom/samsung/swift/service/content/Item;)V

    goto :goto_116

    .line 1524
    .end local v13           #item:Lcom/samsung/swift/service/content/Item;
    .end local v15           #mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_149
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/swift/service/content/ItemList;->setEstimatedResultSize(I)V
    :try_end_14e
    .catchall {:try_start_d2 .. :try_end_14e} :catchall_ca

    .line 1534
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v6           #sortClause:Ljava/lang/String;
    .end local v8           #dateNumItemsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #mediaType:[Ljava/lang/String;
    .end local v19           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_14e
    if-eqz v7, :cond_39

    goto/16 :goto_36

    .restart local v16       #mediaType:[Ljava/lang/String;
    :cond_152
    if-eqz v7, :cond_39

    goto/16 :goto_36
.end method

.method private static getNumTracksInPlayList(J)I
    .registers 9
    .parameter "playListId"

    .prologue
    .line 2429
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2430
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2434
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_9
    const-string v1, "external"

    invoke-static {v1, p0, p1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "is_music != 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2436
    if-eqz v6, :cond_24

    .line 2438
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    move-result v1

    .line 2447
    if-eqz v6, :cond_23

    .line 2449
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2442
    :cond_23
    return v1

    :cond_24
    const/4 v1, 0x0

    .line 2447
    if-eqz v6, :cond_23

    goto :goto_20

    :catchall_28
    move-exception v1

    if-eqz v6, :cond_2e

    .line 2449
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2447
    :cond_2e
    throw v1
.end method

.method private static getPhotoBySearchQuery(Lcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/Photo;
    .registers 15
    .parameter "sqf"

    .prologue
    .line 1255
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "getPhotoBySearchQuery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    new-instance v10, Lcom/samsung/swift/service/content/Photo;

    invoke-direct {v10}, Lcom/samsung/swift/service/content/Photo;-><init>()V

    .line 1259
    .local v10, photo:Lcom/samsung/swift/service/content/Photo;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1260
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1265
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_15
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v13, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1266
    .local v13, whereClause:Ljava/lang/StringBuffer;
    new-instance v12, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v12, v1}, Ljava/util/Vector;-><init>(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_f8

    .line 1268
    .local v12, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p0, :cond_2c

    .line 1333
    if-eqz v6, :cond_2a

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2a
    move-object v11, v10

    .line 1328
    .end local v10           #photo:Lcom/samsung/swift/service/content/Photo;
    .local v11, photo:Ljava/lang/Object;
    :goto_2b
    return-object v11

    .line 1274
    .end local v11           #photo:Ljava/lang/Object;
    .restart local v10       #photo:Lcom/samsung/swift/service/content/Photo;
    :cond_2c
    :try_start_2c
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_cd

    .line 1276
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v7

    .line 1277
    .local v7, id:[Ljava/lang/String;
    const-string v1, "_data = ? "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1278
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v12, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1288
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projPhoto:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1290
    if-eqz v6, :cond_f0

    .line 1292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_dd

    .line 1294
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1299
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1300
    .local v9, newWhereClause:Ljava/lang/StringBuffer;
    new-instance v8, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v8, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1301
    .local v8, newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v1, "_data = ? "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1302
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1305
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projPhoto:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1307
    if-eqz v6, :cond_d5

    .line 1309
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c2
    .catchall {:try_start_2c .. :try_end_c2} :catchall_f8

    move-result v1

    if-nez v1, :cond_dd

    .line 1333
    if-eqz v6, :cond_ca

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ca
    move-object v11, v10

    .line 1311
    .restart local v11       #photo:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1333
    .end local v7           #id:[Ljava/lang/String;
    .end local v8           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v11           #photo:Ljava/lang/Object;
    :cond_cd
    if-eqz v6, :cond_d2

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d2
    move-object v11, v10

    .line 1283
    .restart local v11       #photo:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1333
    .end local v11           #photo:Ljava/lang/Object;
    .restart local v7       #id:[Ljava/lang/String;
    .restart local v8       #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9       #newWhereClause:Ljava/lang/StringBuffer;
    :cond_d5
    if-eqz v6, :cond_da

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_da
    move-object v11, v10

    .line 1316
    .restart local v11       #photo:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1320
    .end local v8           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v11           #photo:Ljava/lang/Object;
    :cond_dd
    :try_start_dd
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "getPhotoBySearchQuery - Record found. Building Photo record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    invoke-static {v6}, Lcom/samsung/swift/service/content/ContentPlugin;->buildPhoto(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Photo;
    :try_end_e7
    .catchall {:try_start_dd .. :try_end_e7} :catchall_f8

    move-result-object v10

    .line 1333
    if-eqz v6, :cond_ed

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ed
    move-object v11, v10

    .line 1324
    .restart local v11       #photo:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1333
    .end local v11           #photo:Ljava/lang/Object;
    :cond_f0
    if-eqz v6, :cond_f5

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f5
    move-object v11, v10

    .line 1328
    .restart local v11       #photo:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1333
    .end local v7           #id:[Ljava/lang/String;
    .end local v11           #photo:Ljava/lang/Object;
    .end local v12           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v13           #whereClause:Ljava/lang/StringBuffer;
    :catchall_f8
    move-exception v1

    if-eqz v6, :cond_fe

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1333
    :cond_fe
    throw v1
.end method

.method private static getPhotoList(III)Lcom/samsung/swift/service/content/PhotoList;
    .registers 15
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 998
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhotoList: startIndex - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v11, Lcom/samsung/swift/service/content/PhotoList;

    invoke-direct {v11}, Lcom/samsung/swift/service/content/PhotoList;-><init>()V

    .line 1002
    .local v11, photoList:Lcom/samsung/swift/service/content/PhotoList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1003
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1007
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_31
    invoke-static {p2, v1}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoClause(IZ)Ljava/lang/String;

    move-result-object v5

    .line 1009
    .local v5, sortClause:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1011
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projPhoto:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1013
    if-eqz v7, :cond_c5

    .line 1015
    invoke-interface {v7, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1017
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_c8

    .line 1054
    if-eqz v7, :cond_57

    .line 1056
    :goto_54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1050
    :cond_57
    return-object v11

    .line 1021
    :cond_58
    :try_start_58
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Records found. Building Photo list - Num Items found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v8, 0x0

    .line 1026
    .local v8, listSize:I
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v6, albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v9, v8

    .line 1028
    .end local v8           #listSize:I
    .local v9, listSize:I
    :goto_7f
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1030
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting photo for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    add-int/lit8 v8, v9, 0x1

    .end local v9           #listSize:I
    .restart local v8       #listSize:I
    if-lt v9, p1, :cond_ab

    .line 1034
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1054
    if-eqz v7, :cond_57

    goto :goto_54

    .line 1038
    :cond_ab
    invoke-static {v7}, Lcom/samsung/swift/service/content/ContentPlugin;->buildPhoto(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Photo;

    move-result-object v10

    .line 1040
    .local v10, photo:Lcom/samsung/swift/service/content/Photo;
    invoke-virtual {v11, v10}, Lcom/samsung/swift/service/content/PhotoList;->add(Lcom/samsung/swift/service/content/Photo;)V

    .line 1042
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v9, v8

    .line 1043
    .end local v8           #listSize:I
    .restart local v9       #listSize:I
    goto :goto_7f

    .line 1045
    .end local v10           #photo:Lcom/samsung/swift/service/content/Photo;
    :cond_b7
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1047
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Returning listing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_58 .. :try_end_c5} :catchall_c8

    .line 1054
    .end local v6           #albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #listSize:I
    :cond_c5
    if-eqz v7, :cond_57

    goto :goto_54

    .end local v5           #sortClause:Ljava/lang/String;
    :catchall_c8
    move-exception v1

    if-eqz v7, :cond_ce

    .line 1056
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1054
    :cond_ce
    throw v1
.end method

.method private static getPhotoListBySearch(IIILcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/PhotoList;
    .registers 23
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"
    .parameter "sqf"

    .prologue
    .line 1562
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhotoList: startIndex - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxItems - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v16, Lcom/samsung/swift/service/content/PhotoList;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/swift/service/content/PhotoList;-><init>()V

    .line 1566
    .local v16, photoList:Lcom/samsung/swift/service/content/PhotoList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1567
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1569
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1571
    .local v8, dateQuery:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1576
    :try_start_3b
    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1577
    .local v18, whereClause:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Vector;

    const/16 v2, 0x1e

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_101

    .line 1579
    .local v17, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p3, :cond_55

    .line 1693
    if-eqz v7, :cond_54

    .line 1695
    :goto_51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1689
    :cond_54
    return-object v16

    .line 1588
    :cond_55
    :try_start_55
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateTaken:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_d1

    .line 1590
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateTaken:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1593
    .local v10, id:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v13, v2, v4

    .line 1595
    .local v13, longStartDate:J
    const-string v2, "datetaken BETWEEN ? AND ?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1596
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1597
    const/4 v2, 0x0

    aget-object v2, v10, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1650
    .end local v13           #longStartDate:J
    :cond_94
    :goto_94
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoClause(IZ)Ljava/lang/String;

    move-result-object v6

    .line 1652
    .local v6, sortClause:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1654
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->PHOTO_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projPhoto:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1656
    if-eqz v7, :cond_27c

    .line 1658
    move/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_20f

    .line 1660
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    if-eqz v7, :cond_54

    goto :goto_51

    .line 1599
    .end local v6           #sortClause:Ljava/lang/String;
    .end local v10           #id:[Ljava/lang/String;
    :cond_d1
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateAdded:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_108

    .line 1601
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateAdded:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1602
    .restart local v10       #id:[Ljava/lang/String;
    const-string v2, "date_added BETWEEN ? AND ?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1603
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1604
    const/4 v2, 0x0

    aget-object v2, v10, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_100
    .catchall {:try_start_55 .. :try_end_100} :catchall_101

    goto :goto_94

    .line 1693
    .end local v10           #id:[Ljava/lang/String;
    .end local v17           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v18           #whereClause:Ljava/lang/StringBuffer;
    :catchall_101
    move-exception v2

    if-eqz v7, :cond_107

    .line 1695
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1693
    :cond_107
    throw v2

    .line 1606
    .restart local v17       #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v18       #whereClause:Ljava/lang/StringBuffer;
    :cond_108
    :try_start_108
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateModified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_139

    .line 1608
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateModified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1609
    .restart local v10       #id:[Ljava/lang/String;
    const-string v2, "date_modified BETWEEN ? AND ?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1610
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1611
    const/4 v2, 0x0

    aget-object v2, v10, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_94

    .line 1613
    .end local v10           #id:[Ljava/lang/String;
    :cond_139
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->title:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_15d

    .line 1615
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->title:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1616
    .restart local v10       #id:[Ljava/lang/String;
    const-string v2, "title = ? "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1617
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_94

    .line 1619
    .end local v10           #id:[Ljava/lang/String;
    :cond_15d
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fileName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_181

    .line 1621
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fileName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1622
    .restart local v10       #id:[Ljava/lang/String;
    const-string v2, "_display_name = ? "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1623
    const/4 v2, 0x0

    aget-object v2, v10, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_94

    .line 1625
    .end local v10           #id:[Ljava/lang/String;
    :cond_181
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_280

    .line 1627
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1629
    .restart local v10       #id:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_195
    array-length v2, v10

    if-ge v9, v2, :cond_94

    .line 1631
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1a5

    .line 1632
    const-string v2, " OR "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1634
    :cond_1a5
    const-string v2, "_data LIKE ? OR _display_name LIKE ? OR title LIKE ?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v10, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v10, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v10, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1629
    add-int/lit8 v9, v9, 0x1

    goto :goto_195

    .line 1664
    .end local v9           #i:I
    .restart local v6       #sortClause:Ljava/lang/String;
    :cond_20f
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Records found. Building Photo list - Num Items found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const/4 v11, 0x0

    .local v11, listSize:I
    move v12, v11

    .line 1667
    .end local v11           #listSize:I
    .local v12, listSize:I
    :goto_22d
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_26c

    .line 1669
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting photo for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    add-int/lit8 v11, v12, 0x1

    .end local v12           #listSize:I
    .restart local v11       #listSize:I
    move/from16 v0, p1

    if-lt v12, v0, :cond_25e

    .line 1673
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1693
    if-eqz v7, :cond_54

    goto/16 :goto_51

    .line 1677
    :cond_25e
    invoke-static {v7}, Lcom/samsung/swift/service/content/ContentPlugin;->buildPhoto(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Photo;

    move-result-object v15

    .line 1679
    .local v15, photo:Lcom/samsung/swift/service/content/Photo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/samsung/swift/service/content/PhotoList;->add(Lcom/samsung/swift/service/content/Photo;)V

    .line 1681
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v12, v11

    .line 1682
    .end local v11           #listSize:I
    .restart local v12       #listSize:I
    goto :goto_22d

    .line 1684
    .end local v15           #photo:Lcom/samsung/swift/service/content/Photo;
    :cond_26c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/PhotoList;->setEstimatedResultSize(I)V

    .line 1686
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "Returning listing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27c
    .catchall {:try_start_108 .. :try_end_27c} :catchall_101

    .line 1693
    .end local v12           #listSize:I
    :cond_27c
    if-eqz v7, :cond_54

    goto/16 :goto_51

    .end local v6           #sortClause:Ljava/lang/String;
    .end local v10           #id:[Ljava/lang/String;
    :cond_280
    if-eqz v7, :cond_54

    goto/16 :goto_51
.end method

.method private static getPlaylist(Ljava/lang/String;)Lcom/samsung/swift/service/content/Playlist;
    .registers 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .line 737
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 739
    .local v8, playlist_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 740
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 742
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_11

    .line 768
    :cond_10
    :goto_10
    return-object v7

    .line 750
    :cond_11
    :try_start_11
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projPlaylist:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 752
    if-eqz v6, :cond_4e

    .line 754
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_39

    .line 756
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_47

    .line 773
    if-eqz v6, :cond_10

    .line 775
    :goto_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 760
    :cond_39
    :try_start_39
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Record found. Building getPlaylist record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-static {v6}, Lcom/samsung/swift/service/content/ContentPlugin;->buildPlaylist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Playlist;
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_47

    move-result-object v7

    .line 773
    .local v7, playlist:Lcom/samsung/swift/service/content/Playlist;
    if-eqz v6, :cond_10

    goto :goto_35

    .end local v7           #playlist:Lcom/samsung/swift/service/content/Playlist;
    :catchall_47
    move-exception v1

    if-eqz v6, :cond_4d

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 773
    :cond_4d
    throw v1

    :cond_4e
    if-eqz v6, :cond_10

    goto :goto_35
.end method

.method private static getPlaylistList(III)Lcom/samsung/swift/service/content/PlaylistList;
    .registers 14
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 784
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaylistList: startIndex - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v10, Lcom/samsung/swift/service/content/PlaylistList;

    invoke-direct {v10}, Lcom/samsung/swift/service/content/PlaylistList;-><init>()V

    .line 788
    .local v10, playlistList:Lcom/samsung/swift/service/content/PlaylistList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 793
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_30
    invoke-static {p2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPlaylistClause(I)Ljava/lang/String;

    move-result-object v5

    .line 795
    .local v5, sortClause:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/samsung/swift/service/content/PlaylistList;->setEstimatedResultSize(I)V

    .line 797
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->PLAYLIST_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projPlaylist:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 799
    if-eqz v6, :cond_c2

    .line 801
    invoke-interface {v6, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/samsung/swift/service/content/PlaylistList;->setEstimatedResultSize(I)V

    .line 804
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_30 .. :try_end_58} :catchall_c5

    .line 837
    if-eqz v6, :cond_5d

    .line 839
    :goto_5a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 833
    :cond_5d
    return-object v10

    .line 808
    :cond_5e
    :try_start_5e
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Records found. Building Playlist list - Num Items found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v7, 0x0

    .local v7, listSize:I
    move v8, v7

    .line 811
    .end local v7           #listSize:I
    .local v8, listSize:I
    :goto_7c
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 813
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting playlist for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    add-int/lit8 v7, v8, 0x1

    .end local v8           #listSize:I
    .restart local v7       #listSize:I
    if-lt v8, p1, :cond_a8

    .line 817
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/samsung/swift/service/content/PlaylistList;->setEstimatedResultSize(I)V

    .line 837
    if-eqz v6, :cond_5d

    goto :goto_5a

    .line 821
    :cond_a8
    invoke-static {v6}, Lcom/samsung/swift/service/content/ContentPlugin;->buildPlaylist(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Playlist;

    move-result-object v9

    .line 823
    .local v9, playlist:Lcom/samsung/swift/service/content/Playlist;
    invoke-virtual {v10, v9}, Lcom/samsung/swift/service/content/PlaylistList;->add(Lcom/samsung/swift/service/content/Playlist;)V

    .line 825
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v8, v7

    .line 826
    .end local v7           #listSize:I
    .restart local v8       #listSize:I
    goto :goto_7c

    .line 828
    .end local v9           #playlist:Lcom/samsung/swift/service/content/Playlist;
    :cond_b4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/samsung/swift/service/content/PlaylistList;->setEstimatedResultSize(I)V

    .line 830
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Returning listing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_5e .. :try_end_c2} :catchall_c5

    .line 837
    .end local v8           #listSize:I
    :cond_c2
    if-eqz v6, :cond_5d

    goto :goto_5a

    .end local v5           #sortClause:Ljava/lang/String;
    :catchall_c5
    move-exception v1

    if-eqz v6, :cond_cb

    .line 839
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_cb
    throw v1
.end method

.method private static getSDKVersion()I
    .registers 1

    .prologue
    .line 3354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static getSong(Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 578
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->covertToLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 580
    .local v11, song_id:Ljava/lang/Long;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 581
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 583
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_11

    .line 617
    :cond_10
    :goto_10
    return-object v9

    .line 591
    :cond_11
    :try_start_11
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 593
    if-eqz v8, :cond_60

    .line 595
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_39

    .line 597
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_59

    .line 622
    if-eqz v8, :cond_10

    .line 624
    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 601
    :cond_39
    :try_start_39
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "getSong - Record found. Building Song record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v1, "album_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, albumId:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/swift/service/content/ContentPlugin;->getAlbumArtForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, albumArt:Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->getGenreForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, songGenre:Ljava/lang/String;
    invoke-static {v8, v6, v10}, Lcom/samsung/swift/service/content/ContentPlugin;->buildSong(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;
    :try_end_55
    .catchall {:try_start_39 .. :try_end_55} :catchall_59

    move-result-object v9

    .line 622
    .local v9, song:Lcom/samsung/swift/service/content/Song;
    if-eqz v8, :cond_10

    goto :goto_35

    .end local v6           #albumArt:Ljava/lang/String;
    .end local v7           #albumId:Ljava/lang/String;
    .end local v9           #song:Lcom/samsung/swift/service/content/Song;
    .end local v10           #songGenre:Ljava/lang/String;
    :catchall_59
    move-exception v1

    if-eqz v8, :cond_5f

    .line 624
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_5f
    throw v1

    :cond_60
    if-eqz v8, :cond_10

    goto :goto_35
.end method

.method private static getSongBySearchQuery(Lcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/Song;
    .registers 20
    .parameter "sqf"

    .prologue
    .line 1161
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "getSongBySearchQuery"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v14, Lcom/samsung/swift/service/content/Song;

    invoke-direct {v14}, Lcom/samsung/swift/service/content/Song;-><init>()V

    .line 1165
    .local v14, song:Lcom/samsung/swift/service/content/Song;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1166
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 1171
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_15
    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1172
    .local v18, whereClause:Ljava/lang/StringBuffer;
    new-instance v13, Ljava/util/Vector;

    const/16 v2, 0x1e

    invoke-direct {v13, v2}, Ljava/util/Vector;-><init>(I)V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_11e

    .line 1174
    .local v13, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p0, :cond_2e

    .line 1244
    if-eqz v9, :cond_2c

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2c
    move-object v15, v14

    .line 1239
    .end local v14           #song:Lcom/samsung/swift/service/content/Song;
    .local v15, song:Ljava/lang/Object;
    :goto_2d
    return-object v15

    .line 1180
    .end local v15           #song:Ljava/lang/Object;
    .restart local v14       #song:Lcom/samsung/swift/service/content/Song;
    :cond_2e
    :try_start_2e
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_d5

    .line 1182
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 1183
    .local v10, id:[Ljava/lang/String;
    const-string v2, "_data = ? "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1184
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1194
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1196
    if-eqz v9, :cond_116

    .line 1198
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 1200
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 1205
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    invoke-direct {v12, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1206
    .local v12, newWhereClause:Ljava/lang/StringBuffer;
    new-instance v11, Ljava/util/Vector;

    const/16 v2, 0x1e

    invoke-direct {v11, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1207
    .local v11, newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v2, "_data = ? "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1211
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1213
    if-eqz v9, :cond_dd

    .line 1215
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_ca
    .catchall {:try_start_2e .. :try_end_ca} :catchall_11e

    move-result v2

    if-nez v2, :cond_e5

    .line 1244
    if-eqz v9, :cond_d2

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d2
    move-object v15, v14

    .line 1217
    .restart local v15       #song:Ljava/lang/Object;
    goto/16 :goto_2d

    .line 1244
    .end local v10           #id:[Ljava/lang/String;
    .end local v11           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v12           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v15           #song:Ljava/lang/Object;
    :cond_d5
    if-eqz v9, :cond_da

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_da
    move-object v15, v14

    .line 1189
    .restart local v15       #song:Ljava/lang/Object;
    goto/16 :goto_2d

    .line 1244
    .end local v15           #song:Ljava/lang/Object;
    .restart local v10       #id:[Ljava/lang/String;
    .restart local v11       #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v12       #newWhereClause:Ljava/lang/StringBuffer;
    :cond_dd
    if-eqz v9, :cond_e2

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_e2
    move-object v15, v14

    .line 1222
    .restart local v15       #song:Ljava/lang/Object;
    goto/16 :goto_2d

    .line 1226
    .end local v11           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v12           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v15           #song:Ljava/lang/Object;
    :cond_e5
    :try_start_e5
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "getSongBySearchQuery - Record found. Building Song record"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const-string v2, "album_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1229
    .local v8, albumId:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->getAlbumArtForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1230
    .local v7, albumArt:Ljava/lang/String;
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1231
    .local v17, songId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/swift/service/content/ContentPlugin;->getGenreForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1233
    .local v16, songGenre:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v9, v7, v0}, Lcom/samsung/swift/service/content/ContentPlugin;->buildSong(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;
    :try_end_10d
    .catchall {:try_start_e5 .. :try_end_10d} :catchall_11e

    move-result-object v14

    .line 1244
    if-eqz v9, :cond_113

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_113
    move-object v15, v14

    .line 1235
    .restart local v15       #song:Ljava/lang/Object;
    goto/16 :goto_2d

    .line 1244
    .end local v7           #albumArt:Ljava/lang/String;
    .end local v8           #albumId:Ljava/lang/String;
    .end local v15           #song:Ljava/lang/Object;
    .end local v16           #songGenre:Ljava/lang/String;
    .end local v17           #songId:Ljava/lang/String;
    :cond_116
    if-eqz v9, :cond_11b

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_11b
    move-object v15, v14

    .line 1239
    .restart local v15       #song:Ljava/lang/Object;
    goto/16 :goto_2d

    .line 1244
    .end local v10           #id:[Ljava/lang/String;
    .end local v13           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v15           #song:Ljava/lang/Object;
    .end local v18           #whereClause:Ljava/lang/StringBuffer;
    :catchall_11e
    move-exception v2

    if-eqz v9, :cond_124

    .line 1246
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1244
    :cond_124
    throw v2
.end method

.method private static getSongList(III)Lcom/samsung/swift/service/content/SongList;
    .registers 21
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 633
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSongList: startIndex - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxItems - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v17, Lcom/samsung/swift/service/content/SongList;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/swift/service/content/SongList;-><init>()V

    .line 638
    .local v17, songList:Lcom/samsung/swift/service/content/SongList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 639
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 643
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_34
    invoke-static/range {p2 .. p2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortSongClause(I)Ljava/lang/String;

    move-result-object v6

    .line 645
    .local v6, sortClause:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 647
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 648
    .local v10, androidVersion:I
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "androidVersion - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->hasIsSoundColumn()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 653
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    const-string v4, "is_sound = 0"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 660
    :goto_69
    if-eqz v11, :cond_134

    .line 662
    move/from16 v0, p0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_94

    .line 664
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 665
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_34 .. :try_end_83} :catchall_138

    .line 723
    if-eqz v11, :cond_88

    .line 725
    :goto_85
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 719
    :cond_88
    return-object v17

    .line 657
    :cond_89
    :try_start_89
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_69

    .line 669
    :cond_94
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Records found. Building Song list - Num Items found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v13, 0x0

    .line 674
    .local v13, listSize:I
    new-instance v9, Ljava/util/HashMap;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/HashMap;-><init>(I)V

    .local v9, albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v14, v13

    .line 676
    .end local v13           #listSize:I
    .local v14, listSize:I
    :goto_bb
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_124

    .line 678
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting song for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    add-int/lit8 v13, v14, 0x1

    .end local v14           #listSize:I
    .restart local v13       #listSize:I
    move/from16 v0, p1

    if-lt v14, v0, :cond_eb

    .line 682
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 723
    if-eqz v11, :cond_88

    goto :goto_85

    .line 686
    :cond_eb
    const-string v2, "album_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 687
    .local v8, albumId:Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 689
    .local v7, albumArt:Ljava/lang/String;
    if-nez v7, :cond_106

    .line 691
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->getAlbumArtForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 693
    if-eqz v7, :cond_106

    .line 696
    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_106
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 701
    .local v12, id:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/swift/service/content/ContentPlugin;->getGenreForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 707
    .local v16, songGenre:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v11, v7, v0}, Lcom/samsung/swift/service/content/ContentPlugin;->buildSong(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;

    move-result-object v15

    .line 709
    .local v15, song:Lcom/samsung/swift/service/content/Song;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/samsung/swift/service/content/SongList;->add(Lcom/samsung/swift/service/content/Song;)V

    .line 711
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move v14, v13

    .line 712
    .end local v13           #listSize:I
    .restart local v14       #listSize:I
    goto :goto_bb

    .line 714
    .end local v7           #albumArt:Ljava/lang/String;
    .end local v8           #albumId:Ljava/lang/String;
    .end local v12           #id:Ljava/lang/String;
    .end local v15           #song:Lcom/samsung/swift/service/content/Song;
    .end local v16           #songGenre:Ljava/lang/String;
    :cond_124
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 716
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "Returning listing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_89 .. :try_end_134} :catchall_138

    .line 723
    .end local v9           #albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #listSize:I
    :cond_134
    if-eqz v11, :cond_88

    goto/16 :goto_85

    .end local v6           #sortClause:Ljava/lang/String;
    .end local v10           #androidVersion:I
    :catchall_138
    move-exception v2

    if-eqz v11, :cond_13e

    .line 725
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_13e
    throw v2
.end method

.method private static getSongListBySearch(IIILcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/SongList;
    .registers 27
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"
    .parameter "sqf"

    .prologue
    .line 848
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSongList: startIndex - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxItems - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v21, Lcom/samsung/swift/service/content/SongList;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/swift/service/content/SongList;-><init>()V

    .line 852
    .local v21, songList:Lcom/samsung/swift/service/content/SongList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 853
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 855
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 860
    :try_start_3a
    new-instance v22, Ljava/lang/StringBuffer;

    const/16 v3, 0x1e

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 861
    .local v22, whereClause:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/util/Vector;

    const/16 v3, 0x1e

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_fc

    .line 863
    .local v17, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p3, :cond_54

    .line 985
    if-eqz v12, :cond_53

    .line 987
    :goto_50
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 981
    :cond_53
    return-object v21

    .line 872
    :cond_54
    :try_start_54
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->albumId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_d8

    .line 874
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->albumId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v14

    .line 875
    .local v14, id:[Ljava/lang/String;
    const-string v3, "album_id = ? "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    const/4 v3, 0x0

    aget-object v3, v14, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_76
    :goto_76
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 914
    .local v11, androidVersion:I
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "androidVersion - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->hasIsSoundColumn()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 919
    const-string v3, " AND is_sound = 0 "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 923
    :cond_9d
    invoke-static/range {p2 .. p2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortSongClause(I)Ljava/lang/String;

    move-result-object v7

    .line 925
    .local v7, sortClause:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 927
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/swift/service/content/ContentPlugin;->projMedia:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 929
    if-eqz v12, :cond_1fa

    .line 931
    move/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_151

    .line 933
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-eqz v12, :cond_53

    goto/16 :goto_50

    .line 878
    .end local v7           #sortClause:Ljava/lang/String;
    .end local v11           #androidVersion:I
    .end local v14           #id:[Ljava/lang/String;
    :cond_d8
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->artistId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_103

    .line 880
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->artistId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v14

    .line 881
    .restart local v14       #id:[Ljava/lang/String;
    const-string v3, "artist_id = ? "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    const/4 v3, 0x0

    aget-object v3, v14, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catchall {:try_start_54 .. :try_end_fa} :catchall_fc

    goto/16 :goto_76

    .line 985
    .end local v14           #id:[Ljava/lang/String;
    .end local v17           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v22           #whereClause:Ljava/lang/StringBuffer;
    :catchall_fc
    move-exception v3

    if-eqz v12, :cond_102

    .line 987
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_102
    throw v3

    .line 884
    .restart local v17       #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v22       #whereClause:Ljava/lang/StringBuffer;
    :cond_103
    :try_start_103
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_1fe

    .line 886
    sget v3, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v14

    .line 888
    .restart local v14       #id:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_117
    array-length v3, v14

    if-ge v13, v3, :cond_76

    .line 890
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_127

    .line 891
    const-string v3, " OR "

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 896
    :cond_127
    const-string v3, "album||artist||title LIKE ?"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v14, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 888
    add-int/lit8 v13, v13, 0x1

    goto :goto_117

    .line 937
    .end local v13           #i:I
    .restart local v7       #sortClause:Ljava/lang/String;
    .restart local v11       #androidVersion:I
    :cond_151
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Records found. Building Song list - Num Items found - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/4 v15, 0x0

    .line 940
    .local v15, listSize:I
    new-instance v10, Ljava/util/HashMap;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v10, v3}, Ljava/util/HashMap;-><init>(I)V

    .local v10, albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v16, v15

    .line 942
    .end local v15           #listSize:I
    .local v16, listSize:I
    :goto_179
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1ea

    .line 944
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting song for item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    add-int/lit8 v15, v16, 0x1

    .end local v16           #listSize:I
    .restart local v15       #listSize:I
    move/from16 v0, v16

    move/from16 v1, p1

    if-lt v0, v1, :cond_1ae

    .line 948
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 985
    if-eqz v12, :cond_53

    goto/16 :goto_50

    .line 952
    :cond_1ae
    const-string v3, "album_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 953
    .local v9, albumId:Ljava/lang/String;
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 955
    .local v8, albumArt:Ljava/lang/String;
    if-nez v8, :cond_1c9

    .line 957
    invoke-static {v9}, Lcom/samsung/swift/service/content/ContentPlugin;->getAlbumArtForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 959
    if-eqz v8, :cond_1c9

    .line 962
    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    :cond_1c9
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 967
    .local v20, songId:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/samsung/swift/service/content/ContentPlugin;->getGenreForId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 969
    .local v19, songGenre:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v12, v8, v0}, Lcom/samsung/swift/service/content/ContentPlugin;->buildSong(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/swift/service/content/Song;

    move-result-object v18

    .line 971
    .local v18, song:Lcom/samsung/swift/service/content/Song;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/content/SongList;->add(Lcom/samsung/swift/service/content/Song;)V

    .line 973
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v16, v15

    .line 974
    .end local v15           #listSize:I
    .restart local v16       #listSize:I
    goto :goto_179

    .line 976
    .end local v8           #albumArt:Ljava/lang/String;
    .end local v9           #albumId:Ljava/lang/String;
    .end local v18           #song:Lcom/samsung/swift/service/content/Song;
    .end local v19           #songGenre:Ljava/lang/String;
    .end local v20           #songId:Ljava/lang/String;
    :cond_1ea
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/swift/service/content/SongList;->setEstimatedResultSize(I)V

    .line 978
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "Returning listing"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catchall {:try_start_103 .. :try_end_1fa} :catchall_fc

    .line 985
    .end local v10           #albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16           #listSize:I
    :cond_1fa
    if-eqz v12, :cond_53

    goto/16 :goto_50

    .end local v7           #sortClause:Ljava/lang/String;
    .end local v11           #androidVersion:I
    .end local v14           #id:[Ljava/lang/String;
    :cond_1fe
    if-eqz v12, :cond_53

    goto/16 :goto_50
.end method

.method private static getUTCDateForItem(J)J
    .registers 10
    .parameter "dateTaken"

    .prologue
    .line 2456
    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, p0, p1}, Ljava/sql/Date;-><init>(J)V

    .line 2457
    .local v4, date:Ljava/sql/Date;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2460
    .local v3, cal:Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 2462
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2463
    .local v2, Year:I
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2464
    .local v1, Month:I
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2466
    .local v0, Day:I
    new-instance v5, Ljava/sql/Date;

    add-int/lit16 v6, v2, -0x76c

    invoke-direct {v5, v6, v1, v0}, Ljava/sql/Date;-><init>(III)V

    .line 2468
    .local v5, newDate:Ljava/sql/Date;
    invoke-virtual {v5}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    return-wide v6
.end method

.method private static getVideoBySearchQuery(Lcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/Video;
    .registers 15
    .parameter "sqf"

    .prologue
    .line 1066
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "getVideoBySearchQuery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v11, Lcom/samsung/swift/service/content/Video;

    invoke-direct {v11}, Lcom/samsung/swift/service/content/Video;-><init>()V

    .line 1070
    .local v11, video:Lcom/samsung/swift/service/content/Video;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1071
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1076
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_15
    new-instance v13, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v13, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1077
    .local v13, whereClause:Ljava/lang/StringBuffer;
    new-instance v10, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v10, v1}, Ljava/util/Vector;-><init>(I)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_e9

    .line 1079
    .local v10, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p0, :cond_2c

    .line 1150
    if-eqz v6, :cond_2a

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2a
    move-object v12, v11

    .line 1145
    .end local v11           #video:Lcom/samsung/swift/service/content/Video;
    .local v12, video:Ljava/lang/Object;
    :goto_2b
    return-object v12

    .line 1085
    .end local v12           #video:Ljava/lang/Object;
    .restart local v11       #video:Lcom/samsung/swift/service/content/Video;
    :cond_2c
    :try_start_2c
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->videoId:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_cd

    .line 1087
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->videoId:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v7

    .line 1088
    .local v7, id:[Ljava/lang/String;
    const-string v1, "_id = ? "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1105
    :goto_46
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projVideo:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1107
    if-eqz v6, :cond_113

    .line 1109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_100

    .line 1111
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1116
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1117
    .local v9, newWhereClause:Ljava/lang/StringBuffer;
    new-instance v8, Ljava/util/Vector;

    const/16 v1, 0x1e

    invoke-direct {v8, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1118
    .local v8, newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v1, "_data = ? "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1119
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1122
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projVideo:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1124
    if-eqz v6, :cond_f8

    .line 1126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_c2
    .catchall {:try_start_2c .. :try_end_c2} :catchall_e9

    move-result v1

    if-nez v1, :cond_100

    .line 1150
    if-eqz v6, :cond_ca

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ca
    move-object v12, v11

    .line 1128
    .restart local v12       #video:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1091
    .end local v7           #id:[Ljava/lang/String;
    .end local v8           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v12           #video:Ljava/lang/Object;
    :cond_cd
    :try_start_cd
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_f0

    .line 1093
    sget v1, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    invoke-virtual {p0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v7

    .line 1094
    .restart local v7       #id:[Ljava/lang/String;
    const-string v1, "_data = ? "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v10, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_e7
    .catchall {:try_start_cd .. :try_end_e7} :catchall_e9

    goto/16 :goto_46

    .line 1150
    .end local v7           #id:[Ljava/lang/String;
    .end local v10           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v13           #whereClause:Ljava/lang/StringBuffer;
    :catchall_e9
    move-exception v1

    if-eqz v6, :cond_ef

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_ef
    throw v1

    .restart local v10       #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v13       #whereClause:Ljava/lang/StringBuffer;
    :cond_f0
    if-eqz v6, :cond_f5

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f5
    move-object v12, v11

    .line 1100
    .restart local v12       #video:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1150
    .end local v12           #video:Ljava/lang/Object;
    .restart local v7       #id:[Ljava/lang/String;
    .restart local v8       #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v9       #newWhereClause:Ljava/lang/StringBuffer;
    :cond_f8
    if-eqz v6, :cond_fd

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_fd
    move-object v12, v11

    .line 1133
    .restart local v12       #video:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1137
    .end local v8           #newSelectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v9           #newWhereClause:Ljava/lang/StringBuffer;
    .end local v12           #video:Ljava/lang/Object;
    :cond_100
    :try_start_100
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "getVideoBySearchQuery - Record found. Building Video record"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-static {v6}, Lcom/samsung/swift/service/content/ContentPlugin;->buildVideo(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Video;
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_e9

    move-result-object v11

    .line 1150
    if-eqz v6, :cond_110

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_110
    move-object v12, v11

    .line 1141
    .restart local v12       #video:Ljava/lang/Object;
    goto/16 :goto_2b

    .line 1150
    .end local v12           #video:Ljava/lang/Object;
    :cond_113
    if-eqz v6, :cond_118

    .line 1152
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_118
    move-object v12, v11

    .line 1145
    .restart local v12       #video:Ljava/lang/Object;
    goto/16 :goto_2b
.end method

.method private static getVideoList(III)Lcom/samsung/swift/service/content/VideoList;
    .registers 15
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"

    .prologue
    .line 1345
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoList: startIndex - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxItems - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    new-instance v11, Lcom/samsung/swift/service/content/VideoList;

    invoke-direct {v11}, Lcom/samsung/swift/service/content/VideoList;-><init>()V

    .line 1349
    .local v11, videoList:Lcom/samsung/swift/service/content/VideoList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1350
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1354
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_31
    invoke-static {p2, v1}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoClause(IZ)Ljava/lang/String;

    move-result-object v5

    .line 1356
    .local v5, sortClause:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1358
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->projVideo:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1360
    if-eqz v7, :cond_c5

    .line 1362
    invoke-interface {v7, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1364
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_31 .. :try_end_52} :catchall_c8

    .line 1401
    if-eqz v7, :cond_57

    .line 1403
    :goto_54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1397
    :cond_57
    return-object v11

    .line 1368
    :cond_58
    :try_start_58
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Records found. Building Video list - Num Items found - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v8, 0x0

    .line 1373
    .local v8, listSize:I
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v6, albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v9, v8

    .line 1375
    .end local v8           #listSize:I
    .local v9, listSize:I
    :goto_7f
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1377
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting photo for item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    add-int/lit8 v8, v9, 0x1

    .end local v9           #listSize:I
    .restart local v8       #listSize:I
    if-lt v9, p1, :cond_ab

    .line 1381
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1401
    if-eqz v7, :cond_57

    goto :goto_54

    .line 1385
    :cond_ab
    invoke-static {v7}, Lcom/samsung/swift/service/content/ContentPlugin;->buildVideo(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Video;

    move-result-object v10

    .line 1387
    .local v10, photo:Lcom/samsung/swift/service/content/Video;
    invoke-virtual {v11, v10}, Lcom/samsung/swift/service/content/VideoList;->add(Lcom/samsung/swift/service/content/Video;)V

    .line 1389
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v9, v8

    .line 1390
    .end local v8           #listSize:I
    .restart local v9       #listSize:I
    goto :goto_7f

    .line 1392
    .end local v10           #photo:Lcom/samsung/swift/service/content/Video;
    :cond_b7
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1394
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Returning listing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_58 .. :try_end_c5} :catchall_c8

    .line 1401
    .end local v6           #albumIdPathMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #listSize:I
    :cond_c5
    if-eqz v7, :cond_57

    goto :goto_54

    .end local v5           #sortClause:Ljava/lang/String;
    :catchall_c8
    move-exception v1

    if-eqz v7, :cond_ce

    .line 1403
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1401
    :cond_ce
    throw v1
.end method

.method private static getVideoListBySearch(IIILcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/content/VideoList;
    .registers 22
    .parameter "startIndex"
    .parameter "maxItems"
    .parameter "sort"
    .parameter "sqf"

    .prologue
    .line 1704
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoList: startIndex - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxItems - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    new-instance v16, Lcom/samsung/swift/service/content/VideoList;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/swift/service/content/VideoList;-><init>()V

    .line 1708
    .local v16, videoList:Lcom/samsung/swift/service/content/VideoList;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1709
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1711
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1716
    :try_start_3a
    new-instance v17, Ljava/lang/StringBuffer;

    const/16 v2, 0x1e

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1717
    .local v17, whereClause:Ljava/lang/StringBuffer;
    new-instance v14, Ljava/util/Vector;

    const/16 v2, 0x1e

    invoke-direct {v14, v2}, Ljava/util/Vector;-><init>(I)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_f4

    .line 1719
    .local v14, selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p3, :cond_52

    .line 1832
    if-eqz v7, :cond_51

    .line 1834
    :goto_4e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_51
    return-object v16

    .line 1728
    :cond_52
    :try_start_52
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateTaken:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_c8

    .line 1730
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateTaken:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1732
    .local v9, id:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v12, v2, v4

    .line 1734
    .local v12, longStartDate:J
    const-string v2, "datetaken BETWEEN ? AND ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1735
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1736
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1789
    .end local v12           #longStartDate:J
    :cond_8d
    :goto_8d
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/samsung/swift/service/content/ContentPlugin;->sortPhotoVideoClause(IZ)Ljava/lang/String;

    move-result-object v6

    .line 1791
    .local v6, sortClause:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1793
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->VIDEO_URI:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->projVideo:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1795
    if-eqz v7, :cond_261

    .line 1797
    move/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1f4

    .line 1799
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "cursor.moveToFirst() failed. No results or error"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    if-eqz v7, :cond_51

    goto :goto_4e

    .line 1738
    .end local v6           #sortClause:Ljava/lang/String;
    .end local v9           #id:[Ljava/lang/String;
    :cond_c8
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateAdded:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_fb

    .line 1740
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateAdded:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1741
    .restart local v9       #id:[Ljava/lang/String;
    const-string v2, "date_added BETWEEN ? AND ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1742
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1743
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_52 .. :try_end_f3} :catchall_f4

    goto :goto_8d

    .line 1832
    .end local v9           #id:[Ljava/lang/String;
    .end local v14           #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v17           #whereClause:Ljava/lang/StringBuffer;
    :catchall_f4
    move-exception v2

    if-eqz v7, :cond_fa

    .line 1834
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1832
    :cond_fa
    throw v2

    .line 1745
    .restart local v14       #selectionArgs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v17       #whereClause:Ljava/lang/StringBuffer;
    :cond_fb
    :try_start_fb
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateModified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_128

    .line 1747
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->dateModified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1748
    .restart local v9       #id:[Ljava/lang/String;
    const-string v2, "date_modified BETWEEN ? AND ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1749
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1750
    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/swift/service/content/ContentPlugin;->getEndDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    .line 1752
    .end local v9           #id:[Ljava/lang/String;
    :cond_128
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->title:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_14a

    .line 1754
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->title:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1755
    .restart local v9       #id:[Ljava/lang/String;
    const-string v2, "title = ? "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1756
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    .line 1758
    .end local v9           #id:[Ljava/lang/String;
    :cond_14a
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fileName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_16c

    .line 1760
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->fileName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1761
    .restart local v9       #id:[Ljava/lang/String;
    const-string v2, "_display_name = ? "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1762
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    .line 1764
    .end local v9           #id:[Ljava/lang/String;
    :cond_16c
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_265

    .line 1766
    sget v2, Lcom/samsung/swift/util/SearchQueryFilter;->Unqualified:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v9

    .line 1768
    .restart local v9       #id:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_180
    array-length v2, v9

    if-ge v8, v2, :cond_8d

    .line 1770
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_190

    .line 1771
    const-string v2, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1773
    :cond_190
    const-string v2, "_data LIKE ? OR _display_name LIKE ? OR title LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v9, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1768
    add-int/lit8 v8, v8, 0x1

    goto :goto_180

    .line 1803
    .end local v8           #i:I
    .restart local v6       #sortClause:Ljava/lang/String;
    :cond_1f4
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Records found. Building Video list - Num Items found - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/4 v10, 0x0

    .local v10, listSize:I
    move v11, v10

    .line 1806
    .end local v10           #listSize:I
    .local v11, listSize:I
    :goto_212
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_251

    .line 1808
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting video for item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    add-int/lit8 v10, v11, 0x1

    .end local v11           #listSize:I
    .restart local v10       #listSize:I
    move/from16 v0, p1

    if-lt v11, v0, :cond_243

    .line 1812
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1832
    if-eqz v7, :cond_51

    goto/16 :goto_4e

    .line 1816
    :cond_243
    invoke-static {v7}, Lcom/samsung/swift/service/content/ContentPlugin;->buildVideo(Landroid/database/Cursor;)Lcom/samsung/swift/service/content/Video;

    move-result-object v15

    .line 1818
    .local v15, video:Lcom/samsung/swift/service/content/Video;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/samsung/swift/service/content/VideoList;->add(Lcom/samsung/swift/service/content/Video;)V

    .line 1820
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move v11, v10

    .line 1821
    .end local v10           #listSize:I
    .restart local v11       #listSize:I
    goto :goto_212

    .line 1823
    .end local v15           #video:Lcom/samsung/swift/service/content/Video;
    :cond_251
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/swift/service/content/VideoList;->setEstimatedResultSize(I)V

    .line 1825
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "Returning listing"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_261
    .catchall {:try_start_fb .. :try_end_261} :catchall_f4

    .line 1832
    .end local v11           #listSize:I
    :cond_261
    if-eqz v7, :cond_51

    goto/16 :goto_4e

    .end local v6           #sortClause:Ljava/lang/String;
    .end local v9           #id:[Ljava/lang/String;
    :cond_265
    if-eqz v7, :cond_51

    goto/16 :goto_4e
.end method

.method private static hasIsSoundColumn()Z
    .registers 9

    .prologue
    .line 3360
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    if-nez v1, :cond_5f

    .line 3362
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    .line 3363
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3364
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 3367
    .local v6, c:Landroid/database/Cursor;
    :try_start_15
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->MEDIA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3368
    if-eqz v6, :cond_69

    .line 3370
    const/4 v8, 0x0

    .local v8, i:I
    :goto_22
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v8, v1, :cond_3c

    .line 3372
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3374
    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_3c} :catch_71

    .line 3389
    .end local v8           #i:I
    :cond_3c
    :goto_3c
    if-eqz v6, :cond_41

    .line 3390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3391
    :cond_41
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsSoundColumn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5c
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    :cond_5f
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3370
    .restart local v8       #i:I
    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 3380
    .end local v8           #i:I
    :cond_69
    :try_start_69
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "hasIsSoundColumn query returned null cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_70} :catch_71

    goto :goto_3c

    .line 3383
    :catch_71
    move-exception v7

    .line 3385
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_72
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsSoundColumn SQLiteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_72 .. :try_end_8e} :catchall_af

    .line 3389
    if-eqz v6, :cond_93

    .line 3390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3391
    :cond_93
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasIsSoundColumn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 3389
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_af
    move-exception v1

    if-eqz v6, :cond_b5

    .line 3390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3391
    :cond_b5
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIsSoundColumn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/swift/service/content/ContentPlugin;->_hasIsSoundColumn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    throw v1
.end method

.method public static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 311
    const-class v1, Lcom/samsung/swift/service/content/ContentPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 313
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->revision:Ljava/lang/String;

    .line 314
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 315
    monitor-exit v1

    return-void

    .line 314
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 311
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isExternalMemoryCardInserted(Ljava/lang/String;)Z
    .registers 3
    .parameter "pathToCheck"

    .prologue
    .line 332
    invoke-static {p0}, Lcom/samsung/swift/Swift;->isMountPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 334
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "isExternalMemoryInserted() - Exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x1

    .line 342
    :goto_e
    return v0

    .line 340
    :cond_f
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "isExternalMemoryInserted() - Not Exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static pluginLoading()V
    .registers 3

    .prologue
    .line 3326
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "Java ContentPlugin loading called..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "libsoundplugin.so"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 3333
    new-instance v1, Lcom/samsung/swift/service/content/AlbumContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/AlbumContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->albumObserver:Lcom/samsung/swift/service/content/AlbumContentObserver;

    .line 3334
    new-instance v1, Lcom/samsung/swift/service/content/ArtistContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/ArtistContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->artistObserver:Lcom/samsung/swift/service/content/ArtistContentObserver;

    .line 3335
    new-instance v1, Lcom/samsung/swift/service/content/SongContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/SongContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->songObserver:Lcom/samsung/swift/service/content/SongContentObserver;

    .line 3336
    new-instance v1, Lcom/samsung/swift/service/content/PlaylistContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/PlaylistContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->playlistObserver:Lcom/samsung/swift/service/content/PlaylistContentObserver;

    .line 3337
    new-instance v1, Lcom/samsung/swift/service/content/PhotoContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/PhotoContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->photoObserver:Lcom/samsung/swift/service/content/PhotoContentObserver;

    .line 3338
    new-instance v1, Lcom/samsung/swift/service/content/VideoContentObserver;

    invoke-direct {v1}, Lcom/samsung/swift/service/content/VideoContentObserver;-><init>()V

    sput-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->videoObserver:Lcom/samsung/swift/service/content/VideoContentObserver;

    .line 3341
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v2, "ContentPlugin Adding Intent Filters..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3344
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3345
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3347
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3349
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->confirmationReceiver:Lcom/samsung/swift/service/content/ContentConfirmationReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3350
    return-void
.end method

.method private static pluginUnloading()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3311
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Java pluginUnloading called; calling garbage collector"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->albumObserver:Lcom/samsung/swift/service/content/AlbumContentObserver;

    .line 3313
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->artistObserver:Lcom/samsung/swift/service/content/ArtistContentObserver;

    .line 3314
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->songObserver:Lcom/samsung/swift/service/content/SongContentObserver;

    .line 3315
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->playlistObserver:Lcom/samsung/swift/service/content/PlaylistContentObserver;

    .line 3316
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->photoObserver:Lcom/samsung/swift/service/content/PhotoContentObserver;

    .line 3317
    sput-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->videoObserver:Lcom/samsung/swift/service/content/VideoContentObserver;

    .line 3319
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 3320
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "Java pluginUnloading: garbage collector call finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void
.end method

.method private static removeAudioFile(Ljava/lang/String;)V
    .registers 15
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2923
    const/4 v8, 0x0

    .line 2924
    .local v8, rowsDeleted:I
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2926
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2930
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_b
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 2931
    .local v2, cols:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2932
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2934
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2940
    if-eqz v6, :cond_15d

    .line 2942
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a3

    .line 2945
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2948
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2949
    .local v12, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2953
    const-string v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2957
    if-eqz v6, :cond_a3

    .line 2959
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAudioFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    .end local v12           #whereMnt:Ljava/lang/StringBuilder;
    :cond_a3
    if-eqz v6, :cond_12d

    .line 2968
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2970
    :goto_a8
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_126

    .line 2972
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2973
    .local v10, songPath:Ljava/lang/String;
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2978
    .local v9, songId:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2979
    .local v13, wheredelete:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 2985
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAudioFile: rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2990
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_122

    .line 2992
    new-instance v1, Lcom/samsung/swift/exception/SwiftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11b
    .catchall {:try_start_b .. :try_end_11b} :catchall_11b

    .line 3028
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #f:Ljava/io/File;
    .end local v9           #songId:Ljava/lang/String;
    .end local v10           #songPath:Ljava/lang/String;
    .end local v11           #where:Ljava/lang/StringBuilder;
    .end local v13           #wheredelete:Ljava/lang/StringBuilder;
    :catchall_11b
    move-exception v1

    if-eqz v6, :cond_121

    .line 3030
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3028
    :cond_121
    throw v1

    .line 2995
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #songId:Ljava/lang/String;
    .restart local v10       #songPath:Ljava/lang/String;
    .restart local v11       #where:Ljava/lang/StringBuilder;
    .restart local v13       #wheredelete:Ljava/lang/StringBuilder;
    :cond_122
    :try_start_122
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_a8

    .line 2998
    .end local v7           #f:Ljava/io/File;
    .end local v9           #songId:Ljava/lang/String;
    .end local v10           #songPath:Ljava/lang/String;
    .end local v13           #wheredelete:Ljava/lang/StringBuilder;
    :cond_126
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "removeAudioFile: Done"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    :cond_12d
    if-nez v8, :cond_153

    .line 3009
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3011
    .restart local v7       #f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_153

    .line 3013
    new-instance v1, Lcom/samsung/swift/exception/SwiftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3022
    .end local v7           #f:Ljava/io/File;
    :cond_153
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "removeAudioFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_15d
    .catchall {:try_start_122 .. :try_end_15d} :catchall_11b

    .line 3028
    :cond_15d
    if-eqz v6, :cond_162

    .line 3030
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3033
    :cond_162
    return-void
.end method

.method private static removeFile(Ljava/lang/String;I)V
    .registers 4
    .parameter "path"
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2620
    if-nez p1, :cond_6

    .line 2622
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->removeAudioFile(Ljava/lang/String;)V

    .line 2636
    :goto_5
    return-void

    .line 2624
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 2626
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->removeImageFile(Ljava/lang/String;)V

    goto :goto_5

    .line 2628
    :cond_d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 2630
    invoke-static {p0}, Lcom/samsung/swift/service/content/ContentPlugin;->removeVideoFile(Ljava/lang/String;)V

    goto :goto_5

    .line 2634
    :cond_14
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "removeFile: No Matching File Request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static removeImageFile(Ljava/lang/String;)V
    .registers 15
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3037
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3039
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 3040
    .local v2, cols:[Ljava/lang/String;
    const-string v9, ""

    .line 3041
    .local v9, filePath:Ljava/lang/String;
    const-string v8, ""

    .line 3042
    .local v8, fileId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3044
    .local v10, rowsDeleted:I
    const/4 v6, 0x0

    .line 3049
    .local v6, c:Landroid/database/Cursor;
    :try_start_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 3050
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3051
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3052
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3058
    if-eqz v6, :cond_a1

    .line 3060
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a1

    .line 3063
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3066
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3067
    .local v13, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3072
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3075
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImageFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    .end local v13           #whereMnt:Ljava/lang/StringBuilder;
    :cond_a1
    if-eqz v6, :cond_109

    .line 3084
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3086
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_109

    .line 3089
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3090
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3096
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 3097
    .local v12, whereDelete:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const-string v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3104
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 3105
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImageFile: Num rows removed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->removeThumbnail(Ljava/lang/String;)V

    .line 3111
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "Exiting DB Delete"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    .end local v12           #whereDelete:Ljava/lang/StringBuilder;
    :cond_109
    if-nez v10, :cond_136

    .line 3122
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3124
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_136

    .line 3126
    new-instance v1, Lcom/samsung/swift/exception/SwiftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImageFile : Couldn\'t delete the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12f
    .catchall {:try_start_1b .. :try_end_12f} :catchall_12f

    .line 3135
    .end local v7           #f:Ljava/io/File;
    .end local v11           #where:Ljava/lang/StringBuilder;
    :catchall_12f
    move-exception v1

    if-eqz v6, :cond_135

    .line 3137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3135
    :cond_135
    throw v1

    .line 3130
    .restart local v11       #where:Ljava/lang/StringBuilder;
    :cond_136
    :try_start_136
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "removeVideoFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_140
    .catchall {:try_start_136 .. :try_end_140} :catchall_12f

    .line 3135
    if-eqz v6, :cond_145

    .line 3137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3141
    :cond_145
    return-void
.end method

.method private static removeThumbnail(Ljava/lang/String;)V
    .registers 7
    .parameter "imageId"

    .prologue
    .line 3247
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v4, "removeThumbnail"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3252
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3253
    .local v2, wheredelete:Ljava/lang/StringBuilder;
    const-string v3, "image_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3255
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3259
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 3260
    .local v1, rows:I
    sget-object v3, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeThumbnail: Num rows removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    return-void
.end method

.method private static removeVideoFile(Ljava/lang/String;)V
    .registers 15
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 3145
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3147
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 3148
    .local v2, cols:[Ljava/lang/String;
    const-string v9, ""

    .line 3149
    .local v9, filePath:Ljava/lang/String;
    const-string v8, ""

    .line 3150
    .local v8, fileId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 3152
    .local v10, rowsDeleted:I
    const/4 v6, 0x0

    .line 3156
    .local v6, c:Landroid/database/Cursor;
    :try_start_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 3157
    .local v11, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3165
    if-eqz v6, :cond_140

    .line 3167
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a1

    .line 3170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 3174
    .local v12, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3175
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    const-string v1, "\""

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3178
    const-string v1, ")"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3182
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeVideoFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    .end local v12           #whereMnt:Ljava/lang/StringBuilder;
    :cond_a1
    if-eqz v6, :cond_109

    .line 3189
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3191
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_109

    .line 3193
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3194
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3199
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3200
    .local v13, wheredelete:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3201
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 3207
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeVideoFile: rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    invoke-static {v8}, Lcom/samsung/swift/service/content/ContentPlugin;->removeThumbnail(Ljava/lang/String;)V

    .line 3212
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "removeVideoFile: Exiting DB Delete"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    .end local v13           #wheredelete:Ljava/lang/StringBuilder;
    :cond_109
    if-nez v10, :cond_136

    .line 3223
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3225
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_136

    .line 3227
    new-instance v1, Lcom/samsung/swift/exception/SwiftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeImageFile : Couldn\'t delete the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12f
    .catchall {:try_start_1b .. :try_end_12f} :catchall_12f

    .line 3237
    .end local v7           #f:Ljava/io/File;
    .end local v11           #where:Ljava/lang/StringBuilder;
    :catchall_12f
    move-exception v1

    if-eqz v6, :cond_135

    .line 3239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3237
    :cond_135
    throw v1

    .line 3231
    .restart local v11       #where:Ljava/lang/StringBuilder;
    :cond_136
    :try_start_136
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "removeVideoFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_140
    .catchall {:try_start_136 .. :try_end_140} :catchall_12f

    .line 3237
    :cond_140
    if-eqz v6, :cond_145

    .line 3239
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3242
    :cond_145
    return-void
.end method

.method private static renameAudioFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2680
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2682
    .local v0, contentResolver:Landroid/content/ContentResolver;
    move-object v8, p0

    .line 2684
    .local v8, srcPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2688
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_b
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 2689
    .local v2, cols:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2690
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2695
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2698
    if-eqz v6, :cond_10d

    .line 2700
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b6

    .line 2703
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2706
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2707
    .local v11, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2708
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2712
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2717
    if-eqz v6, :cond_b6

    .line 2719
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameAudioFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    .end local v11           #whereMnt:Ljava/lang/StringBuilder;
    :cond_b6
    if-eqz v6, :cond_103

    .line 2728
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2730
    :goto_bb
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 2732
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2734
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2737
    .local v7, rowsRenamed:I
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameAudioFile: rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f4
    .catchall {:try_start_b .. :try_end_f4} :catchall_f5

    goto :goto_bb

    .line 2751
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #rowsRenamed:I
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catchall_f5
    move-exception v1

    if-eqz v6, :cond_fb

    .line 2753
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2751
    :cond_fb
    throw v1

    .line 2742
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_fc
    :try_start_fc
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameAudioFile: Done"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :cond_103
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameAudioFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_10d
    .catchall {:try_start_fc .. :try_end_10d} :catchall_f5

    .line 2751
    :cond_10d
    if-eqz v6, :cond_112

    .line 2753
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2756
    :cond_112
    return-void
.end method

.method private static renameFile(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter "src"
    .parameter "dest"
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2646
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2647
    .local v1, fS:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2649
    .local v0, fD:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 2651
    new-instance v2, Lcom/samsung/swift/exception/SwiftException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameFile : Couldn\'t rename the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2655
    :cond_29
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameFile: Renamed the file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    if-nez p2, :cond_51

    .line 2661
    invoke-static {p0, p1}, Lcom/samsung/swift/service/content/ContentPlugin;->renameAudioFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    :goto_50
    return-void

    .line 2663
    :cond_51
    const/4 v2, 0x1

    if-ne p2, v2, :cond_58

    .line 2665
    invoke-static {p0, p1}, Lcom/samsung/swift/service/content/ContentPlugin;->renameImageFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 2667
    :cond_58
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5f

    .line 2669
    invoke-static {p0, p1}, Lcom/samsung/swift/service/content/ContentPlugin;->renameVideoFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 2673
    :cond_5f
    sget-object v2, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameFile: No Matching File Request"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private static renameImageFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2842
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2844
    .local v0, contentResolver:Landroid/content/ContentResolver;
    move-object v8, p0

    .line 2846
    .local v8, srcPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2850
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_b
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 2851
    .local v2, cols:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2852
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2860
    if-eqz v6, :cond_10d

    .line 2862
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b6

    .line 2865
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2868
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2869
    .local v11, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2870
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2879
    if-eqz v6, :cond_b6

    .line 2881
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameImageFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    .end local v11           #whereMnt:Ljava/lang/StringBuilder;
    :cond_b6
    if-eqz v6, :cond_103

    .line 2890
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2892
    :goto_bb
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 2894
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2896
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2899
    .local v7, rowsRenamed:I
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameImageFile: rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f4
    .catchall {:try_start_b .. :try_end_f4} :catchall_f5

    goto :goto_bb

    .line 2913
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #rowsRenamed:I
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catchall_f5
    move-exception v1

    if-eqz v6, :cond_fb

    .line 2915
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2913
    :cond_fb
    throw v1

    .line 2904
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_fc
    :try_start_fc
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameImageFile: Done"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :cond_103
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameImageFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_10d
    .catchall {:try_start_fc .. :try_end_10d} :catchall_f5

    .line 2913
    :cond_10d
    if-eqz v6, :cond_112

    .line 2915
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2918
    :cond_112
    return-void
.end method

.method private static renameVideoFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 2761
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2763
    .local v0, contentResolver:Landroid/content/ContentResolver;
    move-object v8, p0

    .line 2765
    .local v8, srcPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2769
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_b
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 2770
    .local v2, cols:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2771
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2772
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2773
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    const-string v1, ")"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2779
    if-eqz v6, :cond_10d

    .line 2781
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b6

    .line 2784
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2787
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2788
    .local v11, whereMnt:Ljava/lang/StringBuilder;
    const-string v1, "_data IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    const-string v1, "\""

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2793
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2798
    if-eqz v6, :cond_b6

    .line 2800
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameVideoFile: mnt - rows -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    .end local v11           #whereMnt:Ljava/lang/StringBuilder;
    :cond_b6
    if-eqz v6, :cond_103

    .line 2809
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2811
    :goto_bb
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 2813
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2815
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2818
    .local v7, rowsRenamed:I
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameVideoFile: rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f4
    .catchall {:try_start_b .. :try_end_f4} :catchall_f5

    goto :goto_bb

    .line 2832
    .end local v2           #cols:[Ljava/lang/String;
    .end local v7           #rowsRenamed:I
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #where:Ljava/lang/StringBuilder;
    :catchall_f5
    move-exception v1

    if-eqz v6, :cond_fb

    .line 2834
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2832
    :cond_fb
    throw v1

    .line 2823
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_fc
    :try_start_fc
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameVideoFile: Done"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_103
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v3, "renameVideoFile: Invalidating Cache"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-static {}, Lcom/samsung/swift/service/content/ContentPlugin;->invalidateCache()V
    :try_end_10d
    .catchall {:try_start_fc .. :try_end_10d} :catchall_f5

    .line 2832
    :cond_10d
    if-eqz v6, :cond_112

    .line 2834
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2837
    :cond_112
    return-void
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    sget-object v1, Lcom/samsung/swift/service/content/ContentPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 323
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static runMediaScanner(Z)V
    .registers 3
    .parameter "synchronous"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3305
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    const-string v1, "runMediaScanner - done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    return-void
.end method

.method private static sortAlbumClause(I)Ljava/lang/String;
    .registers 4
    .parameter "sort"

    .prologue
    .line 2248
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortAlbumClause - sort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1e

    .line 2252
    const-string v0, "album COLLATE NOCASE ASC"

    .line 2268
    :goto_1d
    return-object v0

    .line 2254
    :cond_1e
    const/4 v0, 0x4

    if-ne p0, v0, :cond_24

    .line 2256
    const-string v0, "album COLLATE NOCASE DESC"

    goto :goto_1d

    .line 2258
    :cond_24
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2a

    .line 2260
    const-string v0, "maxyear ASC"

    goto :goto_1d

    .line 2262
    :cond_2a
    const/4 v0, 0x6

    if-ne p0, v0, :cond_30

    .line 2264
    const-string v0, "maxyear DESC"

    goto :goto_1d

    .line 2266
    :cond_30
    if-nez p0, :cond_34

    .line 2268
    const/4 v0, 0x0

    goto :goto_1d

    .line 2271
    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortArtistClause(I)Ljava/lang/String;
    .registers 4
    .parameter "sort"

    .prologue
    .line 2228
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortArtistClause - sort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1e

    .line 2232
    const-string v0, "artist COLLATE NOCASE ASC"

    .line 2240
    :goto_1d
    return-object v0

    .line 2234
    :cond_1e
    const/4 v0, 0x2

    if-ne p0, v0, :cond_24

    .line 2236
    const-string v0, "artist COLLATE NOCASE DESC"

    goto :goto_1d

    .line 2238
    :cond_24
    if-nez p0, :cond_28

    .line 2240
    const/4 v0, 0x0

    goto :goto_1d

    .line 2243
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortPhotoVideoClause(IZ)Ljava/lang/String;
    .registers 5
    .parameter "sort"
    .parameter "bVideo"

    .prologue
    .line 2346
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortPhotoVideoClause - sort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const/16 v0, 0xf

    if-ne p0, v0, :cond_1f

    .line 2350
    const-string v0, "_size COLLATE NOCASE ASC"

    .line 2406
    :goto_1e
    return-object v0

    .line 2352
    :cond_1f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_26

    .line 2354
    const-string v0, "_size COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2356
    :cond_26
    const/16 v0, 0x11

    if-ne p0, v0, :cond_2d

    .line 2358
    const-string v0, "_data COLLATE NOCASE  ASC"

    goto :goto_1e

    .line 2360
    :cond_2d
    const/16 v0, 0x12

    if-ne p0, v0, :cond_34

    .line 2362
    const-string v0, "_data COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2364
    :cond_34
    const/16 v0, 0x13

    if-ne p0, v0, :cond_3b

    .line 2366
    const-string v0, "title COLLATE NOCASE ASC"

    goto :goto_1e

    .line 2368
    :cond_3b
    const/16 v0, 0x14

    if-ne p0, v0, :cond_42

    .line 2370
    const-string v0, "title COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2372
    :cond_42
    const/16 v0, 0x15

    if-ne p0, v0, :cond_49

    .line 2374
    const-string v0, "datetaken COLLATE NOCASE ASC"

    goto :goto_1e

    .line 2376
    :cond_49
    const/16 v0, 0x16

    if-ne p0, v0, :cond_50

    .line 2378
    const-string v0, "datetaken COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2380
    :cond_50
    const/16 v0, 0x17

    if-ne p0, v0, :cond_57

    .line 2382
    const-string v0, "date_added COLLATE NOCASE  ASC"

    goto :goto_1e

    .line 2384
    :cond_57
    const/16 v0, 0x18

    if-ne p0, v0, :cond_5e

    .line 2386
    const-string v0, "date_added COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2388
    :cond_5e
    const/16 v0, 0x19

    if-ne p0, v0, :cond_65

    .line 2390
    const-string v0, "date_modified COLLATE NOCASE ASC"

    goto :goto_1e

    .line 2392
    :cond_65
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_6c

    .line 2394
    const-string v0, "date_modified COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2396
    :cond_6c
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_75

    if-eqz p1, :cond_75

    .line 2398
    const-string v0, "duration COLLATE NOCASE ASC"

    goto :goto_1e

    .line 2400
    :cond_75
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_7e

    if-eqz p1, :cond_7e

    .line 2402
    const-string v0, "duration COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2404
    :cond_7e
    if-nez p0, :cond_82

    .line 2406
    const/4 v0, 0x0

    goto :goto_1e

    .line 2409
    :cond_82
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortPhotoVideoGroupByClause(IZ)Ljava/lang/String;
    .registers 5
    .parameter "groupBy"
    .parameter "bVideo"

    .prologue
    .line 2414
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortPhotoVideoGroupByClause - groupBy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-nez p0, :cond_1d

    .line 2418
    const-string v0, "datetaken COLLATE NOCASE ASC"

    return-object v0

    .line 2422
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortPlaylistClause(I)Ljava/lang/String;
    .registers 4
    .parameter "sort"

    .prologue
    .line 2320
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortPlaylistClause - sort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/16 v0, 0xd

    if-ne p0, v0, :cond_1f

    .line 2325
    const-string v0, "name COLLATE NOCASE ASC"

    .line 2337
    :goto_1e
    return-object v0

    .line 2327
    :cond_1f
    const/16 v0, 0xe

    if-ne p0, v0, :cond_26

    .line 2329
    const-string v0, "name COLLATE NOCASE DESC"

    goto :goto_1e

    .line 2331
    :cond_26
    if-nez p0, :cond_2b

    .line 2333
    const-string v0, "_id"

    goto :goto_1e

    .line 2335
    :cond_2b
    if-nez p0, :cond_2f

    .line 2337
    const/4 v0, 0x0

    goto :goto_1e

    .line 2340
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static sortSongClause(I)Ljava/lang/String;
    .registers 4
    .parameter "sort"

    .prologue
    .line 2276
    sget-object v0, Lcom/samsung/swift/service/content/ContentPlugin;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortSongClause - sort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1e

    .line 2280
    const-string v0, "title COLLATE NOCASE ASC"

    .line 2312
    :goto_1d
    return-object v0

    .line 2282
    :cond_1e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_25

    .line 2284
    const-string v0, "title COLLATE NOCASE DESC"

    goto :goto_1d

    .line 2286
    :cond_25
    const/16 v0, 0x9

    if-ne p0, v0, :cond_2c

    .line 2288
    const-string v0, "artist COLLATE NOCASE  ASC"

    goto :goto_1d

    .line 2290
    :cond_2c
    const/16 v0, 0xa

    if-ne p0, v0, :cond_33

    .line 2292
    const-string v0, "artist COLLATE NOCASE DESC"

    goto :goto_1d

    .line 2294
    :cond_33
    const/16 v0, 0xb

    if-ne p0, v0, :cond_3a

    .line 2296
    const-string v0, "album COLLATE NOCASE ASC"

    goto :goto_1d

    .line 2298
    :cond_3a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_41

    .line 2300
    const-string v0, "album COLLATE NOCASE DESC"

    goto :goto_1d

    .line 2302
    :cond_41
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_48

    .line 2304
    const-string v0, "year COLLATE NOCASE ASC"

    goto :goto_1d

    .line 2306
    :cond_48
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_4f

    .line 2308
    const-string v0, "year DESC"

    goto :goto_1d

    .line 2310
    :cond_4f
    if-nez p0, :cond_53

    .line 2312
    const/4 v0, 0x0

    goto :goto_1d

    .line 2315
    :cond_53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
