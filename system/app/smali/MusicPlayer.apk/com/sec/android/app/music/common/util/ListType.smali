.class public Lcom/sec/android/app/music/common/util/ListType;
.super Ljava/lang/Object;
.source "ListType.java"


# static fields
.field private static final COLS:[[Ljava/lang/String;

.field private static final ListTypeString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    const/16 v0, 0x1f

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "artist"

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album_id"

    aput-object v2, v1, v6

    const-string v2, "title"

    aput-object v2, v1, v7

    const-string v2, "artist"

    aput-object v2, v1, v8

    const-string v2, "_data"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "title_key"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "title_focused_index"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "_data_hashcode"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "_data"

    aput-object v2, v1, v7

    const-string v2, "-1 as album_id"

    aput-object v2, v1, v8

    const-string v2, "thumbnail_uri"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "playlist_focused_index"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "album"

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "_id as album_id"

    aput-object v2, v1, v8

    const-string v2, "album_key"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "album_focused_index"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "artist"

    aput-object v2, v1, v6

    const-string v2, "album_id"

    aput-object v2, v1, v7

    const-string v2, "artist_key"

    aput-object v2, v1, v8

    const-string v2, "artist_focused_index"

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "1 as _id"

    aput-object v3, v2, v5

    const-string v3, "genre_name"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1 as _id"

    aput-object v3, v2, v5

    const-string v3, "bucket_id"

    aput-object v3, v2, v6

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    const-string v3, "bucket_display_name_focused_index"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "composer"

    aput-object v3, v2, v5

    const-string v3, "1 as _id"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    const-string v3, "composer_focused_index"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "year"

    aput-object v3, v2, v5

    const-string v3, "1 as _id"

    aput-object v3, v2, v6

    const-string v3, "count"

    aput-object v3, v2, v7

    const-string v3, "album_id"

    aput-object v3, v2, v8

    const-string v3, "year_name"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "is_favorite"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "most_played"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "title_key"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "date_added"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "track"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "track"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "album_key"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "album"

    aput-object v3, v2, v7

    const-string v3, "album_key"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "album_key"

    aput-object v3, v2, v8

    const-string v3, "_data_hashcode"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "title_key"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data_hashcode"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "_data"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "_data"

    aput-object v3, v2, v7

    const-string v3, "-1 as album_id"

    aput-object v3, v2, v8

    const-string v3, "thumbnail_uri"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "audio_id"

    aput-object v3, v2, v6

    const-string v3, "album_id"

    aput-object v3, v2, v7

    const-string v3, "title"

    aput-object v3, v2, v8

    const-string v3, "artist"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mime_type"

    aput-object v3, v2, v6

    const-string v3, "artist"

    aput-object v3, v2, v7

    const-string v3, "album"

    aput-object v3, v2, v8

    const-string v3, "title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data2"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album_id"

    aput-object v3, v2, v6

    const-string v3, "title"

    aput-object v3, v2, v7

    const-string v3, "artist"

    aput-object v3, v2, v8

    const-string v3, "_data"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/common/util/ListType;->COLS:[[Ljava/lang/String;

    .line 380
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CURRENT_PLAYLIST"

    aput-object v1, v0, v5

    const-string v1, "ALL"

    aput-object v1, v0, v6

    const-string v1, "PLAYLIST"

    aput-object v1, v0, v7

    const-string v1, "ALBUM"

    aput-object v1, v0, v8

    const-string v1, "ARTIST"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "GENRE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "COMPOSER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PODCAST"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FOLDER"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "QUICK_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MOST_PLAYED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "RECENTLY_PLAYED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RECENTLY_ADDED_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PLAYLIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ALBUM_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ARTIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ARTIST_TRACKLIST_ORDER_ALBUM"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ARTIST_ALBUM_LIST"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ARTIST_ALBUM_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "GENRE_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "COMPOSER_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "YEAR_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "PODCAST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "FOLDER_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "CREATELIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SAVELIST_TRACKLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PLAYLIST_EDIT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PLAYLIST_EDIT_TITLE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SEARCH_RESULT"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "MYFILES_TRACKLIST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/common/util/ListType;->ListTypeString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "filepath"

    .prologue
    .line 1575
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1577
    .local v0, parentFile:Ljava/io/File;
    if-nez v0, :cond_12

    .line 1578
    new-instance v0, Ljava/io/File;

    .end local v0           #parentFile:Ljava/io/File;
    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    .restart local v0       #parentFile:Ljava/io/File;
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1583
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/music/common/util/ListType;->getBucketIDfromParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBucketIDfromParentPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "parentPath"

    .prologue
    .line 1587
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, bucketID:Ljava/lang/String;
    return-object v0
.end method

.method public static getOrderByKeywordMyFiles(I)Ljava/lang/String;
    .registers 2
    .parameter "sort_order"

    .prologue
    .line 1027
    const/4 v0, 0x0

    .line 1029
    .local v0, orderBy:Ljava/lang/String;
    packed-switch p0, :pswitch_data_12

    .line 1050
    :goto_4
    return-object v0

    .line 1032
    :pswitch_5
    const-string v0, "date_modified"

    .line 1033
    goto :goto_4

    .line 1036
    :pswitch_8
    const-string v0, "mime_type"

    .line 1037
    goto :goto_4

    .line 1040
    :pswitch_b
    const-string v0, "_display_name"

    .line 1041
    goto :goto_4

    .line 1044
    :pswitch_e
    const-string v0, "_size"

    .line 1045
    goto :goto_4

    .line 1029
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static getOrderByMyFiles(I)Ljava/lang/String;
    .registers 6
    .parameter "sort_order"

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1013
    .local v0, orderBy:Ljava/lang/String;
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/ListType;->getOrderByKeywordMyFiles(I)Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, orderByKeywork:Ljava/lang/String;
    if-nez p0, :cond_1b

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " desc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    :goto_1a
    return-object v0

    .line 1016
    :cond_1b
    const/4 v2, 0x1

    if-gt v2, p0, :cond_35

    const/4 v2, 0x4

    if-ge p0, v2, :cond_35

    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " asc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 1019
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListType.getOrderByMyFiles : invalid sort_order - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getStringRsrcID(I)I
    .registers 2
    .parameter "listType"

    .prologue
    .line 1064
    const/4 v0, -0x1

    .line 1066
    .local v0, resID:I
    packed-switch p0, :pswitch_data_3a

    .line 1110
    :goto_4
    :pswitch_4
    return v0

    .line 1068
    :pswitch_5
    const v0, 0x7f0900a7

    .line 1069
    goto :goto_4

    .line 1071
    :pswitch_9
    const v0, 0x7f09001f

    .line 1072
    goto :goto_4

    .line 1074
    :pswitch_d
    const v0, 0x7f090020

    .line 1075
    goto :goto_4

    .line 1077
    :pswitch_11
    const v0, 0x7f090021

    .line 1078
    goto :goto_4

    .line 1080
    :pswitch_15
    const v0, 0x7f090022

    .line 1081
    goto :goto_4

    .line 1083
    :pswitch_19
    const v0, 0x7f090027

    .line 1084
    goto :goto_4

    .line 1086
    :pswitch_1d
    const v0, 0x7f090023

    .line 1087
    goto :goto_4

    .line 1089
    :pswitch_21
    const v0, 0x7f090024

    .line 1090
    goto :goto_4

    .line 1092
    :pswitch_25
    const v0, 0x7f090026

    .line 1093
    goto :goto_4

    .line 1095
    :pswitch_29
    const v0, 0x7f090028

    .line 1096
    goto :goto_4

    .line 1098
    :pswitch_2d
    const v0, 0x7f090029

    .line 1099
    goto :goto_4

    .line 1101
    :pswitch_31
    const v0, 0x7f09002a

    .line 1102
    goto :goto_4

    .line 1104
    :pswitch_35
    const v0, 0x7f09002b

    .line 1105
    goto :goto_4

    .line 1066
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_4
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method

.method public static getUri(II)Landroid/net/Uri;
    .registers 6
    .parameter "listType"
    .parameter "iFilterID"

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 527
    .local v0, uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_30

    .line 633
    :goto_4
    :pswitch_4
    return-object v0

    .line 529
    :pswitch_5
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 530
    goto :goto_4

    .line 535
    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/music/common/data/SecMusic;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v0

    .line 536
    goto :goto_4

    .line 540
    :pswitch_d
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 541
    goto :goto_4

    .line 545
    :pswitch_10
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 546
    goto :goto_4

    .line 550
    :pswitch_13
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 551
    goto :goto_4

    .line 555
    :pswitch_16
    const-string v1, "external"

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/common/data/SecMusic;->getPlaylistTracklistUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 556
    goto :goto_4

    .line 562
    :pswitch_1e
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 563
    goto :goto_4

    .line 566
    :pswitch_21
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 567
    goto :goto_4

    .line 570
    :pswitch_24
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 571
    goto :goto_4

    .line 578
    :pswitch_27
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic;->FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 579
    goto :goto_4

    .line 583
    :pswitch_2a
    sget-object v0, Lcom/sec/android/app/music/common/data/SecMusic$QuickList;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 584
    goto :goto_4

    .line 599
    :pswitch_2d
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 600
    goto :goto_4

    .line 527
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_4
        :pswitch_4
        :pswitch_2a
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_16
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_1e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_4
        :pswitch_4
        :pswitch_2a
        :pswitch_8
        :pswitch_16
        :pswitch_4
        :pswitch_2d
    .end packed-switch
.end method
