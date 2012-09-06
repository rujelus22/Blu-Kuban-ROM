.class public Lcom/google/android/music/store/MusicContentProvider;
.super Landroid/content/ContentProvider;
.source "MusicContentProvider.java"


# static fields
.field private static final DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

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

.field private static sSuggestedSeedsMap:Ljava/util/HashMap;
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

    .line 67
    const-string v0, "MusicContentProvider"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    .line 199
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(SongId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    .line 210
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id))"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(distinct(AlbumId)) FROM MUSIC WHERE (AlbumArtistId=search_artist_id OR ArtistId=search_artist_id) AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    .line 220
    new-array v0, v11, [Ljava/lang/String;

    const-string v1, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id)"

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(SELECT count(1) FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=LISTS.Id AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

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

    .line 226
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

    .line 2083
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 2084
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2085
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/selected/*"

    const/16 v3, 0x132

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2087
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/store"

    const/16 v3, 0x133

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2089
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/thumbsup"

    const/16 v3, 0x134

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2091
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/#"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2092
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "DownloadQueue"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2093
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "play"

    const/16 v3, 0x131

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2095
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/search_suggest_query"

    const/16 v3, 0x44f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2097
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/search_suggest_query/*"

    const/16 v3, 0x44e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2099
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search"

    const/16 v3, 0x44d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2100
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "search/*"

    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2102
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "audio/recent"

    const/16 v3, 0x130

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2105
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/#/audio"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2108
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#/audio"

    const/16 v3, 0x12f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2112
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2113
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/artists"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2115
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/store"

    const/16 v3, 0x193

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2117
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "album/#"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2120
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2121
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2123
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artists/#/album"

    const/16 v3, 0x1f6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2126
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2127
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2129
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#/members"

    const/16 v3, 0x25a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2132
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlists/#/members/#"

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2134
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2135
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#/members"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2138
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#/album"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2141
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/album"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2143
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "genres/#"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2145
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "albumart/#"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2146
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "playlistfauxart/#"

    const/16 v3, 0x322

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2148
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "artistfauxart/#"

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2150
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "albumorfauxart/#"

    const/16 v3, 0x323

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2152
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "albumfauxart/#"

    const/16 v3, 0x324

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2154
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "Recent"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2156
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "MediaStore/audio/#"

    const/16 v3, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2159
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "account"

    const/16 v3, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2162
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "seeds"

    const/16 v3, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2164
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "seeds/#"

    const/16 v3, 0x579

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2166
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.music.MusicContent"

    const-string v2, "remote"

    const/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2168
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "albumorfauxart"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2172
    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "playlistfauxart"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2176
    sget-object v2, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "artistfauxart"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 2181
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "audio_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2184
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2185
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2186
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addDomainMapping(Ljava/util/HashMap;)V

    .line 2188
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 2189
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "audio_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2192
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct(SongId))"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2194
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 2197
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "GenreId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "Genre"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalGenre"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2200
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "AlbumArtist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "count(distinct MUSIC.SongId)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct GenreId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2206
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v9, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2208
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 2209
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalAlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "isTrackOnly"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct AlbumArtistId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2216
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2218
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    .line 2219
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "ArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "Artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "isTrackOnly"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct ArtistId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2226
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v9, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2227
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 2230
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "MUSIC.AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "MUSIC.AlbumId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalAlbum"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2234
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_art"

    const-string v5, "\'\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "CanonicalAlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "count(distinct MUSIC.SongId)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "HasDifferentTrackArtists"

    const-string v5, "((min(MUSIC.ArtistId) != MUSIC.AlbumArtistId) OR (max(MUSIC.ArtistId) != MUSIC.AlbumArtistId))"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(distinct MUSIC.AlbumId)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2243
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v8}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2245
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    .line 2246
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "c_album_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_id"

    const-string v5, "c_album_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album"

    const-string v5, "c_album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "CanonicalAlbum"

    const-string v5, "c_canonicalAlbum"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_art"

    const-string v5, "\'\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist"

    const-string v5, "c_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artistSort"

    const-string v5, "c_canonicalArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "artist_id"

    const-string v5, "c_artistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "SongCount"

    const-string v5, "c_songCount"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "KEEPON.KeepOnId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType IN (100,200,300) LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=c_album_id AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 2269
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "LISTS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "name"

    const-string v5, "LISTS.Name"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "playlist_id"

    const-string v5, "Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2275
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "KEEPON.KeepOnId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType IN (100,200,300) LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS (SELECT 1 FROM LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE (ListId=LISTS.Id) AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    const-string v4, "ListType"

    const-string v5, "ListType"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 2284
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "LISTITEMS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "audio_id"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "playlist_id"

    const-string v5, "LISTS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "play_order"

    const-string v5, "ClientPosition"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2293
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2294
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Lcom/google/android/music/store/MusicContentProvider;->addCategoryMappings(Ljava/util/HashMap;ZZ)V

    .line 2296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 2297
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "RecentId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "ItemDate"

    const-string v5, "ItemDate"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "RecentReason"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2300
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "RecentAlbumId"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2301
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_name"

    const-string v5, "Album"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_artist"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_artist_id"

    const-string v5, "AlbumArtistId"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "album_artist_sort"

    const-string v5, "CanonicalAlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "RecentListId"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2309
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "list_name"

    const-string v5, "LISTS.Name"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "ListType"

    const-string v5, "ListType"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=RecentAlbumId AND LocalCopyType IN (100,200,300) LIMIT 1)"

    const-string v6, "EXISTS(select 1 from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=RecentListId AND LocalCopyType IN (100,200,300) LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "EXISTS(select 1 from MUSIC WHERE AlbumId=RecentAlbumId AND LocalCopyType <>300 LIMIT 1)"

    const-string v6, "EXISTS(select 1 from LISTITEMS JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId)  WHERE ListId=RecentListId AND LocalCopyType <>300 LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "KeepOnId"

    const-string v5, "(select KeepOnId from KEEPON WHERE AlbumId=RecentAlbumId LIMIT 1)"

    const-string v6, "(select KeepOnId from KEEPON WHERE ListId=RecentListId LIMIT 1)"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_text_1"

    const-string v5, "Album"

    const-string v6, "LISTS.Name"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_text_2"

    const-string v5, "AlbumArtist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
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

    .line 2350
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

    .line 2354
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_intent_data_id"

    const-string v5, "RecentAlbumId"

    const-string v6, "RecentListId"

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/store/MusicContentProvider;->addRecentAlbumOrPlaylistMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_last_access_hint"

    const-string v5, "ItemDate"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "suggest_shortcut_id"

    const-string v5, "\'_-1\'"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    const-string v4, "MIN(count(distinct RecentId),50)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2365
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    .line 2366
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "_id"

    const-string v5, "SUGGESTED_SEEDS.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "SeedAudioId"

    const-string v5, "MUSIC.Id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/google/android/music/store/MusicContentProvider;->addAudioMapping(Ljava/util/HashMap;)V

    .line 2370
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "SeedListId"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2371
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "count(*)"

    invoke-static {v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addExistsAndCountMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2372
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "hasLocal"

    const-string v5, "LocalCopyType IN (100,200,300)"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    const-string v4, "hasRemote"

    const-string v5, "1"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    new-array v3, v11, [Ljava/util/HashMap;

    sput-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    .line 2376
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v9

    .line 2377
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v3, v3, v9

    .line 2378
    const-string v4, "searchType"

    const-string v5, "search_type"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const-string v4, "ListType"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const-string v4, "_id"

    const-string v5, "search_artist_id"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v4, "searchName"

    const-string v5, "search_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v4, "searchSortName"

    const-string v5, "search_canonical_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const-string v4, "Artist"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    const-string v4, "AlbumArtist"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const-string v4, "AlbumArtistId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    const-string v4, "Album"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    const-string v4, "duration"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const-string v4, "year"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    const-string v4, "AlbumId"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    const-string v4, "suggest_text_1"

    const-string v5, "search_artist"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    const-string v4, "suggest_text_2"

    const-string v5, "null"

    invoke-static {v3, v4, v5}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
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

    .line 2394
    const-string v2, "suggest_intent_data"

    const-string v4, "search_intent"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v2, "suggest_intent_data_id"

    const-string v4, "search_artist_id"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    const-string v2, "suggest_last_access_hint"

    const-string v4, "null"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    const-string v2, "suggest_shortcut_id"

    const-string v4, "\'_-1\'"

    invoke-static {v3, v2, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v4, v2, v8

    .line 2400
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v4, v2, v10

    .line 2401
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v3, "itemCount"

    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_SONG_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2402
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    const-string v3, "albumCount"

    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->SEARCH_ALBUM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    .line 2405
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchType"

    const-string v4, "\'3\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "ListType"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchName"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "searchSortName"

    const-string v4, "CanonicalAlbum"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "Artist"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtist"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtistId"

    const-string v4, "AlbumArtistId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "Album"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "itemCount"

    const-string v4, "count(distinct songid)"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "albumCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2417
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "year"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "AlbumId"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_1"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_2"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
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

    .line 2423
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

    .line 2425
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_intent_data_id"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_last_access_hint"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    const-string v3, "suggest_shortcut_id"

    const-string v4, "\'_-1\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    .line 2431
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchType"

    const-string v4, "\'5\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "ListType"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "Id"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchName"

    const-string v4, "Title"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "searchSortName"

    const-string v4, "CanonicalName"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "Artist"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtist"

    const-string v4, "AlbumArtist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumArtistId"

    const-string v4, "AlbumArtistId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "Album"

    const-string v4, "Album"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "itemCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "albumCount"

    const-string v4, "\'\'"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "Duration"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "year"

    const-string v4, "Year"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "AlbumId"

    const-string v4, "AlbumId"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_1"

    const-string v4, "Title"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v3, "suggest_text_2"

    const-string v4, "Artist"

    invoke-static {v2, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
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

    .line 2452
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

    .line 2454
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_intent_data_id"

    const-string v3, "Id"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_last_access_hint"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    const-string v2, "suggest_shortcut_id"

    const-string v3, "\'_-1\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    new-array v0, v11, [Ljava/util/HashMap;

    sput-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    .line 2460
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, v0, v9

    .line 2461
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v0, v0, v9

    .line 2462
    const-string v2, "searchType"

    const-string v3, "\'4\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const-string v2, "ListType"

    const-string v3, "ListType"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    const-string v2, "_id"

    const-string v3, "Id"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    const-string v2, "searchName"

    const-string v3, "Name"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    const-string v2, "searchSortName"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    const-string v2, "Artist"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    const-string v2, "AlbumArtist"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    const-string v2, "AlbumArtistId"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const-string v2, "Album"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    const-string v2, "albumCount"

    const-string v3, "\'\'"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const-string v2, "duration"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const-string v2, "year"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    const-string v2, "AlbumId"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    const-string v2, "suggest_text_1"

    const-string v3, "Name"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    const-string v2, "suggest_text_2"

    const-string v3, "null"

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
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

    .line 2481
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

    .line 2483
    const-string v1, "suggest_intent_data_id"

    const-string v2, "Id"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    const-string v1, "suggest_last_access_hint"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const-string v1, "suggest_shortcut_id"

    const-string v2, "\'_-1\'"

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v8

    .line 2488
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v10

    .line 2489
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    const-string v1, "itemCount"

    sget-object v2, Lcom/google/android/music/store/MusicContentProvider;->LIST_ITEM_COUNT_EXPRESSIONS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMappings([Ljava/util/HashMap;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2490
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
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
    .line 2027
    const-string v0, "title"

    const-string v1, "Title"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const-string v0, "CanonicalName"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2029
    const-string v0, "album"

    const-string v1, "Album"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v0, "CanonicalAlbum"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2031
    const-string v0, "album_id"

    const-string v1, "MUSIC.AlbumId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v0, "artist"

    const-string v1, "Artist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v0, "artist_id"

    const-string v1, "ArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    const-string v0, "artistSort"

    const-string v1, "CanonicalAlbumArtist"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    const-string v0, "AlbumArtistId"

    const-string v1, "MUSIC.AlbumArtistId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    const-string v0, "AlbumArtist"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2043
    const-string v0, "AlbumArtistId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2045
    const-string v0, "composer"

    const-string v1, "Composer"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    const-string v0, "Genre"

    const-string v1, "Genre"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    const-string v0, "GenreId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2050
    const-string v0, "year"

    const-string v1, "Year"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const-string v0, "duration"

    const-string v1, "Duration"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string v0, "TrackCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2053
    const-string v0, "track"

    const-string v1, "TrackNumber"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string v0, "DiscCount"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2055
    const-string v0, "DiscNumber"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2056
    const-string v0, "Compilation"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2057
    const-string v0, "BitRate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2058
    const-string v0, "FileDate"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2059
    const-string v0, "Size"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2060
    const-string v0, "Rating"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2062
    const-string v0, "StoreId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2063
    const-string v0, "SongId"

    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2066
    const-string v0, "bookmark"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    const-string v0, "is_podcast"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v0, "is_music"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v0, "mime_type"

    const-string v1, "\'audio/*\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    const-string v0, "album_art"

    const-string v1, "\'\'"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v0, "SourceId"

    const-string v1, "MUSIC.SourceId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string v0, "SourceAccount"

    const-string v1, "MUSIC.SourceAccount"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
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
    .line 1977
    if-eqz p1, :cond_9

    .line 1978
    const-string v0, "KeepOnId"

    const-string v1, "KEEPON.KeepOnId"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    :cond_9
    const-string v1, "hasLocal"

    if-eqz p2, :cond_1c

    const-string v0, "(MAX(LocalCopyType)  IN (100,200,300))"

    :goto_f
    invoke-static {p0, v1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v1, "hasRemote"

    if-eqz p2, :cond_1f

    const-string v0, "(MIN(LocalCopyType)  <>300)"

    :goto_18
    invoke-static {p0, v1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    return-void

    .line 1981
    :cond_1c
    const-string v0, "LocalCopyType IN (100,200,300)"

    goto :goto_f

    .line 1982
    :cond_1f
    const-string v0, "LocalCopyType <>300"

    goto :goto_18
.end method

.method private static addDomainMapping(Ljava/util/HashMap;)V
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
    .line 2079
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "domainParam"

    const-string v1, "null"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    return-void
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
    .line 1966
    const-string v0, "_count"

    invoke-static {p0, v0, p1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
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

    .line 1971
    const-string v0, "hasAny"

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
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
    .line 1988
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
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
    .line 1998
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

    .line 1999
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
    .line 2003
    .local p0, maps:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    .line 2004
    aget-object v1, p0, v0

    aget-object v2, p2, v0

    invoke-static {v1, p1, v2}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2006
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
    .line 2010
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CASE"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2011
    const/4 v0, 0x0

    :goto_8
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_26

    .line 2012
    const-string v2, " WHEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    const-string v2, " IS NOT NULL THEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    add-int/lit8 v0, v0, 0x2

    goto :goto_8

    .line 2017
    :cond_26
    const-string v0, " END"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->addMapping(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
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
    .line 2022
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

    .line 2024
    return-void
.end method

.method private static appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter "buffer"
    .parameter "condition"

    .prologue
    .line 1656
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1657
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1659
    :cond_b
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1661
    return-object p0
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V
    .registers 4
    .parameter "out"
    .parameter "uri"

    .prologue
    .line 1669
    invoke-direct {p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v0

    .line 1670
    .local v0, filter:I
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 1671
    return-void
.end method

.method private appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V
    .registers 5
    .parameter "out"
    .parameter "uri"
    .parameter "filter"

    .prologue
    .line 1674
    if-eqz p3, :cond_9

    .line 1675
    sget-object v0, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {p1, v0}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1677
    :cond_9
    return-void
.end method

.method private static arrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1a

    .line 457
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 458
    if-lez v0, :cond_12

    .line 459
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_12
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 464
    .end local v0           #i:I
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static checkWritePermission()V
    .registers 3

    .prologue
    .line 1956
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_42

    .line 1957
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

    .line 1960
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Music content provider access is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1962
    :cond_42
    return-void
.end method

.method private static countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1651
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

.method private getFauxAlbumArt(JII)Landroid/os/ParcelFileDescriptor;
    .registers 17
    .parameter "albumId"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v7, 0x0

    .line 414
    .local v7, albumName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 416
    .local v8, artistName:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    .line 420
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 423
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_34

    :try_start_24
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 424
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 425
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_4b

    move-result-object v8

    .line 428
    :cond_34
    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_50

    .line 432
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-wide v5, p1

    move v9, p3

    move/from16 v10, p4

    invoke-static/range {v3 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtPipe(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 435
    :goto_4a
    return-object v0

    .line 428
    :catchall_4b
    move-exception v0

    invoke-static {v11}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 435
    :cond_50
    const/4 v4, 0x0

    move-object v3, p0

    move-wide v5, p1

    move v9, p3

    move/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_4a
.end method

.method private getMusicFilterIndex()I
    .registers 2

    .prologue
    .line 1665
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Filters;->getMusicFilterIndex(Landroid/content/Context;)I

    move-result v0

    return v0
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
    .line 486
    const/4 v0, 0x1

    .line 487
    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 488
    const-string v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 489
    const-string v1, "MUSIC.CanonicalName"

    .line 504
    :goto_13
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 490
    :cond_1d
    const-string v1, "album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 491
    const-string v1, "CanonicalAlbum, DiscNumber, TrackNumber, CanonicalName"

    goto :goto_13

    .line 492
    :cond_28
    const-string v1, "artist"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 493
    const-string v1, "CanonicalArtist, CanonicalName"

    goto :goto_13

    .line 494
    :cond_33
    const-string v0, "date"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 495
    if-eqz p2, :cond_44

    const-string v0, "MAX(MUSIC.FileDate) DESC "

    .line 497
    :goto_3f
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_13

    .line 495
    :cond_44
    const-string v0, "MUSIC.FileDate DESC "

    goto :goto_3f

    .line 499
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

    .line 502
    :cond_60
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private getStaticFauxArt(IJII)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .parameter "style"
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 442
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, v4

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private getStaticFauxArt(IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 17
    .parameter "style"
    .parameter "id"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtFile(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v8

    .line 449
    .local v8, f:Ljava/io/File;
    const/high16 v0, 0x1000

    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private hasCount([Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 468
    .line 469
    if-eqz p1, :cond_1d

    move v0, v1

    .line 470
    :goto_5
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 471
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

    .line 477
    :cond_1d
    if-eqz v1, :cond_2d

    array-length v0, p1

    if-le v0, v2, :cond_2d

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can be the only column in the projection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 481
    :cond_2d
    return v1
.end method

.method private static isPlayQueue(Lcom/google/android/music/store/Store;J)Z
    .registers 6
    .parameter "store"
    .parameter "playlistId"

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/google/android/music/store/Store;->getPlayQueuePlaylist()Lcom/google/android/music/store/PlayList;

    move-result-object v0

    .line 1934
    .local v0, queue:Lcom/google/android/music/store/PlayList;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static parseIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_a

    .line 260
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result p2

    .line 265
    :cond_a
    :goto_a
    return p2

    .line 261
    :catch_b
    move-exception v0

    .line 262
    const-string v0, "MusicContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not parse param \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" from URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private updateAudio(Landroid/content/ContentValues;J)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1939
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 1940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only rating can be update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_10
    const-string v0, "Rating"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1943
    if-nez v0, :cond_20

    .line 1944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing value for rating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1946
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/music/store/Store;->updateRating(JI)I

    move-result v0

    .line 1947
    if-lez v0, :cond_42

    .line 1949
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$XAudio;->getThumbsUpAudioUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1952
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
    .line 1809
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1810
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1812
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->areUpstreamTrackDeletesEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 1815
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 1816
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1817
    const/4 v1, 0x1

    .line 1818
    sparse-switch v4, :sswitch_data_c6

    .line 1846
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

    .line 1820
    :sswitch_3e
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1821
    if-eqz v3, :cond_62

    .line 1822
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/google/android/music/store/Store;->deleteAllMatchingMusicFiles(Landroid/content/Context;JZ)I

    move-result v1

    .line 1824
    if-lez v1, :cond_60

    const/4 v0, 0x1

    .line 1850
    :goto_50
    const/4 v2, 0x0

    invoke-virtual {v5, p1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1851
    const/16 v0, 0x12d

    if-ne v4, v0, :cond_5f

    .line 1853
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1855
    :cond_5f
    return v1

    .line 1824
    :cond_60
    const/4 v0, 0x0

    goto :goto_50

    .line 1826
    :cond_62
    invoke-virtual {v2, v0, v6, v7}, Lcom/google/android/music/store/Store;->deleteAllMatchingLocalMusicFiles(Landroid/content/Context;J)I

    move-result v1

    .line 1828
    const/4 v0, 0x0

    .line 1830
    goto :goto_50

    .line 1832
    :sswitch_68
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1833
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v7}, Lcom/google/android/music/store/Store;->deletePlaylist(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    :goto_7b
    move v10, v1

    move v1, v0

    move v0, v10

    .line 1834
    goto :goto_50

    .line 1833
    :cond_7f
    const/4 v0, 0x0

    goto :goto_7b

    .line 1836
    :sswitch_81
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1837
    invoke-static {v2, v6, v7}, Lcom/google/android/music/store/MusicContentProvider;->isPlayQueue(Lcom/google/android/music/store/Store;J)Z

    move-result v0

    if-nez v0, :cond_b2

    const/4 v0, 0x1

    move v1, v0

    .line 1838
    :goto_98
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1839
    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/google/android/music/store/Store;->deletePlaylistItem(JJ)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    :goto_ae
    move v10, v1

    move v1, v0

    move v0, v10

    .line 1840
    goto :goto_50

    .line 1837
    :cond_b2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_98

    .line 1839
    :cond_b5
    const/4 v0, 0x0

    goto :goto_ae

    .line 1842
    :sswitch_b7
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/store/Store;->deleteRemoteMusicAndPlaylists(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_c4

    const/4 v0, 0x1

    .line 1843
    :goto_bf
    const/4 v1, 0x0

    move v10, v1

    move v1, v0

    move v0, v10

    .line 1844
    goto :goto_50

    .line 1842
    :cond_c4
    const/4 v0, 0x0

    goto :goto_bf

    .line 1818
    :sswitch_data_c6
    .sparse-switch
        0x12d -> :sswitch_3e
        0x259 -> :sswitch_68
        0x25b -> :sswitch_81
        0x5dc -> :sswitch_b7
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1681
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_74

    .line 1756
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

    .line 1757
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

    .line 1758
    throw v0

    .line 1690
    :sswitch_3a
    const-string v0, "vnd.android.cursor.dir/vnd.google.xaudio"

    .line 1753
    :goto_3c
    return-object v0

    .line 1695
    :sswitch_3d
    const-string v0, "vnd.android.cursor.item/vnd.google.xaudio"

    goto :goto_3c

    .line 1702
    :sswitch_40
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.album"

    goto :goto_3c

    .line 1705
    :sswitch_43
    const-string v0, "vnd.android.cursor.item/vnd.google.music.album"

    goto :goto_3c

    .line 1708
    :sswitch_46
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.artist"

    goto :goto_3c

    .line 1711
    :sswitch_49
    const-string v0, "vnd.android.cursor.item/vnd.google.music.artist"

    goto :goto_3c

    .line 1715
    :sswitch_4c
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.genre"

    goto :goto_3c

    .line 1718
    :sswitch_4f
    const-string v0, "vnd.android.cursor.item/vnd.google.music.genre"

    goto :goto_3c

    .line 1723
    :sswitch_52
    const-string v0, "vnd.android.cursor.item/vnd.google.music.albumart"

    goto :goto_3c

    .line 1726
    :sswitch_55
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.recent"

    goto :goto_3c

    .line 1729
    :sswitch_58
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.downloadqueue"

    goto :goto_3c

    .line 1732
    :sswitch_5b
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.playlist"

    goto :goto_3c

    .line 1735
    :sswitch_5e
    const-string v0, "vnd.android.cursor.item/vnd.google.music.playlist"

    goto :goto_3c

    .line 1738
    :sswitch_61
    const-string v0, "vnd.android.cursor.dir/vnd.google.listitems"

    goto :goto_3c

    .line 1741
    :sswitch_64
    const-string v0, "vnd.android.cursor.item/vnd.google.listitems"

    goto :goto_3c

    .line 1744
    :sswitch_67
    const-string v0, "vnd.android.cursor.item/vnd.google.music.account"

    goto :goto_3c

    .line 1747
    :sswitch_6a
    const-string v0, "vnd.android.cursor.dir/vnd.google.music.seeds"

    goto :goto_3c

    .line 1750
    :sswitch_6d
    const-string v0, "vnd.android.cursor.item/vnd.google.music.seeds"

    goto :goto_3c

    .line 1753
    :sswitch_70
    const-string v0, "vnd.android.cursor.dir/vnd.google.xaudio"

    goto :goto_3c

    .line 1681
    nop

    :sswitch_data_74
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
        0x323 -> :sswitch_52
        0x324 -> :sswitch_52
        0x384 -> :sswitch_55
        0x3e8 -> :sswitch_58
        0x4b0 -> :sswitch_3d
        0x514 -> :sswitch_67
        0x578 -> :sswitch_6a
        0x579 -> :sswitch_6d
        0x5dc -> :sswitch_70
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

    .line 1765
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1767
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    .line 1768
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1771
    packed-switch v0, :pswitch_data_aa

    .line 1796
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

    .line 1773
    :pswitch_45
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    invoke-virtual {v2, v0}, Lcom/google/android/music/store/Store;->createPlaylist(Ljava/lang/String;)J

    move-result-wide v2

    .line 1775
    invoke-static {v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1800
    :goto_53
    if-eqz v0, :cond_60

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1803
    :cond_60
    return-object v0

    .line 1778
    :pswitch_61
    const-string v0, "audio_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1779
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-eqz v0, :cond_77

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eq v0, v8, :cond_7f

    .line 1780
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When inserting playlist items, the music id must be provided and nothing else"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_7f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1786
    :try_start_8d
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/google/android/music/store/Store;->appendPlaylistItem(JJ)J

    move-result-wide v2

    .line 1787
    cmp-long v0, v2, v9

    if-eqz v0, :cond_a8

    .line 1788
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_9c} :catch_9e

    move-result-object v0

    goto :goto_53

    .line 1790
    :catch_9e
    move-exception v0

    .line 1791
    const-string v2, "MusicContentProvider"

    const-string v3, "Failed to insert playlist item"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 1793
    goto :goto_53

    :cond_a8
    move-object v0, v1

    goto :goto_53

    .line 1771
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
    .line 252
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 278
    sget-object v0, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 279
    const-string v0, "w"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->parseIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v6

    .line 280
    const-string v0, "h"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->parseIntegerParameter(Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v7

    .line 282
    const/16 v0, 0x320

    if-eq v5, v0, :cond_25

    const/16 v0, 0x323

    if-ne v5, v0, :cond_123

    .line 283
    :cond_25
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_46

    .line 287
    sget-boolean v0, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v0, :cond_3e

    const-string v0, "MusicContentProvider"

    const-string v1, "Unknown album art requested"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_3e
    :goto_3e
    if-nez v2, :cond_215

    .line 402
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 290
    :cond_46
    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 295
    :try_start_4f
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isConfiguredStreamingAccount()Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_c3

    move-result v10

    .line 297
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 299
    if-eqz v10, :cond_5c

    .line 302
    invoke-virtual {v4, v8, v9}, Lcom/google/android/music/store/Store;->getArtwork(J)Landroid/util/Pair;

    move-result-object v3

    .line 305
    :cond_5c
    if-nez v3, :cond_c8

    const/4 v0, 0x0

    .line 307
    :goto_5f
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v0, v0, v11

    if-nez v0, :cond_242

    .line 309
    :cond_71
    invoke-virtual {v4, v8, v9}, Lcom/google/android/music/store/Store;->getArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_242

    .line 312
    const-string v1, "mediastore:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 315
    const-string v1, "mediastore:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent$AlbumArt;->getMediaStoreAlbumArt(J)Landroid/net/Uri;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_245

    .line 321
    :try_start_93
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "r"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a0} :catch_dd

    move-result-object v0

    :goto_a1
    move-object v1, v3

    move-object v2, v0

    .line 341
    :goto_a3
    if-nez v2, :cond_3e

    .line 342
    if-eqz v1, :cond_119

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveArtworkPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 344
    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_3e

    .line 297
    :catchall_c3
    move-exception v0

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v0

    .line 305
    :cond_c8
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v11, v0, v1}, Lcom/google/android/music/dl/cache/CacheUtils;->resolveArtworkPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_5f

    .line 323
    :catch_dd
    move-exception v0

    move-object v0, v2

    goto :goto_a1

    .line 327
    :cond_e0
    if-eqz v10, :cond_242

    .line 329
    sget-boolean v0, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v0, :cond_fe

    .line 330
    const-string v0, "MusicContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attemping to download album art: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_fe
    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 334
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    const-string v4, "com.android.music.REMOTE_ALBUM_ART_REQUESTED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v4, "albumId"

    invoke-virtual {v3, v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 337
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object v1, v0

    goto :goto_a3

    .line 345
    :cond_119
    const/16 v0, 0x323

    if-ne v5, v0, :cond_3e

    .line 346
    invoke-direct {p0, v8, v9, v6, v7}, Lcom/google/android/music/store/MusicContentProvider;->getFauxAlbumArt(JII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_3e

    .line 350
    :cond_123
    const/16 v0, 0x324

    if-ne v5, v0, :cond_135

    .line 351
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 352
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/google/android/music/store/MusicContentProvider;->getFauxAlbumArt(JII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_3e

    .line 353
    :cond_135
    const/16 v0, 0x322

    if-ne v5, v0, :cond_18a

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 355
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 359
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8, v9}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 363
    :try_start_15d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 364
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_17c

    move-result-object v4

    .line 366
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_181

    .line 369
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-wide v2, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtPipe(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_179
    move-object v2, v0

    .line 375
    goto/16 :goto_3e

    .line 366
    :catchall_17c
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 372
    :cond_181
    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_179

    .line 376
    :cond_18a
    const/16 v0, 0x321

    if-ne v5, v0, :cond_19e

    .line 377
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 378
    const/4 v3, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/store/MusicContentProvider;->getStaticFauxArt(IJII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_3e

    .line 380
    :cond_19e
    const/16 v0, 0x12d

    if-ne v5, v0, :cond_1f7

    .line 381
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_3e

    .line 383
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v1, v3

    .line 384
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v3, v5

    .line 385
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/google/android/music/store/Store;->getSourceAccountAndId(J[I[Ljava/lang/String;)V

    .line 386
    const/4 v0, 0x0

    aget v0, v1, v0

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    aget-object v0, v3, v0

    if-eqz v0, :cond_3e

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 393
    const-string v2, "r"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto/16 :goto_3e

    .line 398
    :cond_1f7
    const-string v0, "MusicContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized openFile request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 404
    :cond_215
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_241

    .line 405
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

    .line 406
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 408
    :cond_241
    return-object v2

    :cond_242
    move-object v1, v3

    goto/16 :goto_a3

    :cond_245
    move-object v0, v2

    goto/16 :goto_a1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 32
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v24

    .line 513
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 514
    const/4 v11, 0x0

    .line 515
    const/4 v7, 0x1

    .line 517
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 518
    const/4 v5, 0x0

    .line 519
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 522
    const/4 v3, 0x0

    .line 525
    if-eqz p2, :cond_5e

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5e

    const-string v4, "hasAny"

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v4, 0x1

    move v10, v4

    .line 527
    :goto_3b
    if-eqz v10, :cond_1318

    .line 528
    const-string v8, "1"

    .line 529
    const/4 v6, 0x0

    .line 532
    :goto_40
    sparse-switch v9, :sswitch_data_131c

    .line 1599
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

    .line 525
    :cond_5e
    const/4 v4, 0x0

    move v10, v4

    goto :goto_3b

    .line 535
    :sswitch_61
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v9

    .line 536
    if-eqz v10, :cond_d9

    .line 537
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v3, v5

    move-object v4, v6

    .line 566
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v9}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    .line 567
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    move-object v10, v8

    move-object v9, v4

    move-object/from16 v6, p4

    move v8, v7

    move-object/from16 v4, p2

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v5, p3

    .line 1602
    :goto_82
    if-eqz v3, :cond_87

    .line 1603
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1606
    :cond_87
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_b0

    .line 1607
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1608
    sget-boolean v12, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v12, :cond_ad

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

    .line 1609
    :cond_ad
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1612
    :cond_b0
    if-eqz v8, :cond_126b

    .line 1613
    if-eqz v5, :cond_1269

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1269

    .line 1614
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

    .line 538
    :cond_d9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 539
    if-nez v9, :cond_f0

    .line 540
    const-string v2, "MUSIC"

    const-string v3, "AlbumId"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1642
    :cond_ef
    :goto_ef
    return-object v2

    .line 542
    :cond_f0
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 543
    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_6e

    .line 545
    :cond_fa
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 547
    const-string v3, "MUSIC.AlbumId"

    .line 548
    const-string v4, "MUSIC.CanonicalAlbum"

    .line 551
    const-string v5, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6e

    .line 553
    const-string v6, "artist"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 554
    const-string v4, "MUSIC.CanonicalAlbumArtist, MUSIC.CanonicalAlbum"

    goto/16 :goto_6e

    .line 559
    :cond_11f
    const-string v6, "album"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 560
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

    .line 572
    :sswitch_140
    if-nez v10, :cond_14c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 573
    :cond_14c
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 579
    :goto_151
    const/4 v6, 0x0

    .line 580
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MUSIC.AlbumId="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 587
    goto/16 :goto_82

    .line 575
    :cond_17a
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 577
    const-string v5, "MUSIC.AlbumId"

    goto :goto_151

    .line 590
    :sswitch_182
    if-nez v10, :cond_18e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 591
    :cond_18e
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 594
    :cond_194
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 595
    sget-object v2, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v4

    aget-object v4, v2, v4

    .line 596
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_217

    const/4 v2, 0x1

    .line 600
    :goto_1a8
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 601
    const-string v5, "SELECT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistClustersProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    const-string v5, " FROM (SELECT AlbumId AS c_album_id, Album AS c_album, AlbumArtist AS c_artist, AlbumArtistId AS c_artistId, CanonicalAlbumArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    if-eqz v2, :cond_1cc

    .line 616
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    :cond_1cc
    const-string v5, " GROUP BY AlbumId, AlbumArtistId UNION SELECT AlbumId AS c_album_id, Album AS c_album, Artist AS c_artist, ArtistId AS c_artistId, CanonicalArtist AS c_canonicalArtist, CanonicalAlbum AS c_canonicalAlbum, count(distinct(SongId)) AS c_songCount FROM MUSIC WHERE (ArtistId<>AlbumArtistId) AND EXISTS(SELECT 1 FROM MUSIC AS m WHERE m.AlbumArtistId=MUSIC.ArtistId"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    if-eqz v2, :cond_1dc

    .line 640
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    :cond_1dc
    const-string v5, " LIMIT 1) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    if-eqz v2, :cond_1ec

    .line 647
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    :cond_1ec
    const-string v2, " GROUP BY AlbumId, ArtistId) LEFT JOIN KEEPON ON (c_album_id=AlbumId) ORDER BY c_canonicalArtist, c_canonicalAlbum"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 661
    :try_start_1f5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_210

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 664
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_210
    .catchall {:try_start_1f5 .. :try_end_210} :catchall_219

    .line 668
    :cond_210
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ef

    .line 596
    :cond_217
    const/4 v2, 0x0

    goto :goto_1a8

    .line 668
    :catchall_219
    move-exception v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 676
    :sswitch_220
    const-string v3, "storeAlbumId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_271

    const/4 v3, 0x1

    .line 678
    :goto_22f
    if-eqz v3, :cond_273

    .line 679
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StoreAlbumId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/google/android/music/utils/DbUtils;->quoteStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    :goto_24b
    const-string v4, "TrackType IN (2,3,1)"

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    if-nez v10, :cond_25c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27b

    .line 694
    :cond_25c
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 695
    const/4 v3, 0x0

    .line 722
    :cond_262
    :goto_262
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v6, p4

    move v8, v7

    move-object v3, v4

    move-object v7, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 724
    goto/16 :goto_82

    .line 677
    :cond_271
    const/4 v3, 0x0

    goto :goto_22f

    .line 682
    :cond_273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    goto :goto_24b

    .line 697
    :cond_27b
    const-string v4, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 699
    const-string v5, "MUSIC.AlbumId"

    .line 700
    if-eqz v3, :cond_286

    .line 701
    const/4 v3, 0x0

    goto :goto_262

    .line 703
    :cond_286
    const-string v3, "MUSIC.CanonicalAlbum"

    .line 706
    const-string v4, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 707
    if-eqz v4, :cond_262

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_262

    .line 708
    const-string v6, "artist"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a3

    .line 709
    const-string v3, "MUSIC.CanonicalAlbumArtist, MUSIC.CanonicalAlbum"

    goto :goto_262

    .line 714
    :cond_2a3
    const-string v6, "album"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_262

    .line 715
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

    .line 727
    :sswitch_2c4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v3

    .line 728
    if-eqz v10, :cond_2e4

    .line 729
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 743
    :goto_2cf
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    .line 744
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 746
    goto/16 :goto_82

    .line 730
    :cond_2e4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_303

    .line 731
    if-nez v3, :cond_2fc

    .line 732
    const-string v2, "MUSIC"

    const-string v3, "AlbumArtistId"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_ef

    .line 734
    :cond_2fc
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 735
    const/4 v6, 0x0

    goto :goto_2cf

    .line 737
    :cond_303
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 739
    const-string v5, "MUSIC.AlbumArtistId"

    .line 740
    const-string v6, "MUSIC.CanonicalAlbumArtist"

    goto :goto_2cf

    .line 750
    :sswitch_30d
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    .line 761
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 763
    if-nez v10, :cond_327

    :try_start_31d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34e

    .line 764
    :cond_327
    const-string v4, "MUSIC"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 769
    :goto_32c
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sAlbumArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 770
    const-string v5, "MUSIC.AlbumArtistId=?"

    const-string v7, "MUSIC.AlbumArtistId"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 774
    if-eqz v4, :cond_35b

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_343
    .catchall {:try_start_31d .. :try_end_343} :catchall_354

    move-result v5

    if-lez v5, :cond_35b

    .line 793
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v2, v4

    goto/16 :goto_ef

    .line 766
    :cond_34e
    :try_start_34e
    const-string v4, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumArtistId = KEEPON.ArtistId) "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_353
    .catchall {:try_start_34e .. :try_end_353} :catchall_354

    goto :goto_32c

    .line 793
    :catchall_354
    move-exception v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 777
    :cond_35b
    :try_start_35b
    invoke-static {v4}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 778
    const-string v4, "MUSIC"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 779
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sTrackArtistsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 780
    const-string v5, "MUSIC.ArtistId=?"

    const-string v7, "MUSIC.ArtistId"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 786
    if-eqz v2, :cond_387

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v2, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 788
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_387
    .catchall {:try_start_35b .. :try_end_387} :catchall_354

    .line 793
    :cond_387
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ef

    .line 799
    :sswitch_38e
    if-nez v10, :cond_39a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3fa

    .line 800
    :cond_39a
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 801
    const/4 v3, 0x0

    move-object v4, v3

    .line 809
    :goto_3a1
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 811
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 812
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MUSIC.AlbumArtistId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "MUSIC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ArtistId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v8

    move-object v9, v4

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 818
    goto/16 :goto_82

    .line 803
    :cond_3fa
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 806
    const-string v5, "MUSIC.AlbumId"

    .line 807
    const-string v3, "MUSIC.CanonicalAlbum"

    move-object v4, v3

    goto :goto_3a1

    .line 821
    :sswitch_405
    if-nez v10, :cond_411

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_432

    .line 822
    :cond_411
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 823
    const/4 v3, 0x0

    .line 829
    :goto_417
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 832
    const-string v6, "MUSIC.GenreId > 0"

    invoke-static {v12, v6}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v6, p4

    move v8, v7

    move-object v3, v4

    move-object v7, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 835
    goto/16 :goto_82

    .line 825
    :cond_432
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 826
    const-string v5, "MUSIC.GenreId"

    .line 827
    const-string v3, "MUSIC.CanonicalGenre"

    goto :goto_417

    .line 839
    :sswitch_43c
    if-nez v10, :cond_44a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44a

    .line 840
    const-string v5, "MUSIC.GenreId"

    .line 842
    :cond_44a
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 843
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

    .line 845
    const/4 v6, 0x0

    .line 846
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 849
    goto/16 :goto_82

    .line 852
    :sswitch_478
    if-nez v10, :cond_484

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48a

    .line 853
    :cond_484
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 855
    :cond_48a
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 856
    const-string v6, "MUSIC.CanonicalGenre, MUSIC.CanonicalAlbum"

    .line 858
    const-string v5, "MUSIC.AlbumId, MUSIC.GenreId"

    .line 862
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGenresProjectionMap:Ljava/util/HashMap;

    .line 863
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 865
    const-string v4, "MUSIC.GenreId > 0"

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 867
    goto/16 :goto_82

    .line 870
    :sswitch_4ad
    if-nez v10, :cond_4b9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_519

    .line 871
    :cond_4b9
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 872
    const/4 v3, 0x0

    move-object v4, v3

    .line 887
    :goto_4c0
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenreId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 893
    const-string v3, "albumIdFilter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 894
    if-eqz v3, :cond_1302

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MUSIC.AlbumId = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 897
    const-string v3, "DiscNumber, TrackNumber, CanonicalName"

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v4, p2

    move v8, v7

    move-object v3, v6

    move-object/from16 v6, p4

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 874
    :cond_519
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 875
    const-string v5, "MUSIC.SongId"

    .line 877
    if-eqz v6, :cond_52a

    .line 878
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 880
    :cond_52a
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

    .line 882
    if-nez v3, :cond_130f

    .line 884
    const-string v3, "MUSIC.CanonicalName"

    move-object v4, v3

    goto/16 :goto_4c0

    .line 903
    :sswitch_544
    if-nez v10, :cond_550

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58e

    .line 904
    :cond_550
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 905
    const/4 v3, 0x0

    move-object v4, v3

    .line 913
    :goto_557
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sAlbumsProjectionMap:Ljava/util/HashMap;

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MUSIC.GenreId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v8

    move-object v9, v4

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 920
    goto/16 :goto_82

    .line 907
    :cond_58e
    const-string v3, "MUSIC LEFT  JOIN KEEPON ON (MUSIC.AlbumId = KEEPON.AlbumId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 910
    const-string v5, "MUSIC.AlbumId"

    .line 911
    const-string v3, "MUSIC.CanonicalAlbum"

    move-object v4, v3

    goto :goto_557

    .line 922
    :sswitch_599
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v9

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d9

    .line 925
    if-nez v9, :cond_5c2

    if-eqz p3, :cond_5b6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5c2

    .line 928
    :cond_5b6
    const-string v2, "MUSIC"

    const-string v3, "SongId"

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/google/android/music/store/MusicContentProvider;->countGroups(Lcom/google/android/music/store/Store;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_ef

    .line 930
    :cond_5c2
    const/4 v4, 0x0

    .line 990
    :goto_5c3
    const/4 v7, 0x0

    .line 991
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1, v9}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;I)V

    move-object v10, v8

    move-object v9, v4

    move-object/from16 v6, p4

    move v8, v7

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 993
    goto/16 :goto_82

    .line 931
    :cond_5d9
    if-nez v10, :cond_12ff

    .line 933
    if-eqz v6, :cond_5e5

    .line 934
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_5e5
    const-string v3, "order"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/google/android/music/store/MusicContentProvider;->getSortOrderFromQueryParam(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    .line 938
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 939
    if-nez v3, :cond_12fc

    .line 941
    const-string v3, "CanonicalName"

    move-object v4, v3

    .line 979
    :goto_5fd
    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_61c

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SongId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 985
    const/4 v4, 0x0

    goto :goto_5c3

    .line 987
    :cond_61c
    const-string v5, "SongId"

    goto :goto_5c3

    .line 997
    :sswitch_61f
    if-nez v10, :cond_62b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a2

    .line 998
    :cond_62b
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 999
    const/4 v3, 0x0

    .line 1014
    :cond_631
    :goto_631
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SongId IN (SELECT SongId FROM MUSIC"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6cc

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

    :goto_668
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " ORDER BY "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "MUSIC.FileDate DESC "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " LIMIT "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v9, 0x1f4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ")"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1024
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v4, p2

    move v8, v7

    move-object v3, v6

    move-object/from16 v6, p4

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1026
    goto/16 :goto_82

    .line 1001
    :cond_6a2
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1002
    const-string v5, "MUSIC.SongId"

    .line 1004
    if-eqz v6, :cond_6b3

    .line 1005
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1007
    :cond_6b3
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

    .line 1009
    if-nez v3, :cond_631

    .line 1010
    const-string v3, "MAX(MUSIC.FileDate) DESC "

    goto/16 :goto_631

    .line 1017
    :cond_6cc
    const-string v4, ""

    goto :goto_668

    .line 1030
    :sswitch_6cf
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1031
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1032
    const-string v3, "Rating > 3"

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    if-nez v10, :cond_6e9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6fc

    .line 1036
    :cond_6e9
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1037
    const/4 v6, 0x0

    move-object v3, v4

    move-object v10, v8

    move-object v9, v6

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1039
    :cond_6fc
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1040
    const-string v5, "MUSIC.SongId"

    .line 1042
    if-eqz v6, :cond_70d

    .line 1043
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    :cond_70d
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

    .line 1047
    if-nez v3, :cond_724

    .line 1048
    const-string v3, "MUSIC.CanonicalName"

    .line 1053
    :cond_724
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SongId IN (SELECT SongId FROM MUSIC WHERE ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "))"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1056
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1057
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v6, p4

    move v8, v7

    move-object v3, v4

    move-object v7, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1060
    goto/16 :goto_82

    .line 1063
    :sswitch_755
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1064
    if-nez v10, :cond_766

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79e

    .line 1065
    :cond_766
    const/4 v6, 0x0

    .line 1075
    :cond_767
    :goto_767
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MUSIC.AlbumId="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x1

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v4

    move-object v10, v8

    move-object v9, v6

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1081
    goto/16 :goto_82

    .line 1068
    :cond_79e
    const-string v5, "MUSIC.SongId"

    .line 1070
    if-nez v6, :cond_767

    .line 1071
    const-string v6, "DiscNumber, TrackNumber, CanonicalName"

    goto :goto_767

    .line 1085
    :sswitch_7a5
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1086
    if-nez v10, :cond_7b6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_805

    .line 1087
    :cond_7b6
    const/4 v3, 0x0

    move-object v4, v3

    .line 1102
    :goto_7b8
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1103
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AlbumArtistId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ArtistId"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    move-object v3, v6

    move-object v10, v8

    move-object v9, v4

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1110
    goto/16 :goto_82

    .line 1090
    :cond_805
    const-string v5, "MUSIC.SongId"

    .line 1091
    if-eqz v6, :cond_811

    .line 1092
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "sortOrder not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1094
    :cond_811
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

    .line 1096
    if-nez v3, :cond_12f9

    .line 1098
    const-string v3, "MUSIC.CanonicalName"

    move-object v4, v3

    goto :goto_7b8

    .line 1113
    :sswitch_82a
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1114
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 1116
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 1118
    const-string v4, "vers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1119
    if-nez v4, :cond_865

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MUSIC.Id="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1123
    :cond_865
    const-string v8, "1"

    .line 1124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SongId=(SELECT SongId FROM MUSIC as m WHERE m.Id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT 1)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1129
    const-string v9, "media"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8af

    .line 1130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SourceAccount="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1134
    :cond_8af
    const-string v9, "remote"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8db

    .line 1135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SourceAccount<>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Lcom/google/android/music/store/MusicFile;->MEDIA_STORE_SOURCE_ACCOUNT_AS_STRING:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1139
    :cond_8db
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

    .line 1150
    :sswitch_8f4
    const-string v3, ","

    invoke-static {v3}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v3

    .line 1151
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1152
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1153
    const-string v3, "("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    const/4 v3, 0x0

    .line 1155
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_12f6

    .line 1156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must have at least one id in selection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1158
    :goto_91f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_955

    .line 1159
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1160
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1161
    const-string v10, "select "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v10, " as sel_id, "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1162
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v10, " as sel_pos "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1163
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_953

    .line 1164
    const-string v4, " UNION ALL "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_953
    move v4, v3

    .line 1166
    goto :goto_91f

    .line 1167
    :cond_955
    const-string v3, ") as selected JOIN "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "MUSIC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ON ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1168
    const-string v3, "MUSIC.Id"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "selected.sel_id) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1170
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1171
    const-string v6, "selected.sel_pos"

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1173
    goto/16 :goto_82

    .line 1177
    :sswitch_98e
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sGroupedMusicProjectionMap:Ljava/util/HashMap;

    .line 1179
    const-string v3, "storeSongId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9c9

    .line 1181
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1189
    :goto_9a5
    const-string v3, "TrackType IN (2,3,1)"

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    if-nez v10, :cond_9b6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9e4

    .line 1196
    :cond_9b6
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1197
    const/4 v6, 0x0

    move-object v3, v4

    move-object v10, v8

    move-object v9, v6

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1183
    :cond_9c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StoreId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/music/utils/DbUtils;->quoteStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9a5

    .line 1199
    :cond_9e4
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1200
    const-string v5, "MUSIC.SongId"

    .line 1202
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

    .line 1204
    if-nez v3, :cond_a02

    .line 1205
    const-string v3, "MAX(MUSIC.FileDate) DESC "

    .line 1210
    :cond_a02
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SongId IN (SELECT SongId FROM MUSIC WHERE ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "))"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1213
    const/4 v9, 0x0

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1214
    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v9, v3

    move-object/from16 v6, p4

    move v8, v7

    move-object v3, v4

    move-object v7, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1217
    goto/16 :goto_82

    .line 1225
    :sswitch_a33
    sget-object v6, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 1227
    if-nez v10, :cond_a41

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a74

    .line 1228
    :cond_a41
    const-string v3, "LISTS"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1229
    const/4 v3, 0x0

    .line 1236
    :goto_a47
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1237
    if-eqz v4, :cond_12f3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_12f3

    .line 1238
    const-string p3, "LISTS.Name=?"

    .line 1239
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/4 v7, 0x0

    aput-object v4, p4, v7

    .line 1240
    const/4 v4, 0x0

    .line 1243
    :goto_a62
    const-string v7, "ListType IN (0, 1)"

    invoke-static {v12, v7}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v10, v8

    move-object v9, v3

    move v8, v4

    move-object v3, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    .line 1245
    goto/16 :goto_82

    .line 1231
    :cond_a74
    const-string v3, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1233
    const-string v3, "LISTS.Name COLLATE UNICODE ASC"

    goto :goto_a47

    .line 1248
    :sswitch_a7c
    const-string v3, "LISTS LEFT  JOIN KEEPON ON (KEEPON.ListId = LISTS.Id) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1249
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

    .line 1251
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistsProjectionMap:Ljava/util/HashMap;

    .line 1253
    const/4 v6, 0x0

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1254
    goto/16 :goto_82

    .line 1258
    :sswitch_aaa
    const-string v3, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1260
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LISTS.Id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1265
    if-nez v10, :cond_ae9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_af7

    .line 1266
    :cond_ae9
    const/4 v3, 0x0

    :goto_aea
    move-object v10, v8

    move-object v9, v3

    move-object/from16 v6, p4

    move v8, v7

    move-object v3, v4

    move-object v7, v5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    .line 1271
    goto/16 :goto_82

    .line 1268
    :cond_af7
    const-string v3, "ServerOrder, ClientPosition"

    goto :goto_aea

    .line 1274
    :sswitch_afa
    const-string v3, "LISTITEMS JOIN LISTS ON (LISTS.Id = LISTITEMS.ListId)  JOIN MUSIC ON (LISTITEMS.MusicSourceAccount=MUSIC.SourceAccount AND LISTITEMS.MusicSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1276
    sget-object v9, Lcom/google/android/music/store/MusicContentProvider;->sPlaylistMembersProjectionMap:Ljava/util/HashMap;

    .line 1278
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1279
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x3

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1280
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

    move-object v3, v9

    move-object v10, v8

    move-object/from16 v4, p2

    move v8, v7

    move-object v9, v6

    move-object/from16 v6, p4

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1284
    goto/16 :goto_82

    .line 1287
    :sswitch_b50
    if-nez p2, :cond_b54

    .line 1288
    sget-object p2, Lcom/google/android/music/store/MusicContentProvider;->DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

    .line 1290
    :cond_b54
    const/4 v3, 0x1

    .line 1293
    :sswitch_b55
    const-string v4, "RECENT LEFT JOIN MUSIC ON (RecentAlbumId=MUSIC.AlbumId)  LEFT JOIN LISTS ON (RecentListId=LISTS.Id) "

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1294
    sget-object v9, Lcom/google/android/music/store/MusicContentProvider;->sRecentProjectionMap:Ljava/util/HashMap;

    .line 1295
    if-nez v10, :cond_12f0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12f0

    .line 1296
    const-string v5, "RecentId"

    .line 1297
    if-nez v3, :cond_12f0

    .line 1298
    const-string v6, "Priority DESC, ItemDate DESC"

    .line 1300
    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1304
    :goto_b74
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v8

    .line 1305
    const-string v4, ""

    .line 1306
    if-eqz v8, :cond_b93

    .line 1307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    aget-object v8, v10, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1310
    :cond_b93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LISTS.Id NOT NULL OR (MUSIC.AlbumId NOT NULL "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1317
    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v10, v3

    move v8, v7

    move-object/from16 v4, p2

    move-object v7, v5

    move-object v3, v9

    move-object/from16 v5, p3

    move-object v9, v6

    move-object/from16 v6, p4

    .line 1318
    goto/16 :goto_82

    .line 1321
    :sswitch_bbc
    if-eqz p3, :cond_bd9

    .line 1322
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

    .line 1324
    :cond_bd9
    if-nez p2, :cond_bf6

    .line 1325
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

    .line 1329
    :cond_bf6
    new-instance v3, Lcom/google/android/music/store/CurrentDownloadsCursor;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lcom/google/android/music/store/CurrentDownloadsCursor;-><init>([Ljava/lang/String;)V

    .line 1331
    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/google/android/music/store/CurrentDownloadsCursor;->getMusicIds()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v4}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v4

    .line 1334
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_ef

    .line 1337
    :sswitch_c1a
    if-nez p2, :cond_c1e

    .line 1338
    sget-object p2, Lcom/google/android/music/store/MusicContentProvider;->DEFAULT_SEARCH_SUGGESTIONS_PROJECTION:[Ljava/lang/String;

    .line 1340
    :cond_c1e
    const/4 v3, 0x1

    move/from16 v23, v3

    move-object/from16 v4, p2

    .line 1343
    :goto_c23
    if-nez v4, :cond_c2d

    .line 1344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null projection not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1350
    :cond_c2d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 1351
    if-eqz v5, :cond_c3a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x2

    if-ge v3, v6, :cond_c3d

    .line 1352
    :cond_c3a
    const/4 v2, 0x0

    goto/16 :goto_ef

    .line 1354
    :cond_c3d
    const/4 v6, 0x1

    .line 1355
    new-instance v3, Lcom/google/android/music/store/TagNormalizer;

    invoke-direct {v3}, Lcom/google/android/music/store/TagNormalizer;-><init>()V

    .line 1356
    invoke-virtual {v3, v5}, Lcom/google/android/music/store/TagNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1357
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_12ec

    .line 1360
    const/4 v3, 0x0

    move/from16 v20, v3

    move-object v3, v5

    .line 1363
    :goto_c52
    const/16 v6, 0x21

    invoke-static {v5, v6}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 1364
    const/16 v6, 0x21

    invoke-static {v3, v6}, Lcom/google/android/music/utils/DbUtils;->escapeForLikeOperator(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 1366
    const-string v6, " LIKE ? ESCAPE \'!\' "

    .line 1368
    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v6

    .line 1372
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "% "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    .line 1380
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1382
    :try_start_cce
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getMusicFilterIndex()I

    move-result v11

    .line 1383
    const-string v5, ""

    .line 1384
    if-eqz v11, :cond_12e8

    .line 1385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/google/android/music/store/Filters;->FILTERS:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    .line 1387
    :goto_cef
    const-string v5, "MUSIC"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1388
    if-eqz v20, :cond_10a8

    const-string v5, "CanonicalAlbumArtist"

    move-object v7, v5

    .line 1391
    :goto_cf9
    if-eqz v20, :cond_10ad

    const-string v5, "CanonicalArtist"

    .line 1393
    :goto_cfd
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 1394
    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v10, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    const/4 v10, 0x0

    array-length v12, v6

    array-length v13, v6

    invoke-static {v6, v10, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1399
    if-eqz v8, :cond_d16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_12e5

    .line 1400
    :cond_d16
    const-string v10, "1000"

    .line 1402
    :goto_d18
    sget-object v8, Lcom/google/android/music/store/MusicContentProvider;->sSearchArtistMaps:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    invoke-static {v4, v8}, Lcom/google/android/music/utils/DbUtils;->formatProjection([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 1404
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " FROM "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "SELECT "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\' as "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "search_type"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "AlbumArtistId"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " as "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "search_artist_id"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "AlbumArtist"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " as "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "search_artist"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ", "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "CanonicalAlbumArtist"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " as "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "search_canonical_artist"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " as "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "search_intent"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " FROM "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "MUSIC"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " WHERE ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " LIKE ? ESCAPE \'!\' "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " OR "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v23, :cond_10b1

    const-string v5, ""

    :goto_f59
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " LIMIT "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1452
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchAlbumMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1453
    if-eqz v20, :cond_10b9

    .line 1454
    const-string v5, "CanonicalAlbum"

    .line 1463
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

    if-eqz v23, :cond_10b5

    const/4 v9, 0x0

    :goto_fd7
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v21, v5

    .line 1485
    :goto_fdd
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    .line 1488
    const-string v5, "LISTS"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1489
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchPlaylistMaps:[Ljava/util/HashMap;

    aget-object v5, v5, v11

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1490
    const-string v5, "Name"

    .line 1491
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

    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ListType IN (0, 1)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v23, :cond_1101

    const/16 v18, 0x0

    :goto_1031
    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1495
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 1497
    const-string v5, "MUSIC"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1498
    sget-object v5, Lcom/google/android/music/store/MusicContentProvider;->sSearchTrackMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1499
    if-eqz v20, :cond_1105

    const-string v5, "CanonicalName"

    .line 1500
    :goto_104b
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

    if-eqz v23, :cond_1109

    const/4 v9, 0x0

    :goto_1086
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1514
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_108d
    .catchall {:try_start_cce .. :try_end_108d} :catchall_110d

    .line 1516
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1518
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v25, v3, v5

    const/4 v5, 0x1

    aput-object v21, v3, v5

    const/4 v5, 0x2

    aput-object v11, v3, v5

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_ef

    .line 1388
    :cond_10a8
    :try_start_10a8
    const-string v5, "AlbumArtist"

    move-object v7, v5

    goto/16 :goto_cf9

    .line 1391
    :cond_10ad
    const-string v5, "Artist"

    goto/16 :goto_cfd

    .line 1404
    :cond_10b1
    const-string v5, " ORDER BY search_canonical_artist"

    goto/16 :goto_f59

    .line 1463
    :cond_10b5
    const-string v9, "CanonicalAlbum"

    goto/16 :goto_fd7

    .line 1475
    :cond_10b9
    const-string v5, "Album"

    .line 1476
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

    if-eqz v23, :cond_10fe

    const/4 v9, 0x0

    :goto_10f6
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object/from16 v21, v5

    goto/16 :goto_fdd

    :cond_10fe
    const-string v9, "CanonicalAlbum"

    goto :goto_10f6

    .line 1491
    :cond_1101
    const-string v18, "Name"

    goto/16 :goto_1031

    .line 1499
    :cond_1105
    const-string v5, "Title"

    goto/16 :goto_104b

    .line 1500
    :cond_1109
    const-string v9, "CanonicalName"
    :try_end_110b
    .catchall {:try_start_10a8 .. :try_end_110b} :catchall_110d

    goto/16 :goto_1086

    .line 1516
    :catchall_110d
    move-exception v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    .line 1522
    :sswitch_1114
    const/4 v2, 0x0

    goto/16 :goto_ef

    .line 1524
    :sswitch_1117
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1526
    :try_start_111f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v3, v4, v10}, Lcom/google/android/music/store/Store;->getMusicIdForSystemMediaStoreId(JZ)J

    move-result-wide v9

    .line 1528
    const-string v3, "MUSIC"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1529
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sMusicProjectionMap:Ljava/util/HashMap;

    .line 1530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MUSIC.Id="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1149
    .catch Ljava/io/FileNotFoundException; {:try_start_111f .. :try_end_1149} :catch_1155

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1534
    goto/16 :goto_82

    .line 1531
    :catch_1155
    move-exception v2

    .line 1533
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    goto/16 :goto_ef

    .line 1545
    :sswitch_1160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_11b0

    .line 1547
    const-string v2, "MusicContentProvider"

    const-string v3, "Not enough permissions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
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

    .line 1553
    :cond_11b0
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "type"

    aput-object v4, v3, v2

    .line 1557
    if-eqz p2, :cond_11cf

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11cf

    .line 1558
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported projection for account query"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1560
    :cond_11cf
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    .line 1565
    :try_start_11df
    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;
    :try_end_11e2
    .catchall {:try_start_11df .. :try_end_11e2} :catchall_11fa

    move-result-object v3

    .line 1567
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 1569
    if-eqz v3, :cond_ef

    .line 1570
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_ef

    .line 1567
    :catchall_11fa
    move-exception v2

    invoke-static/range {p0 .. p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v2

    .line 1575
    :sswitch_11ff
    const-string v3, "SUGGESTED_SEEDS JOIN MUSIC ON (SeedSourceAccount=MUSIC.SourceAccount AND SeedTrackSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1577
    sget-object v3, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    .line 1578
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/google/android/music/store/MusicContentProvider;->appendMusicFilteringCondition(Ljava/lang/StringBuffer;Landroid/net/Uri;)V

    .line 1580
    if-nez v10, :cond_1219

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->hasCount([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1226

    .line 1581
    :cond_1219
    const/4 v6, 0x0

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    .line 1585
    :cond_1226
    const-string v6, "SUGGESTED_SEEDS.Id"

    move-object v10, v8

    move-object v9, v6

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move v8, v7

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1587
    goto/16 :goto_82

    .line 1590
    :sswitch_1234
    const-string v3, "SUGGESTED_SEEDS JOIN MUSIC ON (SeedSourceAccount=MUSIC.SourceAccount AND SeedTrackSourceId=MUSIC.SourceId) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1592
    sget-object v4, Lcom/google/android/music/store/MusicContentProvider;->sSuggestedSeedsMap:Ljava/util/HashMap;

    .line 1594
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1595
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUGGESTED_SEEDS.Id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/google/android/music/store/MusicContentProvider;->appendAndCondition(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v3, v4

    move-object v10, v8

    move-object v9, v6

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    .line 1597
    goto/16 :goto_82

    .line 1617
    :cond_1269
    const/4 v5, 0x0

    .line 1618
    const/4 v6, 0x0

    .line 1620
    :cond_126b
    sget-boolean v3, Lcom/google/android/music/store/MusicContentProvider;->LOGV:Z

    if-eqz v3, :cond_12b9

    .line 1622
    invoke-static {v4}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-static {v6}, Lcom/google/android/music/store/MusicContentProvider;->arrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1625
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

    .line 1629
    :cond_12b9
    invoke-virtual {v2, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 1631
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1633
    const/4 v8, 0x0

    :try_start_12c1
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1636
    if-eqz v2, :cond_12d7

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v2, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1638
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_12d7
    .catchall {:try_start_12c1 .. :try_end_12d7} :catchall_12de

    .line 1642
    :cond_12d7
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_ef

    :catchall_12de
    move-exception v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2

    :cond_12e5
    move-object v10, v8

    goto/16 :goto_d18

    :cond_12e8
    move-object/from16 v22, v5

    goto/16 :goto_cef

    :cond_12ec
    move/from16 v20, v6

    goto/16 :goto_c52

    :cond_12f0
    move-object v3, v8

    goto/16 :goto_b74

    :cond_12f3
    move v4, v7

    goto/16 :goto_a62

    :cond_12f6
    move v4, v3

    goto/16 :goto_91f

    :cond_12f9
    move-object v4, v3

    goto/16 :goto_7b8

    :cond_12fc
    move-object v4, v3

    goto/16 :goto_5fd

    :cond_12ff
    move-object v4, v6

    goto/16 :goto_5c3

    :cond_1302
    move-object v3, v6

    move-object v10, v8

    move-object v9, v4

    move v8, v7

    move-object/from16 v6, p4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p3

    goto/16 :goto_82

    :cond_130f
    move-object v4, v3

    goto/16 :goto_4c0

    :sswitch_1312
    move/from16 v23, v3

    move-object/from16 v4, p2

    goto/16 :goto_c23

    :cond_1318
    move-object/from16 v6, p5

    goto/16 :goto_40

    .line 532
    :sswitch_data_131c
    .sparse-switch
        0x12c -> :sswitch_599
        0x12d -> :sswitch_82a
        0x12e -> :sswitch_755
        0x12f -> :sswitch_7a5
        0x130 -> :sswitch_61f
        0x132 -> :sswitch_8f4
        0x133 -> :sswitch_98e
        0x134 -> :sswitch_6cf
        0x190 -> :sswitch_61
        0x191 -> :sswitch_140
        0x192 -> :sswitch_182
        0x193 -> :sswitch_220
        0x1f4 -> :sswitch_2c4
        0x1f5 -> :sswitch_30d
        0x1f6 -> :sswitch_38e
        0x258 -> :sswitch_a33
        0x259 -> :sswitch_a7c
        0x25a -> :sswitch_aaa
        0x25b -> :sswitch_afa
        0x2bc -> :sswitch_405
        0x2bd -> :sswitch_4ad
        0x2be -> :sswitch_544
        0x2bf -> :sswitch_478
        0x2c0 -> :sswitch_43c
        0x384 -> :sswitch_b55
        0x3e8 -> :sswitch_bbc
        0x44c -> :sswitch_1312
        0x44d -> :sswitch_1114
        0x44e -> :sswitch_c1a
        0x44f -> :sswitch_b50
        0x4b0 -> :sswitch_1117
        0x514 -> :sswitch_1160
        0x578 -> :sswitch_11ff
        0x579 -> :sswitch_1234
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1861
    invoke-static {}, Lcom/google/android/music/store/MusicContentProvider;->checkWritePermission()V

    .line 1863
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 1864
    sget-object v1, Lcom/google/android/music/store/MusicContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1866
    sparse-switch v1, :sswitch_data_11c

    .line 1922
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

    .line 1868
    :sswitch_33
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1869
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/music/store/MusicContentProvider;->updateAudio(Landroid/content/ContentValues;J)I

    move-result v8

    .line 1928
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1929
    return v8

    .line 1872
    :sswitch_4c
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1873
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1875
    if-eqz v3, :cond_62

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_71

    .line 1877
    :cond_62
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1878
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/music/store/Store;->renamePlaylist(Landroid/content/Context;JLjava/lang/String;)I

    move-result v8

    goto :goto_3f

    .line 1880
    :cond_71
    const-string v4, "album"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1883
    const-string v3, "album_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1884
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendAlbumToPlaylist(JJ)I

    move-result v8

    goto :goto_3f

    .line 1886
    :cond_88
    const-string v4, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 1889
    const-string v3, "AlbumArtistId"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1891
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendArtistToPlaylist(JJ)I

    move-result v8

    goto :goto_3f

    .line 1893
    :cond_9f
    const-string v4, "genre"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1896
    const-string v3, "GenreId"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1897
    const-string v5, "album_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1898
    const-string v5, "album_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJJ)I

    move-result v0

    :goto_c7
    move v8, v0

    .line 1904
    goto/16 :goto_3f

    .line 1901
    :cond_ca
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendGenreToPlaylist(JJ)I

    move-result v0

    goto :goto_c7

    .line 1904
    :cond_cf
    const-string v4, "playlist"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1907
    const-string v3, "playlist_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1908
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/Store;->appendPlaylistToPlaylist(JJ)I

    move-result v8

    goto/16 :goto_3f

    .line 1913
    :sswitch_e7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1914
    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContentProvider;->isPlayQueue(Lcom/google/android/music/store/Store;J)Z

    move-result v3

    if-nez v3, :cond_119

    .line 1915
    :goto_fb
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1916
    const-string v5, "moveBefore"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1918
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->movePlaylistItem(JJJ)V

    goto/16 :goto_3f

    :cond_119
    move v7, v8

    .line 1914
    goto :goto_fb

    .line 1866
    nop

    :sswitch_data_11c
    .sparse-switch
        0x12d -> :sswitch_33
        0x259 -> :sswitch_4c
        0x25b -> :sswitch_e7
    .end sparse-switch
.end method
