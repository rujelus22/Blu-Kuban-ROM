.class public Lcom/google/android/music/store/MusicContentProvider;
.super Landroid/content/ContentProvider;
.source "MusicContentProvider.java"


# static fields
.field private static final DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

.field private static final FILTERS:[Ljava/lang/String;

.field private static final LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

.field private static final LOGV:Z

.field private static final SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

.field private static final SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

.field private static sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlbumArtistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAlbumsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGenresProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGroupedMusicProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMusicProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlaylistMembersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPlaylistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecentProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchAlbumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchArtistMaps:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchPlaylistMaps:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchTrackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTrackArtistsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 65
    const-string v0, "MusicContentProvider"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    .line 143
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v9

    const-string v1, "LocalCopyType IN (200,300)"

    aput-object v1, v0, v8

    const-string v1, "LocalCopyType IN (100,200,300)"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    .line 202
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 213
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 223
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id)"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    .line 229
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v9

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v8

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v10

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v11

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

    .line 1994
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 1995
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1996
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/selected/*"

    const/16 v3, 0x132

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1998
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/store"

    const/16 v3, 0x133

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2000
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/thumbsup"

    const/16 v3, 0x134

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2002
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2003
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "DownloadQueue"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2004
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "play"

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2006
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/search_suggest_query"

    const/16 v3, 0x44f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2008
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/search_suggest_query/*"

    const/16 v3, 0x44e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2010
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search"

    const/16 v3, 0x44d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2011
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/*"

    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2013
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/recent"

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2016
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/#/audio"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2019
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#/audio"

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2023
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2024
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/artists"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2026
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/store"

    const/16 v3, 0x193

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2028
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2031
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2032
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2034
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#/album"

    const/16 v3, 0x1f6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2037
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2038
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2040
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#/members"

    const/16 v3, 0x25a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2043
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#/members/#"

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2045
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2046
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#/members"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2049
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#/album"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2052
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/album"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2054
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2056
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "albumart/#"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2057
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlistfauxart/#"

    const/16 v3, 0x322

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2059
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artistfauxart/#"

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2061
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "albumorfauxart/#"

    const/16 v3, 0x323

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2063
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "Recent"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2065
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "MediaStore/audio/#"

    const/16 v3, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2068
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "account"

    const/16 v3, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2071
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albumorfauxart"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2075
    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "playlistfauxart"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2079
    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "artistfauxart"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2083
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 2084
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2086
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2087
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2089
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 2090
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2092
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct(SongId))"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2094
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2096
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 2097
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "GenreId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "Genre"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalGenre"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2100
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2101
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "AlbumArtist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "count(distinct MUSIC.SongId)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct GenreId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2106
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v9, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 2109
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalAlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "isTrackOnly"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct AlbumArtistId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2116
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2118
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    .line 2119
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "ArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "Artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "isTrackOnly"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct ArtistId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2126
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v9, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2127
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 2130
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "MUSIC.AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2133
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalAlbum"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2134
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_art"

    const-string v5, "\'\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalAlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "count(distinct MUSIC.SongId)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct MUSIC.AlbumId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2141
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2143
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    .line 2144
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "c_album_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "c_album_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "c_album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalAlbum"

    const-string v5, "c_canonicalAlbum"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_art"

    const-string v5, "\'\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "c_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "c_canonicalArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist_id"

    const-string v5, "c_artistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "c_songCount"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "KEEPON.KeepOnId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType IN (200,300) LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 2167
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "LISTS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "LISTS.Name"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "playlist_id"

    const-string v5, "Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2173
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "KEEPON.KeepOnId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType IN (200,300) LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "ListType"

    const-string v5, "ListType"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 2182
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "LISTITEMS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "audio_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "playlist_id"

    const-string v5, "LISTS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "play_order"

    const-string v5, "ClientPosition"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2191
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2192
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2194
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 2195
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "RecentId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "RecentAlbumId"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2197
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_name"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_artist_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "RecentListId"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2203
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "list_name"

    const-string v5, "LISTS.Name"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "ListType"

    const-string v5, "ListType"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=RecentAlbumId AND LocalCopyType IN (200,300) LIMIT 1)"

    const-string v6, "EXISTS(select 1 from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=RecentListId AND LocalCopyType IN (200,300) LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=RecentAlbumId AND LocalCopyType <>300 LIMIT 1)"

    const-string v6, "EXISTS(select 1 from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=RecentListId AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "(select KeepOnId from KEEPON WHERE AlbumId=RecentAlbumId LIMIT 1)"

    const-string v6, "(select KeepOnId from KEEPON WHERE ListId=RecentListId LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_text_1"

    const-string v5, "Album"

    const-string v6, "LISTS.Name"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_text_2"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_icon_1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/\' || "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "RecentAlbumId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/\' || "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "RecentListId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_intent_data"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_intent_data_id"

    const-string v5, "RecentAlbumId"

    const-string v6, "RecentListId"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_last_access_hint"

    const-string v5, "ItemDate"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_shortcut_id"

    const-string v5, "\'_-1\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "MIN(count(distinct RecentId),50)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2260
    new-array v3, v11, [Ljava/util/HashMap;

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    .line 2261
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v9

    .line 2262
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v3, v3, v9

    .line 2263
    const-string v4, "searchType"

    const-string v5, "search_type"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string v4, "ListType"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string v4, "_id"

    const-string v5, "search_artist_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const-string v4, "searchName"

    const-string v5, "search_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    const-string v4, "searchSortName"

    const-string v5, "search_canonical_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const-string v4, "Artist"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const-string v4, "AlbumArtist"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v4, "AlbumArtistId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v4, "Album"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string v4, "duration"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string v4, "year"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    const-string v4, "AlbumId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const-string v4, "suggest_text_1"

    const-string v5, "search_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    const-string v4, "suggest_text_2"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string v4, "suggest_icon_1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/\' || "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "search_artist_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string v2, "suggest_intent_data"

    const-string v4, "search_intent"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const-string v2, "suggest_intent_data_id"

    const-string v4, "search_artist_id"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    const-string v2, "suggest_last_access_hint"

    const-string v4, "null"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    const-string v2, "suggest_shortcut_id"

    const-string v4, "\'_-1\'"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v4, v2, v8

    .line 2285
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v4, v2, v10

    .line 2286
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v3, "itemCount"

    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2287
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v3, "albumCount"

    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2289
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    .line 2290
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchType"

    const-string v4, "\'3\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "ListType"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchName"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchSortName"

    const-string v4, "CanonicalAlbum"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "Artist"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtist"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtistId"

    const-string v4, "AlbumArtistId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "Album"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "itemCount"

    const-string v4, "count(distinct songid)"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "albumCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "year"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumId"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_1"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_2"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_icon_1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/\' || "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AlbumId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_intent_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_intent_data_id"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_last_access_hint"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_shortcut_id"

    const-string v4, "\'_-1\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    .line 2316
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchType"

    const-string v4, "\'5\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "ListType"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "Id"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchName"

    const-string v4, "Title"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchSortName"

    const-string v4, "CanonicalName"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "Artist"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtist"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtistId"

    const-string v4, "AlbumArtistId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "Album"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "itemCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "albumCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "Duration"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "year"

    const-string v4, "Year"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumId"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_1"

    const-string v4, "Title"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_2"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "suggest_icon_1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/\' || "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "AlbumId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data_id"

    const-string v3, "Id"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_last_access_hint"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_shortcut_id"

    const-string v3, "\'_-1\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    new-array v0, v11, [Ljava/util/HashMap;

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    .line 2345
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v9

    .line 2346
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v0, v0, v9

    .line 2347
    const-string v2, "searchType"

    const-string v3, "\'4\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const-string v2, "ListType"

    const-string v3, "ListType"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    const-string v2, "_id"

    const-string v3, "Id"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    const-string v2, "searchName"

    const-string v3, "Name"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v2, "searchSortName"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const-string v2, "Artist"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v2, "AlbumArtist"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v2, "AlbumArtistId"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    const-string v2, "Album"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2358
    const-string v2, "albumCount"

    const-string v3, "\'\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v2, "duration"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    const-string v2, "year"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v2, "AlbumId"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    const-string v2, "suggest_text_1"

    const-string v3, "Name"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v2, "suggest_text_2"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v2, "suggest_icon_1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/\' || "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    const-string v1, "suggest_intent_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    const-string v1, "suggest_intent_data_id"

    const-string v2, "Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    const-string v1, "suggest_last_access_hint"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    const-string v1, "suggest_shortcut_id"

    const-string v2, "\'_-1\'"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v8

    .line 2373
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v10

    .line 2374
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    const-string v1, "itemCount"

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2375
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static addAudioMapping(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1941
    const-string v0, "title"

    const-string v1, "Title"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-string v0, "CanonicalName"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1943
    const-string v0, "album"

    const-string v1, "Album"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const-string v0, "CanonicalAlbum"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1945
    const-string v0, "album_id"

    const-string v1, "MUSIC.AlbumId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    const-string v0, "artist"

    const-string v1, "Artist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v0, "artist_id"

    const-string v1, "ArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v0, "artistSort"

    const-string v1, "CanonicalAlbumArtist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    const-string v0, "AlbumArtistId"

    const-string v1, "MUSIC.AlbumArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const-string v0, "AlbumArtist"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1957
    const-string v0, "AlbumArtistId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1959
    const-string v0, "composer"

    const-string v1, "Composer"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    const-string v0, "Genre"

    const-string v1, "Genre"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string v0, "GenreId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1964
    const-string v0, "year"

    const-string v1, "Year"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v0, "duration"

    const-string v1, "Duration"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    const-string v0, "TrackCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1967
    const-string v0, "track"

    const-string v1, "TrackNumber"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    const-string v0, "DiscCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1969
    const-string v0, "DiscNumber"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1970
    const-string v0, "Compilation"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1971
    const-string v0, "BitRate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1972
    const-string v0, "FileDate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1973
    const-string v0, "Size"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1974
    const-string v0, "Rating"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1976
    const-string v0, "StoreId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1979
    const-string v0, "_data"

    const-string v1, "LocalCopyPath"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v0, "bookmark"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v0, "is_podcast"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v0, "is_music"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v0, "mime_type"

    const-string v1, "\'audio/*\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v0, "album_art"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    const-string v0, "SourceId"

    const-string v1, "MUSIC.SourceId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v0, "SourceAccount"

    const-string v1, "MUSIC.SourceAccount"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    return-void
.end method

.method private static addCategoryMappings(Ljava/util/HashMap;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1891
    if-eqz p1, :cond_9

    .line 1892
    const-string v0, "KeepOnId"

    const-string v1, "KEEPON.KeepOnId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    :cond_9
    const-string v1, "hasLocal"

    if-eqz p2, :cond_1c

    const-string v0, "(MAX(LocalCopyType)  IN (200,300))"

    :goto_f
    invoke-static {p0, v1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v1, "hasRemote"

    if-eqz p2, :cond_1f

    const-string v0, "(MIN(LocalCopyType)  <>300)"

    :goto_18
    invoke-static {p0, v1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    return-void

    .line 1895
    :cond_1c
    const-string v0, "LocalCopyType IN (200,300)"

    goto :goto_f

    .line 1896
    :cond_1f
    const-string v0, "LocalCopyType <>300"

    goto :goto_18
.end method

.method private static addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1880
    const-string v0, "_count"

    invoke-static {p0, v0, p1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v0, "count(*)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    const-string v0, "hasAny"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    return-void
.end method

.method protected static addMapping(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1902
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    return-void
.end method

.method protected static addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    return-void
.end method

.method private static addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "name"
    .parameter "sqls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1917
    .local p0, maps:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 1918
    aget-object v1, p0, v0

    aget-object v2, p2, v0

    invoke-static {v1, p1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1920
    :cond_e
    return-void
.end method

.method private static varargs addNotNullCaseMapping(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CASE"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1925
    const/4 v0, 0x0

    :goto_8
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_26

    .line 1926
    const-string v2, " WHEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    const-string v2, " IS NOT NULL THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    .line 1931
    :cond_26
    const-string v0, " END"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    return-void
.end method

.method private static addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1936
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addNotNullCaseMapping(Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1938
    return-void
.end method

.method private static appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"
    .parameter "condition"

    .prologue
    .line 1556
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1557
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    :cond_b
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1561
    return-object p0
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V
    .registers 4
    .parameter "out"
    .parameter "uri"

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v0

    .line 1613
    .local v0, filter:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 1614
    return-void
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V
    .registers 5
    .parameter "out"
    .parameter "uri"
    .parameter "filter"

    .prologue
    .line 1617
    if-eqz p3, :cond_9

    .line 1618
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1620
    :cond_9
    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 386
    if-lez v0, :cond_12

    .line 387
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 392
    .end local v0           #i:I
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkWritePermission()V
    .registers 3

    .prologue
    .line 1870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_42

    .line 1871
    const-string v0, "MusicContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another application (uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is attempting a write operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Music content provider access is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1876
    :cond_42
    return-void
.end method

.method private static countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select count(1) as _count from (select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/Store;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMusicFilterIndex()I
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1566
    const/4 v7, 0x1

    .line 1567
    .local v7, showRemote:Z
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    .line 1571
    .local v5, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_b
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isCachedStreamingMusicEnabled()Z

    move-result v0

    .line 1572
    .local v0, cacheStreamedMusic:Z
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    .line 1573
    .local v1, displayMode:I
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v8

    .line 1575
    .local v8, streamOnlyOnWifi:Z
    if-eq v1, v9, :cond_48

    move v7, v9

    .line 1577
    :goto_1a
    if-eqz v7, :cond_3f

    .line 1578
    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getHideWhenNotConnected()Z

    move-result v11

    if-eqz v11, :cond_3f

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z

    move-result v11

    if-eqz v11, :cond_3f

    .line 1580
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getActiveNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_55

    move-result-object v6

    .line 1581
    .local v6, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    const/4 v3, 0x0

    .line 1582
    .local v3, hasDataConnection:Z
    const/4 v4, 0x0

    .line 1583
    .local v4, hasHighSpeedConnection:Z
    if-eqz v6, :cond_38

    .line 1585
    :try_start_30
    invoke-interface {v6}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z

    move-result v3

    .line 1586
    invoke-interface {v6}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_55
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_4a

    move-result v4

    .line 1591
    :cond_38
    :goto_38
    if-eqz v3, :cond_3e

    if-nez v4, :cond_3f

    if-eqz v8, :cond_3f

    .line 1592
    :cond_3e
    const/4 v7, 0x0

    .line 1597
    .end local v3           #hasDataConnection:Z
    .end local v4           #hasHighSpeedConnection:Z
    .end local v6           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_3f
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 1600
    if-nez v7, :cond_5a

    .line 1601
    if-eqz v0, :cond_47

    .line 1602
    const/4 v9, 0x2

    .line 1607
    :cond_47
    :goto_47
    return v9

    :cond_48
    move v7, v10

    .line 1575
    goto :goto_1a

    .line 1587
    .restart local v3       #hasDataConnection:Z
    .restart local v4       #hasHighSpeedConnection:Z
    .restart local v6       #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_4a
    move-exception v2

    .line 1588
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4b
    const-string v11, "MusicContentProvider"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_55

    goto :goto_38

    .line 1597
    .end local v0           #cacheStreamedMusic:Z
    .end local v1           #displayMode:I
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #hasDataConnection:Z
    .end local v4           #hasHighSpeedConnection:Z
    .end local v6           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    .end local v8           #streamOnlyOnWifi:Z
    :catchall_55
    move-exception v9

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v9

    .restart local v0       #cacheStreamedMusic:Z
    .restart local v1       #displayMode:I
    .restart local v8       #streamOnlyOnWifi:Z
    :cond_5a
    move v9, v10

    .line 1607
    goto :goto_47
.end method

.method private getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    const/4 v0, 0x1

    .line 426
    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 427
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 428
    const-string v1, "MUSIC.CanonicalName"

    .line 443
    :goto_13
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 429
    :cond_1d
    const-string v1, "album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 430
    const-string v1, "CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName"

    goto :goto_13

    .line 431
    :cond_28
    const-string v1, "artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 432
    const-string v1, "CanonicalArtist, CanonicalName"

    goto :goto_13

    .line 433
    :cond_33
    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 434
    if-eqz p2, :cond_44

    const-string v0, "MAX(MUSIC.FileDate) DESC "

    .line 436
    :goto_3f
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_13

    .line 434
    :cond_44
    const-string v0, "MUSIC.FileDate DESC "

    goto :goto_3f

    .line 438
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid sort param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_60
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private getStaticFauxArt(IJ)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .parameter "style"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtFile(Landroid/content/Context;IJ)Ljava/io/File;

    move-result-object v0

    .line 377
    .local v0, f:Ljava/io/File;
    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private hasCount([Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 396
    .line 397
    if-eqz p1, :cond_1d

    move v0, v1

    .line 398
    :goto_5
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 399
    aget-object v3, p1, v0

    const-string v4, "count("

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "_count"

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_1c
    move v1, v2

    .line 405
    :cond_1d
    if-eqz v1, :cond_2d

    array-length v0, p1

    if-le v0, v2, :cond_2d

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can be the only column in the projection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 409
    :cond_2d
    return v1
.end method

.method private updateAudio(Landroid/content/ContentValues;J)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1853
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 1854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only rating can be update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_10
    const-string v0, "Rating"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1857
    if-nez v0, :cond_20

    .line 1858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing value for rating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1860
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/music/store/Store;->updateRating(JI)I

    move-result v0

    .line 1861
    if-lez v0, :cond_42

    .line 1863
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$XAudio;->getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1866
    :cond_42
    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1742
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1744
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 1746
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1749
    sparse-switch v4, :sswitch_data_98

    .line 1766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete not supported on URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :sswitch_3c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1752
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v0, v1}, Lcom/google/android/music/store/Store;->deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I

    move-result v0

    move v1, v2

    .line 1770
    :goto_4d
    invoke-virtual {v5, p1, v10, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1771
    const/16 v1, 0x12d

    if-ne v4, v1, :cond_59

    .line 1773
    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v1, v10, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1775
    :cond_59
    return v0

    .line 1757
    :sswitch_5a
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1758
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0, v6, v7}, Lcom/google/android/music/store/Store;->deletePlaylist(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6e

    move v0, v1

    goto :goto_4d

    :cond_6e
    move v0, v2

    goto :goto_4d

    .line 1761
    :sswitch_70
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1762
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1763
    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/google/android/music/store/Store;->deletePlaylistItem(JJ)Z

    move-result v0

    if-eqz v0, :cond_95

    move v0, v1

    goto :goto_4d

    :cond_95
    move v0, v2

    goto :goto_4d

    .line 1749
    nop

    :sswitch_data_98
    .sparse-switch
        0x12d -> :sswitch_3c
        0x259 -> :sswitch_5a
        0x25b -> :sswitch_70
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1625
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    .line 1689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1690
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType called on Unknonw Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1691
    throw v0

    .line 1634
    :sswitch_3a
    const-string v0, "vnd.android.cursor.dir/vnd.google.xaudio"

    .line 1686
    :goto_3c
    return-object v0

    .line 1639
    :sswitch_3d
    const-string v0, "vnd.android.cursor.item/vnd.google.xaudio"

    goto :goto_3c

    .line 1646
    :sswitch_40
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.album"

    goto :goto_3c

    .line 1649
    :sswitch_43
    const-string v0, "vnd.android.cursor.item/vnd.google.music.album"

    goto :goto_3c

    .line 1652
    :sswitch_46
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.artist"

    goto :goto_3c

    .line 1655
    :sswitch_49
    const-string v0, "vnd.android.cursor.item/vnd.google.music.artist"

    goto :goto_3c

    .line 1659
    :sswitch_4c
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.genre"

    goto :goto_3c

    .line 1662
    :sswitch_4f
    const-string v0, "vnd.android.cursor.item/vnd.google.music.genre"

    goto :goto_3c

    .line 1665
    :sswitch_52
    const-string v0, "vnd.android.cursor.item/vnd.google.music.albumart"

    goto :goto_3c

    .line 1668
    :sswitch_55
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.recent"

    goto :goto_3c

    .line 1671
    :sswitch_58
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.downloadqueue"

    goto :goto_3c

    .line 1674
    :sswitch_5b
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.playlist"

    goto :goto_3c

    .line 1677
    :sswitch_5e
    const-string v0, "vnd.android.cursor.item/vnd.google.music.playlist"

    goto :goto_3c

    .line 1680
    :sswitch_61
    const-string v0, "vnd.android.cursor.dir/vnd.google.listitems"

    goto :goto_3c

    .line 1683
    :sswitch_64
    const-string v0, "vnd.android.cursor.item/vnd.google.listitems"

    goto :goto_3c

    .line 1686
    :sswitch_67
    const-string v0, "vnd.android.cursor.item/vnd.google.music.account"

    goto :goto_3c

    .line 1625
    :sswitch_data_6a
    .sparse-switch
        0x12c -> :sswitch_3a
        0x12d -> :sswitch_3d
        0x12e -> :sswitch_3a
        0x12f -> :sswitch_3a
        0x130 -> :sswitch_3a
        0x131 -> :sswitch_3d
        0x132 -> :sswitch_3a
        0x133 -> :sswitch_3a
        0x134 -> :sswitch_3a
        0x190 -> :sswitch_40
        0x191 -> :sswitch_43
        0x192 -> :sswitch_40
        0x193 -> :sswitch_40
        0x1f4 -> :sswitch_46
        0x1f5 -> :sswitch_49
        0x1f6 -> :sswitch_40
        0x258 -> :sswitch_5b
        0x259 -> :sswitch_5e
        0x25a -> :sswitch_61
        0x25b -> :sswitch_64
        0x2bc -> :sswitch_4c
        0x2bd -> :sswitch_3a
        0x2be -> :sswitch_40
        0x2bf -> :sswitch_4c
        0x2c0 -> :sswitch_4f
        0x320 -> :sswitch_52
        0x384 -> :sswitch_55
        0x3e8 -> :sswitch_58
        0x4b0 -> :sswitch_3d
        0x514 -> :sswitch_67
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1698
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1700
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1701
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1704
    packed-switch v0, :pswitch_data_aa

    .line 1729
    :pswitch_18
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert not supported on URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (match="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1706
    :pswitch_45
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1707
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->createPlaylist(Ljava/lang/String;)J

    move-result-wide v2

    .line 1708
    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1733
    :goto_53
    if-eqz v0, :cond_60

    .line 1734
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1736
    :cond_60
    return-object v0

    .line 1711
    :pswitch_61
    const-string v0, "audio_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1712
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-eqz v0, :cond_77

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eq v0, v8, :cond_7f

    .line 1713
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When inserting playlist items, the music id must be provided and nothing else"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1717
    :cond_7f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1719
    :try_start_8d
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/music/store/Store;->appendPlaylistItem(JJ)J

    move-result-wide v2

    .line 1720
    cmp-long v0, v2, v9

    if-eqz v0, :cond_a8

    .line 1721
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_9c} :catch_9e

    move-result-object v0

    goto :goto_53

    .line 1723
    :catch_9e
    move-exception v0

    .line 1724
    const-string v2, "MusicContentProvider"

    const-string v3, "Failed to insert playlist item"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1726
    goto :goto_53

    :cond_a8
    move-object v0, v1

    goto :goto_53

    .line 1704
    :pswitch_data_aa
    .packed-switch 0x258
        :pswitch_45
        :pswitch_18
        :pswitch_61
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    .line 266
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 267
    const/16 v1, 0x320

    if-eq v4, v1, :cond_17

    const/16 v1, 0x323

    if-ne v4, v1, :cond_f1

    .line 268
    :cond_17
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 270
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-gtz v1, :cond_38

    .line 272
    sget-boolean v1, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v1, :cond_30

    const-string v1, "MusicContentProvider"

    const-string v2, "Unknown album art requested"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_30
    :goto_30
    if-nez v0, :cond_18e

    .line 366
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 275
    :cond_38
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    .line 280
    :try_start_41
    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_a3

    move-result v7

    .line 282
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 284
    if-eqz v7, :cond_4e

    .line 287
    invoke-virtual {v3, v5, v6}, Lcom/google/android/music/store/Store;->getArtwork(J)Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_4e
    if-nez v1, :cond_a8

    const/4 v2, 0x0

    .line 291
    :goto_51
    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_93

    .line 293
    :cond_63
    invoke-virtual {v3, v5, v6}, Lcom/google/android/music/store/Store;->getArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_93

    .line 296
    const-string v3, "mediastore:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 299
    const-string v3, "mediastore:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getMediaStoreAlbumArt(J)Landroid/net/Uri;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_93

    .line 305
    :try_start_85
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "r"

    invoke-virtual {v3, v2, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_92} :catch_1bb

    move-result-object v0

    .line 326
    :cond_93
    :goto_93
    if-nez v0, :cond_30

    .line 327
    if-eqz v1, :cond_e6

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_30

    .line 282
    :catchall_a3
    move-exception v0

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v0

    .line 290
    :cond_a8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_51

    .line 311
    :cond_ae
    if-eqz v7, :cond_93

    .line 313
    sget-boolean v1, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v1, :cond_cc

    .line 314
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attemping to download album art: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_cc
    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 318
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {v3, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string v7, "com.android.music.REMOTE_ALBUM_ART_REQUESTED"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v7, "albumId"

    invoke-virtual {v3, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 321
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_93

    .line 330
    :cond_e6
    const/16 v1, 0x323

    if-ne v4, v1, :cond_30

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_30

    .line 336
    :cond_f1
    const/16 v1, 0x322

    if-ne v4, v1, :cond_104

    .line 337
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 338
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_30

    .line 340
    :cond_104
    const/16 v1, 0x321

    if-ne v4, v1, :cond_117

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 342
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_30

    .line 344
    :cond_117
    const/16 v1, 0x12d

    if-ne v4, v1, :cond_170

    .line 345
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_30

    .line 347
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 348
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 349
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v2, v4}, Lcom/google/android/music/store/Store;->getSourceAccountAndId(J[I[Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    aget v1, v2, v1

    if-nez v1, :cond_30

    const/4 v1, 0x0

    aget-object v1, v4, v1

    if-eqz v1, :cond_30

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 356
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto/16 :goto_30

    .line 362
    :cond_170
    const-string v1, "MusicContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized openFile request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 368
    :cond_18e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-nez v1, :cond_1ba

    .line 369
    const-string v0, "MusicContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file descriptor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 372
    :cond_1ba
    return-object v0

    .line 307
    :catch_1bb
    move-exception v2

    goto/16 :goto_93
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v23

    .line 452
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 453
    const/4 v11, 0x0

    .line 454
    const/4 v9, 0x1

    .line 456
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    const/4 v5, 0x0

    .line 458
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 463
    if-eqz p2, :cond_5d

    move-object/from16 v0, p2

    array-length v3, v0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5d

    const-string v3, "hasAny"

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const/4 v3, 0x1

    move v10, v3

    .line 465
    :goto_3a
    if-eqz v10, :cond_1284

    .line 466
    const-string v7, "1"

    .line 467
    const/4 v6, 0x0

    .line 470
    :goto_3f
    sparse-switch v4, :sswitch_data_1288

    .line 1499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_5d
    const/4 v3, 0x0

    move v10, v3

    goto :goto_3a

    .line 473
    :sswitch_60
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v8

    .line 474
    if-eqz v10, :cond_d8

    .line 475
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v3, v5

    move-object v4, v6

    .line 504
    :cond_6d
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v8}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 505
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v3

    move-object v9, v4

    move-object v3, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1502
    :goto_81
    if-eqz v3, :cond_86

    .line 1503
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1506
    :cond_86
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_af

    .line 1507
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1508
    sget-boolean v12, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v12, :cond_ac

    const-string v12, "MusicContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Append Where: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_ac
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1512
    :cond_af
    if-eqz v8, :cond_11cf

    .line 1513
    if-eqz v5, :cond_11cd

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11cd

    .line 1514
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection is not supported. \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is ignored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_d8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 477
    if-nez v8, :cond_ef

    .line 478
    const-string v2, "MUSIC"

    const-string v3, "AlbumId"

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1542
    :cond_ee
    :goto_ee
    return-object v2

    .line 480
    :cond_ef
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 481
    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_6d

    .line 483
    :cond_f9
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 485
    const-string v3, "MUSIC.AlbumId"

    .line 486
    const-string v4, "MUSIC.CanonicalAlbum"

    .line 489
    const-string v5, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6d

    .line 491
    const-string v6, "artist"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11e

    .line 492
    const-string v4, "MUSIC.CanonicalAlbumArtist, MUSIC.CanonicalAlbum"

    goto/16 :goto_6d

    .line 497
    :cond_11e
    const-string v6, "album"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    .line 498
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid album sort parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :sswitch_13f
    if-nez v10, :cond_14b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_179

    .line 511
    :cond_14b
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 517
    :goto_150
    const/4 v6, 0x0

    .line 518
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 525
    goto/16 :goto_81

    .line 513
    :cond_179
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 515
    const-string v5, "MUSIC.AlbumId"

    goto :goto_150

    .line 528
    :sswitch_181
    if-nez v10, :cond_18d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 529
    :cond_18d
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 532
    :cond_193
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 533
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v4

    aget-object v4, v2, v4

    .line 534
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_216

    const/4 v2, 0x1

    .line 538
    :goto_1a7
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 539
    const-string v5, "SELECT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    const-string v5, " FROM (SELECT AlbumId AS c_album_id, Album AS c_album, AlbumArtist AS c_artist, AlbumArtistId AS c_artistId, CanonicalAlbumArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    if-eqz v2, :cond_1cb

    .line 554
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    :cond_1cb
    const-string v5, " GROUP BY AlbumId, AlbumArtistId UNION SELECT AlbumId AS c_album_id, Album AS c_album, Artist AS c_artist, ArtistId AS c_artistId, CanonicalArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC WHERE (ArtistId<>AlbumArtistId) AND EXISTS(SELECT 1 FROM MUSIC AS m WHERE m.AlbumArtistId=MUSIC.ArtistId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    if-eqz v2, :cond_1db

    .line 578
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    :cond_1db
    const-string v5, " LIMIT 1) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    if-eqz v2, :cond_1eb

    .line 585
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 588
    :cond_1eb
    const-string v2, " GROUP BY AlbumId, ArtistId) LEFT JOIN KEEPON ON (c_album_id=AlbumId) ORDER BY c_canonicalArtist, c_canonicalAlbum"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 599
    :try_start_1f4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 600
    if-eqz v2, :cond_20f

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 602
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_20f
    .catchall {:try_start_1f4 .. :try_end_20f} :catchall_218

    .line 606
    :cond_20f
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ee

    .line 534
    :cond_216
    const/4 v2, 0x0

    goto :goto_1a7

    .line 606
    :catchall_218
    move-exception v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 614
    :sswitch_21f
    const-string v3, "storeAlbumId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_270

    const/4 v3, 0x1

    .line 616
    :goto_22e
    if-eqz v3, :cond_272

    .line 617
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StoreAlbumId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/google/android/music/utils/DbUtils;->quoteStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    :goto_24a
    const-string v4, "TrackType IN (2,1)"

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    if-nez v10, :cond_25b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 630
    :cond_25b
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 631
    const/4 v3, 0x0

    .line 658
    :cond_261
    :goto_261
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 660
    goto/16 :goto_81

    .line 615
    :cond_270
    const/4 v3, 0x0

    goto :goto_22e

    .line 620
    :cond_272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto :goto_24a

    .line 633
    :cond_27a
    const-string v4, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 635
    const-string v5, "MUSIC.AlbumId"

    .line 636
    if-eqz v3, :cond_285

    .line 637
    const/4 v3, 0x0

    goto :goto_261

    .line 639
    :cond_285
    const-string v3, "MUSIC.CanonicalAlbum"

    .line 642
    const-string v4, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 643
    if-eqz v4, :cond_261

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_261

    .line 644
    const-string v6, "artist"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a2

    .line 645
    const-string v3, "MUSIC.CanonicalAlbumArtist, MUSIC.CanonicalAlbum"

    goto :goto_261

    .line 650
    :cond_2a2
    const-string v6, "album"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_261

    .line 651
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid album sort parameter: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :sswitch_2c3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v3

    .line 664
    if-eqz v10, :cond_2e3

    .line 665
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 679
    :goto_2ce
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 682
    goto/16 :goto_81

    .line 666
    :cond_2e3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_302

    .line 667
    if-nez v3, :cond_2fb

    .line 668
    const-string v2, "MUSIC"

    const-string v3, "AlbumArtistId"

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_ee

    .line 670
    :cond_2fb
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 671
    const/4 v6, 0x0

    goto :goto_2ce

    .line 673
    :cond_302
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 675
    const-string v5, "MUSIC.AlbumArtistId"

    .line 676
    const-string v6, "MUSIC.CanonicalAlbumArtist"

    goto :goto_2ce

    .line 686
    :sswitch_30c
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 697
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 699
    if-nez v10, :cond_326

    :try_start_31c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34d

    .line 700
    :cond_326
    const-string v4, "MUSIC"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 705
    :goto_32b
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 706
    const-string v5, "MUSIC.AlbumArtistId=?"

    const-string v7, "MUSIC.AlbumArtistId"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 710
    if-eqz v4, :cond_35a

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_342
    .catchall {:try_start_31c .. :try_end_342} :catchall_353

    move-result v5

    if-lez v5, :cond_35a

    .line 729
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v2, v4

    goto/16 :goto_ee

    .line 702
    :cond_34d
    :try_start_34d
    const-string v4, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_352
    .catchall {:try_start_34d .. :try_end_352} :catchall_353

    goto :goto_32b

    .line 729
    :catchall_353
    move-exception v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 713
    :cond_35a
    :try_start_35a
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 714
    const-string v4, "MUSIC"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 715
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 716
    const-string v5, "MUSIC.ArtistId=?"

    const-string v7, "MUSIC.ArtistId"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 722
    if-eqz v2, :cond_386

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v2, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 724
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_386
    .catchall {:try_start_35a .. :try_end_386} :catchall_353

    .line 729
    :cond_386
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ee

    .line 735
    :sswitch_38d
    if-nez v10, :cond_399

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f9

    .line 736
    :cond_399
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 737
    const/4 v3, 0x0

    move-object v4, v3

    .line 745
    :goto_3a0
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 748
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MUSIC.AlbumArtistId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " OR "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "MUSIC"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ArtistId"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v4

    move-object/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 754
    goto/16 :goto_81

    .line 739
    :cond_3f9
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 742
    const-string v5, "MUSIC.AlbumId"

    .line 743
    const-string v3, "MUSIC.CanonicalAlbum"

    move-object v4, v3

    goto :goto_3a0

    .line 757
    :sswitch_404
    if-nez v10, :cond_410

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_431

    .line 758
    :cond_410
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 759
    const/4 v3, 0x0

    .line 765
    :goto_416
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 768
    const-string v6, "MUSIC.GenreId > 0"

    invoke-static {v12, v6}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 771
    goto/16 :goto_81

    .line 761
    :cond_431
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 762
    const-string v5, "MUSIC.GenreId"

    .line 763
    const-string v3, "MUSIC.CanonicalGenre"

    goto :goto_416

    .line 775
    :sswitch_43b
    if-nez v10, :cond_449

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_449

    .line 776
    const-string v5, "MUSIC.GenreId"

    .line 778
    :cond_449
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUSIC.GenreId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const/4 v6, 0x0

    .line 782
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 785
    goto/16 :goto_81

    .line 788
    :sswitch_477
    if-nez v10, :cond_483

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_489

    .line 789
    :cond_483
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 791
    :cond_489
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 792
    const-string v6, "MUSIC.CanonicalGenre, MUSIC.CanonicalAlbum"

    .line 794
    const-string v5, "MUSIC.AlbumId, MUSIC.GenreId"

    .line 798
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 801
    const-string v4, "MUSIC.GenreId > 0"

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 803
    goto/16 :goto_81

    .line 806
    :sswitch_4ac
    if-nez v10, :cond_4b8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_518

    .line 807
    :cond_4b8
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 808
    const/4 v3, 0x0

    move-object v4, v3

    .line 823
    :goto_4bf
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GenreId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 829
    const-string v3, "albumIdFilter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 830
    if-eqz v3, :cond_1274

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 833
    const-string v3, "DiscNumber, TrackNumber, CanonicalName"

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v7, v5

    move-object v9, v3

    move-object/from16 v5, p3

    move-object v3, v6

    move-object/from16 v6, p4

    goto/16 :goto_81

    .line 810
    :cond_518
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 811
    const-string v5, "MUSIC.SongId"

    .line 813
    if-eqz v6, :cond_529

    .line 814
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    :cond_529
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 818
    if-nez v3, :cond_1281

    .line 820
    const-string v3, "MUSIC.CanonicalName"

    move-object v4, v3

    goto/16 :goto_4bf

    .line 839
    :sswitch_543
    if-nez v10, :cond_54f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58d

    .line 840
    :cond_54f
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 841
    const/4 v3, 0x0

    move-object v4, v3

    .line 849
    :goto_556
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.GenreId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v4

    move-object/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 856
    goto/16 :goto_81

    .line 843
    :cond_58d
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 846
    const-string v5, "MUSIC.AlbumId"

    .line 847
    const-string v3, "MUSIC.CanonicalAlbum"

    move-object v4, v3

    goto :goto_556

    .line 858
    :sswitch_598
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v8

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d8

    .line 861
    if-nez v8, :cond_5c1

    if-eqz p3, :cond_5b5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5c1

    .line 864
    :cond_5b5
    const-string v2, "MUSIC"

    const-string v3, "SongId"

    move-object/from16 v0, v23

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_ee

    .line 866
    :cond_5c1
    const/4 v4, 0x0

    .line 926
    :goto_5c2
    const/4 v6, 0x0

    .line 927
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v8}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    move-object v10, v7

    move v8, v6

    move-object v9, v4

    move-object v7, v5

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 929
    goto/16 :goto_81

    .line 867
    :cond_5d8
    if-nez v10, :cond_1271

    .line 869
    if-eqz v6, :cond_5e4

    .line 870
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 872
    :cond_5e4
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    .line 874
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 875
    if-nez v3, :cond_126e

    .line 877
    const-string v3, "CanonicalName"

    move-object v4, v3

    .line 915
    :goto_5fc
    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_61b

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SongId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 921
    const/4 v4, 0x0

    goto :goto_5c2

    .line 923
    :cond_61b
    const-string v5, "SongId"

    goto :goto_5c2

    .line 933
    :sswitch_61e
    if-nez v10, :cond_62a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a1

    .line 934
    :cond_62a
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 935
    const/4 v3, 0x0

    .line 950
    :cond_630
    :goto_630
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SongId IN (SELECT SongId FROM MUSIC"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " WHERE ("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_667
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ORDER BY "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "MUSIC.FileDate DESC "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " LIMIT "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v8, 0x1f4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 959
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 960
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v7, v5

    move-object v9, v3

    move-object/from16 v5, p3

    move-object v3, v6

    move-object/from16 v6, p4

    .line 962
    goto/16 :goto_81

    .line 937
    :cond_6a1
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 938
    const-string v5, "MUSIC.SongId"

    .line 940
    if-eqz v6, :cond_6b2

    .line 941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 943
    :cond_6b2
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 945
    if-nez v3, :cond_630

    .line 946
    const-string v3, "MAX(MUSIC.FileDate) DESC "

    goto/16 :goto_630

    .line 953
    :cond_6cb
    const-string v4, ""

    goto :goto_667

    .line 966
    :sswitch_6ce
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 968
    const-string v3, "Rating > 3"

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 971
    if-nez v10, :cond_6e8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6fb

    .line 972
    :cond_6e8
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 973
    const/4 v3, 0x0

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    .line 975
    :cond_6fb
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 976
    const-string v5, "MUSIC.SongId"

    .line 978
    if-eqz v6, :cond_70c

    .line 979
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 981
    :cond_70c
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 983
    if-nez v3, :cond_723

    .line 984
    const-string v3, "MUSIC.CanonicalName"

    .line 989
    :cond_723
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SongId IN (SELECT SongId FROM MUSIC WHERE ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "))"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 992
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 993
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 996
    goto/16 :goto_81

    .line 999
    :sswitch_754
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1000
    if-nez v10, :cond_765

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79d

    .line 1001
    :cond_765
    const/4 v6, 0x0

    .line 1011
    :cond_766
    :goto_766
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.AlbumId="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v4

    move-object v10, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1017
    goto/16 :goto_81

    .line 1004
    :cond_79d
    const-string v5, "MUSIC.SongId"

    .line 1006
    if-nez v6, :cond_766

    .line 1007
    const-string v6, "DiscNumber, TrackNumber, CanonicalName"

    goto :goto_766

    .line 1021
    :sswitch_7a4
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1022
    if-nez v10, :cond_7b5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_804

    .line 1023
    :cond_7b5
    const/4 v3, 0x0

    move-object v4, v3

    .line 1038
    :goto_7b7
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1040
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlbumArtistId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " OR "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "ArtistId"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v4

    move-object/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 1046
    goto/16 :goto_81

    .line 1026
    :cond_804
    const-string v5, "MUSIC.SongId"

    .line 1027
    if-eqz v6, :cond_810

    .line 1028
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1030
    :cond_810
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1032
    if-nez v3, :cond_126b

    .line 1034
    const-string v3, "MUSIC.CanonicalName"

    move-object v4, v3

    goto :goto_7b7

    .line 1049
    :sswitch_829
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1050
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1052
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1054
    const-string v4, "vers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1055
    if-nez v4, :cond_864

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.Id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto/16 :goto_81

    .line 1059
    :cond_864
    const-string v7, "1"

    .line 1060
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SongId=(SELECT SongId FROM MUSIC as m WHERE m.Id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " LIMIT 1)"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    const-string v8, "media"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8ae

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SourceAccount="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto/16 :goto_81

    .line 1070
    :cond_8ae
    const-string v8, "remote"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8da

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SourceAccount<>"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    goto/16 :goto_81

    .line 1075
    :cond_8da
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for vers parameter: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1086
    :sswitch_8f3
    const-string v3, ","

    invoke-static {v3}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v3

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1088
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1089
    const-string v3, "("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1090
    const/4 v3, 0x0

    .line 1091
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1268

    .line 1092
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must have at least one id in selection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1094
    :goto_91e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_954

    .line 1095
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1096
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1097
    const-string v10, "select "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v10, " as sel_id, "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1098
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v10, " as sel_pos "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1099
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_952

    .line 1100
    const-string v4, " UNION ALL "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_952
    move v4, v3

    .line 1102
    goto :goto_91e

    .line 1103
    :cond_954
    const-string v3, ") as selected JOIN "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "MUSIC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1104
    const-string v3, "MUSIC.Id"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "selected.sel_id) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1105
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1106
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1107
    const-string v6, "selected.sel_pos"

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1109
    goto/16 :goto_81

    .line 1113
    :sswitch_98d
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1115
    const-string v3, "storeSongId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9c8

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1125
    :goto_9a4
    const-string v3, "TrackType IN (2,1)"

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1129
    if-nez v10, :cond_9b5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e3

    .line 1130
    :cond_9b5
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1131
    const/4 v3, 0x0

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    .line 1119
    :cond_9c8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StoreId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/music/utils/DbUtils;->quoteStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9a4

    .line 1133
    :cond_9e3
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1134
    const-string v5, "MUSIC.SongId"

    .line 1136
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1138
    if-nez v3, :cond_a01

    .line 1139
    const-string v3, "MAX(MUSIC.FileDate) DESC "

    .line 1144
    :cond_a01
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SongId IN (SELECT SongId FROM MUSIC WHERE ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "))"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1147
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1148
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 1151
    goto/16 :goto_81

    .line 1159
    :sswitch_a32
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 1161
    if-nez v10, :cond_a40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6e

    .line 1162
    :cond_a40
    const-string v3, "LISTS"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1163
    const/4 v3, 0x0

    .line 1170
    :goto_a46
    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1171
    if-eqz v6, :cond_125b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_125b

    .line 1172
    const-string p3, "LISTS.Name=?"

    .line 1173
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/4 v8, 0x0

    aput-object v6, p4, v8

    .line 1174
    const/4 v6, 0x0

    move-object v10, v7

    move v8, v6

    move-object v9, v3

    move-object v7, v5

    move-object v3, v4

    move-object/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    .line 1165
    :cond_a6e
    const-string v3, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1167
    const-string v3, "LISTS.Name COLLATE UNICODE ASC"

    goto :goto_a46

    .line 1180
    :sswitch_a76
    const-string v3, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LISTS.Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 1185
    const/4 v6, 0x0

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1186
    goto/16 :goto_81

    .line 1189
    :sswitch_aa4
    const-string v3, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1191
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LISTS.Id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    if-nez v10, :cond_adf

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aed

    .line 1196
    :cond_adf
    const/4 v3, 0x0

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    .line 1198
    :cond_aed
    const-string v3, "ServerOrder, ClientPosition"

    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    .line 1200
    goto/16 :goto_81

    .line 1203
    :sswitch_afc
    const-string v3, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1205
    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1208
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LISTS.Id="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " AND "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "LISTITEMS.Id"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v3, v8

    move-object v10, v7

    move-object/from16 v4, p2

    move v8, v9

    move-object v7, v5

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p4

    .line 1213
    goto/16 :goto_81

    .line 1216
    :sswitch_b52
    if-nez p2, :cond_b56

    .line 1217
    sget-object p2, Lcom/google/android/music/store/MusicContentProvider;->DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

    .line 1221
    :cond_b56
    :sswitch_b56
    const-string v3, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1222
    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 1223
    if-nez v10, :cond_1258

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1258

    .line 1224
    const-string v5, "RecentId"

    .line 1225
    const-string v6, "ItemDate DESC"

    .line 1226
    const/16 v3, 0x384

    if-ne v4, v3, :cond_1258

    .line 1228
    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    :goto_b77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v7

    .line 1233
    const-string v4, ""

    .line 1234
    if-eqz v7, :cond_b96

    .line 1235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v7, v10, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1238
    :cond_b96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LISTS.Id NOT NULL OR (MUSIC.AlbumId NOT NULL "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v10, v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v3, v8

    move v8, v9

    move-object v9, v6

    move-object/from16 v6, p4

    .line 1246
    goto/16 :goto_81

    .line 1249
    :sswitch_bbf
    if-eqz p3, :cond_bdc

    .line 1250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Does not support selection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1252
    :cond_bdc
    if-nez p2, :cond_bf9

    .line 1253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Does not support null projection in"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1257
    :cond_bf9
    new-instance v3, Lcom/google/android/music/store/CurrentDownloadsCursor;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/google/android/music/store/CurrentDownloadsCursor;-><init>([Ljava/lang/String;)V

    .line 1259
    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/google/android/music/store/CurrentDownloadsCursor;->getMusicIds()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v4}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v4

    .line 1262
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_ee

    .line 1265
    :sswitch_c1d
    if-nez p2, :cond_1254

    .line 1266
    sget-object p2, Lcom/google/android/music/store/MusicContentProvider;->DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v4, p2

    .line 1270
    :goto_c23
    if-nez v4, :cond_c2d

    .line 1271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null projection not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1277
    :cond_c2d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1278
    if-eqz v5, :cond_c3a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-ge v3, v6, :cond_c3d

    .line 1279
    :cond_c3a
    const/4 v2, 0x0

    goto/16 :goto_ee

    .line 1281
    :cond_c3d
    const/4 v6, 0x1

    .line 1282
    new-instance v3, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v3}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 1283
    invoke-virtual {v3, v5}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1284
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1250

    .line 1287
    const/4 v3, 0x0

    move/from16 v20, v3

    move-object v3, v5

    .line 1290
    :goto_c52
    const/16 v6, 0x21

    invoke-static {v5, v6}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 1291
    const/16 v6, 0x21

    invoke-static {v3, v6}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 1293
    const-string v6, " LIKE ? ESCAPE \'!\' "

    .line 1295
    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v6

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v6

    .line 1299
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    const/4 v5, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "%"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    .line 1307
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1309
    :try_start_cce
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v11

    .line 1310
    const-string v5, ""

    .line 1311
    if-eqz v11, :cond_124c

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->FILTERS:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    .line 1314
    :goto_cef
    const-string v5, "MUSIC"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1315
    if-eqz v20, :cond_108a

    const-string v5, "CanonicalAlbumArtist"

    move-object v8, v5

    .line 1318
    :goto_cf9
    if-eqz v20, :cond_108f

    const-string v5, "CanonicalArtist"

    .line 1320
    :goto_cfd
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 1321
    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v10, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    const/4 v10, 0x0

    array-length v12, v6

    array-length v13, v6

    invoke-static {v6, v10, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1326
    if-eqz v7, :cond_d16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1249

    .line 1327
    :cond_d16
    const-string v10, "1000"

    .line 1329
    :goto_d18
    sget-object v7, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v7, v7, v11

    invoke-static {v4, v7}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 1331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " FROM "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "SELECT "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\'"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\' as "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "search_type"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "AlbumArtistId"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " as "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "search_artist_id"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "AlbumArtist"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " as "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "search_artist"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "CanonicalAlbumArtist"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " as "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "search_canonical_artist"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\'"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\'"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " as "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "search_intent"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " FROM "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "MUSIC"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " WHERE ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GROUP BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AlbumArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UNION "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ArtistId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CanonicalArtist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_canonical_artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "search_intent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ArtistId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "<>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "AlbumArtistId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " AND NOT EXISTS( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "SELECT 1 FROM "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " as m "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "WHERE m."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "AlbumArtistId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "MUSIC"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ArtistId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " GROUP BY "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "CanonicalArtist"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") ORDER BY "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "search_canonical_artist"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIMIT "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1377
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1378
    if-eqz v20, :cond_1093

    .line 1379
    const-string v5, "CanonicalAlbum"

    .line 1388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IN (SELECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "MUSIC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " GROUP BY "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AlbumId"

    const/4 v8, 0x0

    const-string v9, "CanonicalAlbum"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v21, v5

    .line 1410
    :goto_fda
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    .line 1413
    const-string v5, "LISTS"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1414
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v5, v5, v11

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1415
    const-string v5, "Name"

    .line 1416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "Name"

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1419
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 1421
    const-string v5, "MUSIC"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1422
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1423
    if-eqz v20, :cond_10d7

    const-string v5, "CanonicalName"

    .line 1424
    :goto_102e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CanonicalName,SongId"

    const/4 v8, 0x0

    const-string v9, "CanonicalName"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1438
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_106f
    .catchall {:try_start_cce .. :try_end_106f} :catchall_10db

    .line 1440
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1442
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v24, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v11, v3, v5

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_ee

    .line 1315
    :cond_108a
    :try_start_108a
    const-string v5, "AlbumArtist"

    move-object v8, v5

    goto/16 :goto_cf9

    .line 1318
    :cond_108f
    const-string v5, "Artist"

    goto/16 :goto_cfd

    .line 1400
    :cond_1093
    const-string v5, "Album"

    .line 1401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AlbumId"

    const/4 v8, 0x0

    const-string v9, "CanonicalAlbum"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v21, v5

    goto/16 :goto_fda

    .line 1423
    :cond_10d7
    const-string v5, "Title"
    :try_end_10d9
    .catchall {:try_start_108a .. :try_end_10d9} :catchall_10db

    goto/16 :goto_102e

    .line 1440
    :catchall_10db
    move-exception v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 1446
    :sswitch_10e2
    const/4 v2, 0x0

    goto/16 :goto_ee

    .line 1448
    :sswitch_10e5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1450
    :try_start_10ed
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v4, v10}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v13

    .line 1452
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1453
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MUSIC.Id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1117
    .catch Ljava/io/FileNotFoundException; {:try_start_10ed .. :try_end_1117} :catch_1123

    move-object v10, v7

    move v8, v9

    move-object/from16 v4, p2

    move-object v9, v6

    move-object v7, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 1458
    goto/16 :goto_81

    .line 1455
    :catch_1123
    move-exception v2

    .line 1457
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_ee

    .line 1469
    :sswitch_112e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_117e

    .line 1471
    const-string v2, "MusicContentProvider"

    const-string v3, "Not enough permissions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller (uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") does not have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permission."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1477
    :cond_117e
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "type"

    aput-object v4, v3, v2

    .line 1481
    if-eqz p2, :cond_119d

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119d

    .line 1482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported projection for account query"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_119d
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1486
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    .line 1489
    :try_start_11ad
    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;
    :try_end_11b0
    .catchall {:try_start_11ad .. :try_end_11b0} :catchall_11c8

    move-result-object v3

    .line 1491
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 1493
    if-eqz v3, :cond_ee

    .line 1494
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ee

    .line 1491
    :catchall_11c8
    move-exception v2

    invoke-static/range {p0 .. p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v2

    .line 1517
    :cond_11cd
    const/4 v5, 0x0

    .line 1518
    const/4 v6, 0x0

    .line 1520
    :cond_11cf
    sget-boolean v3, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v3, :cond_121d

    .line 1522
    invoke-static {v4}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1523
    invoke-static {v6}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1525
    const-string v12, "MusicContentProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Running Query: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " projection  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " selection   : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " select args : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " sort order  : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_121d
    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1531
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1533
    const/4 v8, 0x0

    :try_start_1225
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1536
    if-eqz v2, :cond_123b

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v2, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1538
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_123b
    .catchall {:try_start_1225 .. :try_end_123b} :catchall_1242

    .line 1542
    :cond_123b
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ee

    :catchall_1242
    move-exception v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    :cond_1249
    move-object v10, v7

    goto/16 :goto_d18

    :cond_124c
    move-object/from16 v22, v5

    goto/16 :goto_cef

    :cond_1250
    move/from16 v20, v6

    goto/16 :goto_c52

    :cond_1254
    :sswitch_1254
    move-object/from16 v4, p2

    goto/16 :goto_c23

    :cond_1258
    move-object v3, v7

    goto/16 :goto_b77

    :cond_125b
    move-object v10, v7

    move v8, v9

    move-object/from16 v6, p4

    move-object v7, v5

    move-object v9, v3

    move-object v3, v4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    :cond_1268
    move v4, v3

    goto/16 :goto_91e

    :cond_126b
    move-object v4, v3

    goto/16 :goto_7b7

    :cond_126e
    move-object v4, v3

    goto/16 :goto_5fc

    :cond_1271
    move-object v4, v6

    goto/16 :goto_5c2

    :cond_1274
    move-object v3, v6

    move-object v10, v7

    move v8, v9

    move-object v7, v5

    move-object v9, v4

    move-object/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    goto/16 :goto_81

    :cond_1281
    move-object v4, v3

    goto/16 :goto_4bf

    :cond_1284
    move-object/from16 v6, p5

    goto/16 :goto_3f

    .line 470
    :sswitch_data_1288
    .sparse-switch
        0x12c -> :sswitch_598
        0x12d -> :sswitch_829
        0x12e -> :sswitch_754
        0x12f -> :sswitch_7a4
        0x130 -> :sswitch_61e
        0x132 -> :sswitch_8f3
        0x133 -> :sswitch_98d
        0x134 -> :sswitch_6ce
        0x190 -> :sswitch_60
        0x191 -> :sswitch_13f
        0x192 -> :sswitch_181
        0x193 -> :sswitch_21f
        0x1f4 -> :sswitch_2c3
        0x1f5 -> :sswitch_30c
        0x1f6 -> :sswitch_38d
        0x258 -> :sswitch_a32
        0x259 -> :sswitch_a76
        0x25a -> :sswitch_aa4
        0x25b -> :sswitch_afc
        0x2bc -> :sswitch_404
        0x2bd -> :sswitch_4ac
        0x2be -> :sswitch_543
        0x2bf -> :sswitch_477
        0x2c0 -> :sswitch_43b
        0x384 -> :sswitch_b56
        0x3e8 -> :sswitch_bbf
        0x44c -> :sswitch_1254
        0x44d -> :sswitch_10e2
        0x44e -> :sswitch_c1d
        0x44f -> :sswitch_b52
        0x4b0 -> :sswitch_10e5
        0x514 -> :sswitch_112e
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1781
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1783
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 1784
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1785
    const/4 v7, 0x0

    .line 1786
    sparse-switch v1, :sswitch_data_118

    .line 1841
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update not supported on URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1788
    :sswitch_33
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1789
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->updateAudio(Landroid/content/ContentValues;J)I

    move-result v0

    .line 1847
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1848
    return v0

    .line 1792
    :sswitch_4c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1793
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1795
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_71

    .line 1797
    :cond_62
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/music/store/Store;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    goto :goto_3f

    .line 1800
    :cond_71
    const-string v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1803
    const-string v3, "album_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1804
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendAlbumToPlaylist(JJ)I

    move-result v0

    goto :goto_3f

    .line 1806
    :cond_88
    const-string v4, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1809
    const-string v3, "AlbumArtistId"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1811
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendArtistToPlaylist(JJ)I

    move-result v0

    goto :goto_3f

    .line 1813
    :cond_9f
    const-string v4, "genre"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1816
    const-string v3, "GenreId"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1817
    const-string v5, "album_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    .line 1818
    const-string v5, "album_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJJ)I

    move-result v0

    goto/16 :goto_3f

    .line 1821
    :cond_c9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJ)I

    move-result v0

    goto/16 :goto_3f

    .line 1824
    :cond_cf
    const-string v4, "playlist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    .line 1827
    const-string v3, "playlist_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1828
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendPlaylistToPlaylist(JJ)I

    move-result v0

    goto/16 :goto_3f

    .line 1833
    :sswitch_e7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1834
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1835
    const-string v5, "moveBefore"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1837
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->movePlaylistItem(JJJ)V

    move v0, v7

    .line 1838
    goto/16 :goto_3f

    :cond_114
    move v0, v7

    goto/16 :goto_3f

    .line 1786
    nop

    :sswitch_data_118
    .sparse-switch
        0x12d -> :sswitch_33
        0x259 -> :sswitch_4c
        0x25b -> :sswitch_e7
    .end sparse-switch
.end method
