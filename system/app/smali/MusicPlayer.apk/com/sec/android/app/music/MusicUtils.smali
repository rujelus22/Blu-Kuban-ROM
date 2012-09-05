.class public Lcom/sec/android/app/music/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;,
        Lcom/sec/android/app/music/MusicUtils$LogEntry;,
        Lcom/sec/android/app/music/MusicUtils$QueryArgs;,
        Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;,
        Lcom/sec/android/app/music/MusicUtils$ServiceBinder;,
        Lcom/sec/android/app/music/MusicUtils$ServiceToken;
    }
.end annotation


# static fields
.field public static final ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ALBUM_PROJECTION:[Ljava/lang/String;

.field public static final ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final ARTIST_PROJECTION:[Ljava/lang/String;

.field private static final CLASSNAME:Ljava/lang/String;

.field public static final COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final COMPOSER_PROJECTION:[Ljava/lang/String;

.field public static final FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final GENRE_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static final PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

.field public static PLAY_LIST_PROJECTION:[Ljava/lang/String;

.field public static PLAY_LIST_TRACK_PROJECTION:[Ljava/lang/String;

.field private static ROServerUrl:[Ljava/lang/String;

.field public static final SAMSUNG_ARTIST_PROJECTION:[Ljava/lang/String;

.field public static SAMSUNG_FOLDER_PROJECTION:[Ljava/lang/String;

.field public static final SAMSUNG_YEAR_PROJECTION:[Ljava/lang/String;

.field public static TRACK_PROJECTION:[Ljava/lang/String;

.field private static WAPServerUrl:[Ljava/lang/String;

.field public static final YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final YEAR_PROJECTION:[Ljava/lang/String;

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static mSelectServer:I

.field private static mStorageDirectory:Ljava/lang/String;

.field private static mToast:Landroid/widget/Toast;

.field public static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/music/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field public static final sDefalutAlbumArtId:[I

.field private static volatile sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

.field private static volatile sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

.field private static sDefaultArtwork:Landroid/graphics/Bitmap;

.field private static volatile sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

.field private static volatile sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

.field private static final sEmptyList:[J

.field private static final sExternalMediaUri:Ljava/lang/String;

.field public static final sFolderArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static final sGridArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsHeadsetPlugged:Z

.field public static sIsMusicPlayerResume:Z

.field private static sLogPtr:I

.field private static sMusicLog:[Lcom/sec/android/app/music/MusicUtils$LogEntry;

.field public static final sPlayListArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static sQuickPlayListId:J

.field public static sReorderPlayListId:J

.field public static sService:Lcom/sec/android/app/music/ICorePlayerService;

.field private static sTime:Landroid/text/format/Time;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    const-class v0, Lcom/sec/android/app/music/MusicUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    .line 92
    sput-boolean v3, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    .line 94
    sput-boolean v3, Lcom/sec/android/app/music/MusicUtils;->sIsMusicPlayerResume:Z

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, ":"

    aput-object v1, v0, v5

    const-string v1, "*"

    aput-object v1, v0, v6

    const-string v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->INVALID_CHAR:[Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 307
    new-array v0, v3, [J

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sEmptyList:[J

    .line 641
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 719
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 854
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 856
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 950
    const/4 v0, -0x2

    sput v0, Lcom/sec/android/app/music/MusicUtils;->sArtId:I

    .line 952
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 954
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 956
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 958
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 960
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 962
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/MusicUtils;->sArtCacheId:I

    .line 969
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 970
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 972
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 973
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    .line 1180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    .line 1411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sPlayListArtCache:Ljava/util/HashMap;

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlistImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

    .line 1516
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sExternalMediaUri:Ljava/lang/String;

    .line 1598
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_292

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    .line 1822
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 1827
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "artist_id"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->ARTIST_PROJECTION:[Ljava/lang/String;

    .line 1833
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "composer"

    aput-object v1, v0, v5

    const-string v1, "composer"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->COMPOSER_PROJECTION:[Ljava/lang/String;

    .line 1838
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "year"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->YEAR_PROJECTION:[Ljava/lang/String;

    .line 1846
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "genre_name"

    aput-object v1, v0, v5

    const-string v1, "genre_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->GENRE_PROJECTION:[Ljava/lang/String;

    .line 1850
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->FOLDER_PROJECTION:[Ljava/lang/String;

    .line 1855
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    .line 1889
    const-string v0, "content://media/external/audio/music_years"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1892
    const-string v0, "content://media/external/audio/music_composers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1895
    const-string v0, "content://media/external/audio/music_genres"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1898
    const-string v0, "content://media/external/audio/music_artists_album_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1901
    const-string v0, "content://media/external/audio/music_albums"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1904
    const-string v0, "content://media/external/audio/music_folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1907
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "bucket_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_FOLDER_PROJECTION:[Ljava/lang/String;

    .line 1912
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_ARTIST_PROJECTION:[Ljava/lang/String;

    .line 1919
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album_id"

    aput-object v1, v0, v4

    const-string v1, "year_name"

    aput-object v1, v0, v5

    const-string v1, "year"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_YEAR_PROJECTION:[Ljava/lang/String;

    .line 2198
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v5

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->TRACK_PROJECTION:[Ljava/lang/String;

    .line 2206
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "album"

    aput-object v1, v0, v6

    const-string v1, "album_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_TRACK_PROJECTION:[Ljava/lang/String;

    .line 2386
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    .line 2633
    const/16 v0, 0x64

    new-array v0, v0, [Lcom/sec/android/app/music/MusicUtils$LogEntry;

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sMusicLog:[Lcom/sec/android/app/music/MusicUtils$LogEntry;

    .line 2635
    sput v3, Lcom/sec/android/app/music/MusicUtils;->sLogPtr:I

    .line 2637
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sTime:Landroid/text/format/Time;

    .line 2667
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "http://211.115.75.161:6708/musicon/ngb.NgbRo.web"

    aput-object v1, v0, v3

    const-string v1, "http://www.musicon.co.kr/musicon/ngb.NgbRo.web"

    aput-object v1, v0, v4

    const-string v1, "http://203.248.248.176/musicon/ngb.NgbRo.web"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->ROServerUrl:[Ljava/lang/String;

    .line 2673
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "wapurl://211.115.75.161:6708/musicon/wap.WAPMain.web"

    aput-object v1, v0, v3

    const-string v1, "wapurl://wapstore.musicon.co.kr/musicon/wap.WAPMain.web"

    aput-object v1, v0, v4

    const-string v1, "wapurl://203.248.248.176/musicon/wap.WAPMain.web"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->WAPServerUrl:[Ljava/lang/String;

    .line 2682
    sput v4, Lcom/sec/android/app/music/MusicUtils;->mSelectServer:I

    .line 2686
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->mStorageDirectory:Ljava/lang/String;

    return-void

    .line 1598
    :array_292
    .array-data 0x4
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3003
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .registers 4
    .parameter "context"
    .parameter "list"

    .prologue
    .line 632
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_5

    .line 639
    :goto_4
    return-void

    .line 636
    :cond_5
    :try_start_5
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/music/ICorePlayerService;->enqueue([JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_4

    .line 637
    :catch_c
    move-exception v0

    goto :goto_4
.end method

.method public static addToPlaylist(Landroid/content/Context;[JJZ)I
    .registers 9
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "isShowMessage"

    .prologue
    .line 675
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToPlaylist play list id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, numinserted:I
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylistInternal(Landroid/content/Context;[JJZ)I

    move-result v0

    .line 678
    invoke-static {p2, p3}, Lcom/sec/android/app/music/MusicUtils;->isCurrentPlaylist(J)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 679
    invoke-static {p0, p1}, Lcom/sec/android/app/music/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 681
    :cond_26
    return v0
.end method

.method private static addToPlaylistInternal(Landroid/content/Context;[JJZ)I
    .registers 21
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "isShowMessage"

    .prologue
    .line 686
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addToPlaylistInternal play list id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v12, 0x0

    .line 688
    .local v12, numinserted:I
    if-nez p1, :cond_25

    .line 691
    const-string v5, "MusicBase"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_24
    :goto_24
    return v12

    .line 693
    :cond_25
    move-object/from16 v0, p1

    array-length v13, v0

    .line 694
    .local v13, size:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 697
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 700
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 701
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 702
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 703
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 704
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 705
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4f
    if-ge v10, v13, :cond_62

    .line 706
    const/16 v5, 0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v10, v5, v8}, Lcom/sec/android/app/music/MusicUtils;->makeInsertItems([JIII)V

    .line 707
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v12, v5

    .line 705
    add-int/lit16 v10, v10, 0x3e8

    goto :goto_4f

    .line 709
    :cond_62
    if-eqz p4, :cond_24

    .line 710
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0009

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v12, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 712
    .local v11, message:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_24
.end method

.method public static addToQuicklist(Landroid/content/Context;[J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2444
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->makeQuickListItem(Landroid/content/Context;)V

    .line 2446
    if-nez p1, :cond_f

    .line 2449
    const-string v0, "MusicBase"

    const-string v1, "ListSelection null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    :goto_e
    return-void

    .line 2451
    :cond_f
    array-length v7, p1

    .line 2452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2455
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v2, v6

    .line 2458
    const-string v1, "external"

    sget-wide v4, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    .line 2460
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2461
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2462
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2463
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v6

    move v3, v6

    .line 2465
    :goto_35
    if-ge v2, v7, :cond_46

    .line 2466
    const/16 v5, 0x3e8

    invoke-static {p1, v2, v5, v4}, Lcom/sec/android/app/music/MusicUtils;->makeInsertItems([JIII)V

    .line 2467
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    add-int/2addr v3, v5

    .line 2465
    add-int/lit16 v2, v2, 0x3e8

    goto :goto_35

    .line 2469
    :cond_46
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 233
    if-nez v0, :cond_40

    .line 236
    :goto_6
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    new-instance v0, Lcom/sec/android/app/music/MusicUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/sec/android/app/music/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 239
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 240
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v0, Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/MusicUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 244
    :goto_36
    return-object v0

    .line 243
    :cond_37
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "Failed to bind to service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    goto :goto_36

    :cond_40
    move-object p0, v0

    goto :goto_6
.end method

.method public static checkIsNetworkConnected(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 2887
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2889
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->checkIsWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2891
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "checkIsNetworkConnected() NO Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    const/4 v0, 0x0

    .line 2895
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public static checkIsWifiEnabled(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2869
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 2870
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2871
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2880
    :goto_17
    return v0

    .line 2874
    :cond_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2875
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_2b

    .line 2876
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/4 v0, 0x1

    goto :goto_17

    .line 2879
    :cond_2b
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2880
    goto :goto_17
.end method

.method public static checkLowStorageforMedia(Landroid/content/Context;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2692
    :try_start_2
    new-instance v2, Landroid/os/StatFs;

    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->mStorageDirectory:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v5, v2

    mul-long v2, v3, v5

    .line 2694
    const-wide/32 v4, 0xa00000

    cmp-long v4, v2, v4

    if-gez v4, :cond_9b

    .line 2695
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / checkLowStorageforMedia "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x400

    div-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_63

    .line 2698
    const v1, 0x7f0900fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/MusicUtils;->mToast:Landroid/widget/Toast;

    .line 2700
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2712
    :goto_62
    return v0

    .line 2702
    :cond_63
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0900fd

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2703
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_70
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_70} :catch_71

    goto :goto_62

    .line 2709
    :catch_71
    move-exception v1

    .line 2710
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkLowStorageforMedia() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->mStorageDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_9b
    move v0, v1

    .line 2707
    goto :goto_62
.end method

.method public static clearAlbumArtCache()V
    .registers 2

    .prologue
    .line 989
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 990
    :try_start_3
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 991
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 992
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 993
    :try_start_c
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 994
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 995
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 996
    :try_start_15
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 997
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 998
    return-void

    .line 991
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 994
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 997
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public static clearGridAlbumArtCache()V
    .registers 2

    .prologue
    .line 1001
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 1002
    :try_start_3
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1003
    monitor-exit v1

    .line 1004
    return-void

    .line 1003
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static clearPlaylist(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v4, 0x0

    .line 549
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearPlaylist play list id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string v1, "external"

    invoke-static {v1, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 551
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    return-void
.end method

.method public static deletePlaylists(Landroid/content/Context;[JZ)V
    .registers 14
    .parameter "context"
    .parameter "list"
    .parameter "isShowMessage"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 379
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v5, p1

    if-ge v1, v5, :cond_34

    .line 383
    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aget-wide v6, p1, v1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 387
    .local v4, uri:Landroid/net/Uri;
    aget-wide v5, p1, v1

    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicUtils;->isCurrentPlaylist(J)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 389
    :try_start_16
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->getQueue()[J

    move-result-object v3

    .line 390
    .local v3, qlist:[J
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/music/ICorePlayerService;->removeTracks(II)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_25} :catch_2f

    .line 395
    .end local v3           #qlist:[J
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 391
    :catch_2f
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_25

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_34
    if-eqz p2, :cond_53

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000b

    array-length v7, p1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    array-length v9, p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, message:Ljava/lang/String;
    invoke-static {p0, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 402
    .end local v2           #message:Ljava/lang/String;
    :cond_53
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[J)V
    .registers 21
    .parameter "context"
    .parameter "list"

    .prologue
    .line 557
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 561
    .local v3, cols:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1f
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_3c

    .line 564
    aget-wide v1, p1, v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 565
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_39

    .line 566
    const-string v1, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_39
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    .line 569
    :cond_3c
    const-string v1, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 573
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_bc

    .line 578
    :try_start_53
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 579
    :goto_56
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7d

    .line 581
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 582
    .local v13, id:J
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1, v13, v14}, Lcom/sec/android/app/music/ICorePlayerService;->removeTrack(J)I

    .line 585
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 586
    .local v7, artIndex:J
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_6e} :catch_7c

    .line 587
    :try_start_6e
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_b6

    .line 589
    :try_start_78
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_56

    .line 591
    .end local v7           #artIndex:J
    .end local v13           #id:J
    :catch_7c
    move-exception v1

    .line 595
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    :goto_8e
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 601
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 602
    .local v16, name:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v11, f:Ljava/io/File;
    :try_start_a0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 610
    const-string v1, "MusicUtils"

    const-string v2, "Failed to delete file "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_ad
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b0
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_b0} :catch_b1

    goto :goto_8e

    .line 614
    :catch_b1
    move-exception v10

    .line 615
    .local v10, ex:Ljava/lang/SecurityException;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8e

    .line 588
    .end local v10           #ex:Ljava/lang/SecurityException;
    .end local v11           #f:Ljava/io/File;
    .end local v16           #name:Ljava/lang/String;
    .restart local v7       #artIndex:J
    .restart local v13       #id:J
    :catchall_b6
    move-exception v1

    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v1
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_b9} :catch_7c

    .line 618
    .end local v7           #artIndex:J
    .end local v13           #id:J
    :cond_b9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v5, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 624
    .local v15, message:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 629
    return-void
.end method

.method static doSearch(Landroid/app/Activity;)V
    .registers 1
    .parameter "a"

    .prologue
    .line 2544
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 2545
    return-void
.end method

.method public static forceStopPackage(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 2754
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "forceStopPackage()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2757
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2758
    return-void
.end method

.method public static getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "song_id"
    .parameter "album_id"
    .parameter "allowdefault"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    .line 1355
    cmp-long v6, p3, v7

    if-gez v6, :cond_1d

    .line 1359
    cmp-long v6, p1, v7

    if-ltz v6, :cond_14

    .line 1360
    const-wide/16 v6, -0x1

    invoke-static {p0, p1, p2, v6, v7}, Lcom/sec/android/app/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1361
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_14

    .line 1404
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_13
    :goto_13
    return-object v0

    .line 1365
    :cond_14
    if-eqz p5, :cond_1b

    .line 1366
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_13

    :cond_1b
    move-object v0, v5

    .line 1368
    goto :goto_13

    .line 1371
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1372
    .local v3, res:Landroid/content/ContentResolver;
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v6, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1373
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_76

    .line 1374
    const/4 v2, 0x0

    .line 1376
    .local v2, in:Ljava/io/InputStream;
    :try_start_2a
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1377
    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_3d

    move-result-object v0

    .line 1396
    if-eqz v2, :cond_13

    .line 1397
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_13

    .line 1399
    :catch_3b
    move-exception v5

    goto :goto_13

    .line 1378
    :catch_3d
    move-exception v1

    .line 1382
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_3e
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/music/MusicUtils;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1383
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_61

    .line 1384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_67

    .line 1385
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1386
    if-nez v0, :cond_67

    if-eqz p5, :cond_67

    .line 1387
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_6f

    move-result-object v0

    .line 1396
    .end local v0           #bm:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_13

    .line 1397
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_13

    .line 1399
    :catch_5f
    move-exception v5

    goto :goto_13

    .line 1390
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_61
    if-eqz p5, :cond_67

    .line 1391
    :try_start_63
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_6f

    move-result-object v0

    .line 1396
    :cond_67
    if-eqz v2, :cond_13

    .line 1397
    :try_start_69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_13

    .line 1399
    :catch_6d
    move-exception v5

    goto :goto_13

    .line 1395
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catchall_6f
    move-exception v5

    .line 1396
    if-eqz v2, :cond_75

    .line 1397
    :try_start_72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_78

    .line 1400
    :cond_75
    :goto_75
    throw v5

    .end local v2           #in:Ljava/io/InputStream;
    :cond_76
    move-object v0, v5

    .line 1404
    goto :goto_13

    .line 1399
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_78
    move-exception v6

    goto :goto_75
.end method

.method public static getArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 13
    .parameter "context"
    .parameter "artIndex"

    .prologue
    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->getListDefaultArtwork(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 1098
    .local v2, defaultArtwork:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1099
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1100
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1101
    .local v3, h:I
    invoke-static {p0, p1, p2, v6, v3}, Lcom/sec/android/app/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1102
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3d

    .line 1103
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1104
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1106
    :try_start_1f
    sget-object v7, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 1107
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_38

    .line 1108
    sget-object v7, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    :goto_36
    monitor-exit v8

    .line 1127
    :goto_37
    return-object v1

    .line 1110
    :cond_38
    move-object v1, v5

    goto :goto_36

    .line 1112
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_3a
    move-exception v7

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    throw v7

    .line 1115
    :cond_3d
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/music/MusicUtils;->getDefaultDrawableImage(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1116
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1118
    :try_start_44
    sget-object v7, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 1119
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_60

    .line 1120
    sget-object v7, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    :goto_5b
    monitor-exit v8

    goto :goto_37

    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_5d
    move-exception v7

    monitor-exit v8
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_5d

    throw v7

    .line 1122
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    :cond_60
    move-object v1, v5

    goto :goto_5b
.end method

.method private static getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1520
    const/4 v0, 0x0

    .line 1524
    cmp-long v1, p3, v2

    if-gez v1, :cond_13

    cmp-long v1, p1, v2

    if-gez v1, :cond_13

    .line 1525
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an album or a song id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_13
    cmp-long v1, p3, v2

    if-gez v1, :cond_4d

    .line 1530
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/albumart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1533
    if-eqz v1, :cond_48

    .line 1534
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1535
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_47} :catch_68

    move-result-object v0

    .line 1549
    :cond_48
    :goto_48
    if-eqz v0, :cond_4c

    .line 1550
    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 1552
    :cond_4c
    return-object v0

    .line 1538
    :cond_4d
    :try_start_4d
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1539
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1541
    if-eqz v1, :cond_48

    .line 1542
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1543
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_66} :catch_68

    move-result-object v0

    goto :goto_48

    .line 1546
    :catch_68
    move-exception v1

    goto :goto_48
.end method

.method public static getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1288
    .local v4, res:Landroid/content/ContentResolver;
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1289
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_73

    .line 1290
    const/4 v1, 0x0

    .line 1292
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_d
    const-string v8, "r"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1293
    const/4 v5, 0x1

    .line 1298
    .local v5, sampleSize:I
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1299
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1301
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v3, v8, 0x1

    .line 1302
    .local v3, nextWidth:I
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v2, v8, 0x1

    .line 1303
    .local v2, nextHeight:I
    :goto_2f
    if-le v3, p3, :cond_3a

    if-le v2, p4, :cond_3a

    .line 1304
    shl-int/lit8 v5, v5, 0x1

    .line 1305
    shr-int/lit8 v3, v3, 0x1

    .line 1306
    shr-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1309
    :cond_3a
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1310
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1311
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1314
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_67

    .line 1316
    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v8, p3, :cond_5c

    sget-object v8, Lcom/sec/android/app/music/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v8, p4, :cond_67

    .line 1317
    :cond_5c
    const/4 v8, 0x1

    invoke-static {v0, p3, p4, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1320
    .local v6, tmp:Landroid/graphics/Bitmap;
    if-eq v6, v0, :cond_66

    .line 1321
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_66
    .catchall {:try_start_d .. :try_end_66} :catchall_75
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_66} :catch_6d

    .line 1322
    :cond_66
    move-object v0, v6

    .line 1330
    .end local v6           #tmp:Landroid/graphics/Bitmap;
    :cond_67
    if-eqz v1, :cond_6c

    .line 1331
    :try_start_69
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_7c

    .line 1336
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :cond_6c
    :goto_6c
    return-object v0

    .line 1327
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_6d
    move-exception v8

    .line 1330
    if-eqz v1, :cond_73

    .line 1331
    :try_start_70
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_7e

    .line 1336
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_73
    :goto_73
    const/4 v0, 0x0

    goto :goto_6c

    .line 1329
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_75
    move-exception v8

    .line 1330
    if-eqz v1, :cond_7b

    .line 1331
    :try_start_78
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_80

    .line 1333
    :cond_7b
    :goto_7b
    throw v8

    .line 1332
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #nextHeight:I
    .restart local v3       #nextWidth:I
    .restart local v5       #sampleSize:I
    :catch_7c
    move-exception v8

    goto :goto_6c

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #nextHeight:I
    .end local v3           #nextWidth:I
    .end local v5           #sampleSize:I
    :catch_7e
    move-exception v8

    goto :goto_73

    :catch_80
    move-exception v9

    goto :goto_7b
.end method

.method public static getCachedArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "artIndex"

    .prologue
    .line 1013
    const/4 v1, 0x0

    .line 1014
    .local v1, d:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 1015
    :try_start_4
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 1016
    monitor-exit v3

    .line 1017
    return-object v1

    .line 1016
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public static getCachedFolderArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "artIndex"

    .prologue
    .line 1183
    const/4 v1, 0x0

    .line 1184
    .local v1, d:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 1185
    :try_start_4
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 1186
    monitor-exit v3

    .line 1187
    return-object v1

    .line 1186
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public static getCachedGridArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "artIndex"

    .prologue
    .line 1023
    const/4 v1, 0x0

    .line 1024
    .local v1, d:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 1025
    :try_start_4
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    .line 1026
    monitor-exit v3

    .line 1027
    return-object v1

    .line 1026
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v2
.end method

.method public static getCurrentAudioId()J
    .registers 2

    .prologue
    .line 298
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_c

    .line 300
    :try_start_4
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v0

    .line 304
    :goto_a
    return-wide v0

    .line 301
    :catch_b
    move-exception v0

    .line 304
    :cond_c
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method private static getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter

    .prologue
    .line 1558
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v0, :cond_26

    .line 1559
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getDefaultArtwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1561
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1562
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtwork:Landroid/graphics/Bitmap;

    .line 1566
    :cond_26
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getDefaultBitmapImage(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 1675
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v3, "getDefaultBitmapImage----------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    move-wide p1, v0

    .line 1680
    :cond_e
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_27

    .line 1681
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getDefaultBitmapImage is null, out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const-class v1, Lcom/sec/android/app/music/MusicUtils;

    monitor-enter v1

    .line 1683
    :try_start_1c
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getDefaultBitmapImage is null, in sync 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->makeDefaultBitmapImage(Landroid/content/Context;)V

    .line 1685
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_31

    .line 1687
    :cond_27
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

    long-to-int v1, p1

    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 1685
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public static getDefaultDrawableImage(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 1643
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v3, "getDefaultDrawableImage----------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    move-wide p1, v0

    .line 1648
    :cond_e
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_27

    .line 1649
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getDefaultDrawableImage is null, out of sync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-class v1, Lcom/sec/android/app/music/MusicUtils;

    monitor-enter v1

    .line 1651
    :try_start_1c
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getDefaultDrawableImage is null, in sync 1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->makeDefaultDrwableImage(Landroid/content/Context;)V

    .line 1653
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_31

    .line 1655
    :cond_27
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    long-to-int v1, p1

    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 1653
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1715
    if-nez p1, :cond_8

    .line 1716
    const-string v0, ""

    .line 1745
    :cond_7
    :goto_7
    return-object v0

    .line 1718
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1719
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6a

    .line 1722
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1723
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1724
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 1725
    :cond_23
    const-string v0, "content://media/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1726
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v3

    .line 1730
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1732
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_39
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_39 .. :try_end_3c} :catch_54

    move-result-object v1

    .line 1733
    if-eqz v1, :cond_6c

    :try_start_3f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_6c

    .line 1734
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1735
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_65
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3f .. :try_end_4c} :catch_67

    move-result-object v6

    move-object v0, v6

    .line 1739
    :goto_4e
    if-eqz v1, :cond_7

    .line 1740
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 1737
    :catch_54
    move-exception v0

    move-object v0, v7

    .line 1739
    :goto_56
    if-eqz v0, :cond_6a

    .line 1740
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_7

    .line 1739
    :catchall_5d
    move-exception v0

    move-object v1, v7

    :goto_5f
    if-eqz v1, :cond_64

    .line 1740
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0

    .line 1739
    :catchall_65
    move-exception v0

    goto :goto_5f

    .line 1737
    :catch_67
    move-exception v0

    move-object v0, v1

    goto :goto_56

    :cond_6a
    move-object v0, v6

    goto :goto_7

    :cond_6c
    move-object v0, v6

    goto :goto_4e
.end method

.method public static getFolderArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "context"
    .parameter "artIndex"

    .prologue
    .line 1191
    const/4 v1, 0x0

    .line 1192
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1193
    .local v2, size:I
    invoke-static {p0, p1, p2, v2, v2}, Lcom/sec/android/app/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1194
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_38

    .line 1195
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1196
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1198
    :try_start_1a
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1199
    .local v3, value:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_33

    .line 1200
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    :goto_31
    monitor-exit v5

    .line 1219
    :goto_32
    return-object v1

    .line 1202
    :cond_33
    move-object v1, v3

    goto :goto_31

    .line 1204
    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v4

    .line 1207
    :cond_38
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/music/MusicUtils;->getDefaultBitmapImage(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x4

    div-int/lit8 v5, v5, 0x5

    const/4 v6, 0x1

    invoke-static {v4, v2, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1209
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1211
    :try_start_4d
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1212
    .restart local v3       #value:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_69

    .line 1213
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sFolderArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    :goto_64
    monitor-exit v5

    goto :goto_32

    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :catchall_66
    move-exception v4

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_4d .. :try_end_68} :catchall_66

    throw v4

    .line 1215
    .restart local v3       #value:Landroid/graphics/drawable/Drawable;
    :cond_69
    move-object v1, v3

    goto :goto_64
.end method

.method public static getGridArtworkAndMakeCache(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "context"
    .parameter "artIndex"

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1037
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1038
    .local v2, size:I
    invoke-static {p0, p1, p2, v2, v2}, Lcom/sec/android/app/music/MusicUtils;->getArtworkQuick(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1039
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_38

    .line 1040
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1041
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1043
    :try_start_1a
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1044
    .local v3, value:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_33

    .line 1045
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :goto_31
    monitor-exit v5

    .line 1066
    :goto_32
    return-object v1

    .line 1047
    :cond_33
    move-object v1, v3

    goto :goto_31

    .line 1049
    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v4

    .line 1053
    :cond_38
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/music/MusicUtils;->getDefaultBitmapImage(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/android/app/music/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1055
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 1057
    :try_start_49
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1058
    .restart local v3       #value:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_65

    .line 1059
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sGridArtCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    :goto_60
    monitor-exit v5

    goto :goto_32

    .end local v3           #value:Landroid/graphics/drawable/Drawable;
    :catchall_62
    move-exception v4

    monitor-exit v5
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_62

    throw v4

    .line 1061
    .restart local v3       #value:Landroid/graphics/drawable/Drawable;
    :cond_65
    move-object v1, v3

    goto :goto_60
.end method

.method public static getGridDefaultArtwork(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter

    .prologue
    .line 1072
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_31

    .line 1073
    const-class v1, Lcom/sec/android/app/music/MusicUtils;

    monitor-enter v1

    .line 1074
    :try_start_7
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_30

    .line 1075
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getListDefaultArtwork"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1077
    const v2, 0x7f0200c1

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1083
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    .line 1087
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1088
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1090
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_34

    .line 1092
    :cond_31
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkGrid:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    .line 1090
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static getListDefaultArtwork(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter

    .prologue
    .line 1572
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_31

    .line 1573
    const-class v1, Lcom/sec/android/app/music/MusicUtils;

    monitor-enter v1

    .line 1574
    :try_start_7
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_30

    .line 1575
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getListDefaultArtwork"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1577
    const v2, 0x7f0200c1

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1583
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    .line 1587
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1588
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1590
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_34

    .line 1592
    :cond_31
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultArtworkList:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0

    .line 1590
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static getLyricFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v13, -0x1

    .line 3024
    .line 3026
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_f1

    .line 3031
    const-string v0, ""

    .line 3032
    new-instance v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;

    invoke-direct {v5, v1}, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;-><init>(Lcom/sec/android/app/music/MusicUtils$1;)V

    .line 3037
    :try_start_15
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->identifier:[B

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v13, :cond_21c

    .line 3039
    const-string v2, "RichInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " header = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->identifier:[B

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->identifier:[B

    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "494433"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 3044
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->version:[B

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v13, :cond_67

    .line 3045
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->flags:[B

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v13, :cond_67

    .line 3046
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v13, :cond_67

    .line 3052
    :cond_67
    const-string v2, "RichInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " version = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->version:[B

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    const-string v2, "RichInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " flags = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->flags:[B

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const-string v2, "RichInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " size = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    invoke-static {v6}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    iget-object v2, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    if-eqz v2, :cond_21c

    move v2, v4

    move v3, v4

    .line 3063
    :goto_d9
    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    array-length v6, v6

    if-ge v2, v6, :cond_f7

    .line 3064
    iget-object v6, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    iget-object v9, v5, Lcom/sec/android/app/music/MusicUtils$Id3TagHeader;->size:[B

    array-length v9, v9
    :try_end_e7
    .catchall {:try_start_15 .. :try_end_e7} :catchall_212
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_e7} :catch_1e8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_15 .. :try_end_e7} :catch_1fd

    add-int/lit8 v10, v2, 0x1

    sub-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x7

    shl-int/2addr v6, v9

    or-int/2addr v3, v6

    .line 3063
    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    .line 3027
    :catch_f1
    move-exception v0

    .line 3028
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 3205
    :goto_f6
    return-object v0

    .line 3067
    :cond_f7
    :try_start_f7
    const-string v2, "RichInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " real size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 3073
    :goto_116
    if-eqz v2, :cond_14c

    .line 3075
    const/4 v2, 0x4

    new-array v2, v2, [B

    move v6, v3

    .line 3076
    :goto_11c
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v13, :cond_14c

    .line 3077
    const-string v3, "ISO-8859-1"

    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3082
    const/4 v2, 0x4

    new-array v10, v2, [B

    .line 3083
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move v3, v4

    move v2, v4

    .line 3087
    :goto_130
    array-length v5, v10

    if-ge v3, v5, :cond_144

    .line 3088
    aget-byte v5, v10, v3

    and-int/lit16 v5, v5, 0xff

    array-length v11, v10
    :try_end_138
    .catchall {:try_start_f7 .. :try_end_138} :catchall_212
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_138} :catch_1e8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_f7 .. :try_end_138} :catch_1fd

    add-int/lit8 v12, v3, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x8

    shl-int/2addr v5, v11

    or-int/2addr v5, v2

    .line 3087
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v5

    goto :goto_130

    .line 3094
    :cond_144
    if-nez v2, :cond_148

    .line 3095
    const/16 v2, 0x8

    .line 3098
    :cond_148
    sub-int v3, v6, v2

    if-ge v3, v7, :cond_155

    .line 3200
    :cond_14c
    :goto_14c
    :try_start_14c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_f6

    .line 3201
    :catch_150
    move-exception v1

    .line 3202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f6

    .line 3100
    :cond_155
    if-ltz v2, :cond_14c

    .line 3107
    const/4 v5, 0x2

    :try_start_158
    new-array v5, v5, [B

    .line 3108
    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    .line 3114
    const-string v5, "USLT"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1dd

    .line 3115
    const/4 v3, 0x1

    new-array v3, v3, [B

    .line 3116
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    .line 3118
    const/4 v4, 0x3

    new-array v4, v4, [B

    .line 3119
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    .line 3122
    const-string v4, "01"

    invoke-static {v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 3123
    const/4 v3, 0x2

    new-array v3, v3, [B

    .line 3124
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    .line 3126
    const/4 v4, 0x4

    new-array v4, v4, [B

    .line 3127
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    .line 3133
    add-int/lit8 v2, v2, -0xa

    new-array v2, v2, [B

    .line 3134
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 3140
    const-string v4, "FFFE"

    invoke-static {v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a3

    .line 3142
    const-string v0, "UTF-16LE"

    invoke-static {v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14c

    .line 3143
    :cond_1a3
    const-string v4, "FEFF"

    invoke-static {v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 3145
    const-string v0, "UTF-16BE"

    invoke-static {v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14c

    .line 3154
    :cond_1b6
    const-string v4, "00"

    invoke-static {v3}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 3155
    const/4 v3, 0x1

    new-array v3, v3, [B

    .line 3156
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    .line 3158
    add-int/lit8 v2, v2, -0x5

    new-array v2, v2, [B

    .line 3159
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 3161
    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->isKiesLyric([B)Z

    move-result v3

    if-nez v3, :cond_14c

    .line 3165
    const-string v0, "EUC-KR"

    invoke-static {v2, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->toStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14c

    .line 3180
    :cond_1dd
    new-array v2, v2, [B

    .line 3181
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    .line 3188
    const/4 v2, 0x4

    new-array v2, v2, [B
    :try_end_1e5
    .catchall {:try_start_158 .. :try_end_1e5} :catchall_212
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_1e5} :catch_1e8
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_158 .. :try_end_1e5} :catch_1fd

    move v6, v3

    .line 3189
    goto/16 :goto_11c

    .line 3191
    :catch_1e8
    move-exception v0

    .line 3192
    :try_start_1e9
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getLyricFromFile fail IOException happend."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_212

    .line 3200
    :try_start_1f0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_1f6

    move-object v0, v1

    .line 3203
    goto/16 :goto_f6

    .line 3201
    :catch_1f6
    move-exception v0

    .line 3202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 3204
    goto/16 :goto_f6

    .line 3194
    :catch_1fd
    move-exception v0

    .line 3195
    :try_start_1fe
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getLyricFromFile fail Wrong id3tag. NegativeArraySizeException happend."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_205
    .catchall {:try_start_1fe .. :try_end_205} :catchall_212

    .line 3200
    :try_start_205
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_208
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_208} :catch_20b

    move-object v0, v1

    .line 3203
    goto/16 :goto_f6

    .line 3201
    :catch_20b
    move-exception v0

    .line 3202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 3204
    goto/16 :goto_f6

    .line 3199
    :catchall_212
    move-exception v0

    .line 3200
    :try_start_213
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_216} :catch_217

    .line 3203
    :goto_216
    throw v0

    .line 3201
    :catch_217
    move-exception v1

    .line 3202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_216

    :cond_21c
    move v3, v4

    move v2, v4

    goto/16 :goto_116
.end method

.method public static getMimeType(Landroid/content/Context;J)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 342
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mime_type"

    aput-object v0, v2, v4

    .line 346
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 347
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 348
    .local v7, mime:Ljava/lang/String;
    if-eqz v6, :cond_2a

    .line 350
    :try_start_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 352
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_2b

    move-result-object v7

    .line 355
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_2a
    return-object v7

    .line 355
    :catchall_2b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getNoItemString(I)I
    .registers 2
    .parameter

    .prologue
    const v0, 0x7f090132

    .line 1783
    packed-switch p0, :pswitch_data_24

    .line 1813
    :goto_6
    :pswitch_6
    return v0

    .line 1789
    :pswitch_7
    const v0, 0x7f09012e

    .line 1790
    goto :goto_6

    .line 1792
    :pswitch_b
    const v0, 0x7f09012a

    .line 1793
    goto :goto_6

    .line 1795
    :pswitch_f
    const v0, 0x7f09012b

    .line 1796
    goto :goto_6

    .line 1798
    :pswitch_13
    const v0, 0x7f09012d

    .line 1799
    goto :goto_6

    .line 1801
    :pswitch_17
    const v0, 0x7f090131

    .line 1802
    goto :goto_6

    .line 1804
    :pswitch_1b
    const v0, 0x7f09012c

    .line 1805
    goto :goto_6

    .line 1807
    :pswitch_1f
    const v0, 0x7f090130

    .line 1808
    goto :goto_6

    .line 1783
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method

.method public static getNumberOfString(I)I
    .registers 2
    .parameter

    .prologue
    const/high16 v0, 0x7f0a

    .line 2501
    packed-switch p0, :pswitch_data_22

    .line 2540
    :goto_5
    :pswitch_5
    return v0

    .line 2508
    :pswitch_6
    const v0, 0x7f0a0002

    .line 2509
    goto :goto_5

    .line 2512
    :pswitch_a
    const v0, 0x7f0a0003

    .line 2513
    goto :goto_5

    .line 2516
    :pswitch_e
    const v0, 0x7f0a0006

    .line 2517
    goto :goto_5

    .line 2520
    :pswitch_12
    const v0, 0x7f0a0004

    .line 2521
    goto :goto_5

    .line 2524
    :pswitch_16
    const v0, 0x7f0a0007

    .line 2525
    goto :goto_5

    .line 2528
    :pswitch_1a
    const v0, 0x7f0a0005

    .line 2529
    goto :goto_5

    .line 2533
    :pswitch_1e
    const v0, 0x7f0a0001

    .line 2534
    goto :goto_5

    .line 2501
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1e
        :pswitch_6
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_e
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public static getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "pid"

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1422
    const/4 v6, 0x0

    .line 1423
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1425
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1426
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "mini_thumb_data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1429
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_55

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1430
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1431
    .local v11, path:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1432
    if-nez v11, :cond_30

    .line 1465
    .end local v11           #path:Ljava/lang/String;
    :goto_2f
    return-object v3

    .line 1435
    .restart local v11       #path:Ljava/lang/String;
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1439
    .local v9, filePath:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1440
    const/4 v10, 0x0

    .line 1442
    .local v10, in:Ljava/io/InputStream;
    :try_start_48
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 1443
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4f} :catch_75

    move-result-object v6

    .line 1456
    if-eqz v10, :cond_55

    .line 1458
    :try_start_52
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_57

    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #in:Ljava/io/InputStream;
    .end local v11           #path:Ljava/lang/String;
    :cond_55
    :goto_55
    move-object v3, v6

    .line 1465
    goto :goto_2f

    .line 1459
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #in:Ljava/io/InputStream;
    .restart local v11       #path:Ljava/lang/String;
    :catch_57
    move-exception v8

    .line 1460
    .local v8, e:Ljava/io/IOException;
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1449
    .end local v8           #e:Ljava/io/IOException;
    :catch_75
    move-exception v8

    .line 1453
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_76
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v3, "getPlayListArtwork file not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_a1

    .line 1456
    if-eqz v10, :cond_55

    .line 1458
    :try_start_7f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_55

    .line 1459
    :catch_83
    move-exception v8

    .line 1460
    .local v8, e:Ljava/io/IOException;
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 1456
    .end local v8           #e:Ljava/io/IOException;
    :catchall_a1
    move-exception v2

    if-eqz v10, :cond_a7

    .line 1458
    :try_start_a4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 1461
    :cond_a7
    :goto_a7
    throw v2

    .line 1459
    :catch_a8
    move-exception v8

    .line 1460
    .restart local v8       #e:Ljava/io/IOException;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7
.end method

.method public static getSamsungTabListArgsForQuery(I)Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2073
    new-instance v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {v0}, Lcom/sec/android/app/music/MusicUtils$QueryArgs;-><init>()V

    .line 2074
    packed-switch p0, :pswitch_data_12a

    .line 2178
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2179
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->FOLDER_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2180
    const-string v1, "_data=\'\'"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2181
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2182
    const-string v1, "_data"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2183
    const-string v1, "_data"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2184
    iput v4, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2185
    const-string v1, "bucket_id"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    .line 2189
    :goto_27
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamsungTabListArgsForQuery----------------------------------------------------\n     URI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n     Selection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n     OrderBy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n     IndexBy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    return-object v0

    .line 2076
    :pswitch_66
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->ALBUMS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2077
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->ALBUM_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2078
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2079
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2080
    const-string v1, "album COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2081
    const-string v1, "album"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2087
    iput v4, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2088
    const-string v1, "_id"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto :goto_27

    .line 2092
    :pswitch_81
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->ARTISTS_ALBUM_ID_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2093
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_ARTIST_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2094
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2095
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2096
    const-string v1, "artist COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2097
    const-string v1, "artist"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2103
    iput v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2104
    const-string v1, "_id"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto :goto_27

    .line 2108
    :pswitch_9c
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->COMPOSERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2109
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->COMPOSER_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2110
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2111
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2112
    const-string v1, "composer COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2113
    const-string v1, "composer"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2119
    iput v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2120
    const-string v1, "composer"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto/16 :goto_27

    .line 2123
    :pswitch_b8
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->YEARS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2124
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_YEAR_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2125
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2126
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2127
    const-string v1, "year_name DESC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2128
    const-string v1, "year_name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2129
    iput v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2130
    const-string v1, "year_name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto/16 :goto_27

    .line 2133
    :pswitch_d4
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->GENRES_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2134
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->GENRE_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2135
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2136
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2137
    const-string v1, "genre_name COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2138
    const-string v1, "genre_name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2144
    iput v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2145
    const-string v1, "genre_name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto/16 :goto_27

    .line 2148
    :pswitch_f0
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->FOLDERS_EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2149
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->SAMSUNG_FOLDER_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2150
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2151
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2152
    const-string v1, "bucket_display_name COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2154
    const-string v1, "bucket_display_name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2155
    iput v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2156
    const-string v1, "bucket_id"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto/16 :goto_27

    .line 2160
    :pswitch_10c
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2161
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2163
    const-string v1, "name NOT IN (\'Quick list\',\'Reorder play list\')"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2165
    iput-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2166
    const-string v1, "name COLLATE LOCALIZED ASC"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2167
    const-string v1, "name"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2173
    iput v4, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    .line 2174
    const-string v1, "_id"

    iput-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    goto/16 :goto_27

    .line 2074
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_10c
        :pswitch_66
        :pswitch_81
        :pswitch_d4
        :pswitch_f0
        :pswitch_9c
        :pswitch_b8
        :pswitch_10c
    .end packed-switch
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;Z)[J
    .registers 9
    .parameter "cursor"
    .parameter "hasNumberOfView"

    .prologue
    .line 319
    if-nez p0, :cond_5

    .line 320
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sEmptyList:[J

    .line 338
    :cond_4
    return-object v4

    .line 322
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 323
    .local v3, len:I
    if-eqz p1, :cond_13

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_13

    .line 324
    add-int/lit8 v3, v3, -0x1

    .line 326
    :cond_13
    new-array v4, v3, [J

    .line 327
    .local v4, list:[J
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v0, -0x1

    .line 330
    .local v0, colidx:I
    :try_start_19
    const-string v5, "audio_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1e} :catch_2e

    move-result v0

    .line 334
    :goto_1f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    if-ge v2, v3, :cond_4

    .line 335
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 336
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 331
    .end local v2           #i:I
    :catch_2e
    move-exception v1

    .line 332
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v5, "_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f
.end method

.method public static getTabListArgsForQuery(I)Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    .registers 2
    .parameter "tabId"

    .prologue
    .line 1926
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->getSamsungTabListArgsForQuery(I)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeString(JZ)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 2763
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_26

    move v0, v1

    move v2, v1

    move v3, v1

    .line 2781
    :goto_d
    if-nez v0, :cond_50

    .line 2782
    if-eqz p2, :cond_3b

    .line 2783
    const-string v0, "%02d:%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2790
    :goto_25
    return-object v0

    .line 2768
    :cond_26
    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    long-to-int v2, v2

    .line 2770
    if-nez v2, :cond_38

    move v0, v1

    .line 2776
    :goto_2e
    rem-int/lit8 v3, v2, 0x3c

    .line 2777
    div-int/lit8 v2, v0, 0x3c

    .line 2778
    rem-int/lit8 v0, v0, 0x3c

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_d

    .line 2774
    :cond_38
    div-int/lit8 v0, v2, 0x3c

    goto :goto_2e

    .line 2785
    :cond_3b
    const-string v0, "-%02d:%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 2787
    :cond_50
    if-eqz p2, :cond_6d

    .line 2788
    const-string v4, "%d:%02d:%02d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 2790
    :cond_6d
    const-string v4, "-%d:%02d:%02d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public static getTitle(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1749
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1750
    if-nez v1, :cond_e

    .line 1751
    const-string v0, ""

    .line 1778
    :cond_d
    :goto_d
    return-object v0

    .line 1753
    :cond_e
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1754
    const-string v6, ""

    .line 1755
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_60

    .line 1758
    const-string v2, "content://media/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1759
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 1763
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1765
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_53
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2f .. :try_end_32} :catch_4a

    move-result-object v1

    .line 1766
    if-eqz v1, :cond_62

    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_62

    .line 1767
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1768
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_5b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_35 .. :try_end_42} :catch_5d

    move-result-object v6

    move-object v0, v6

    .line 1772
    :goto_44
    if-eqz v1, :cond_d

    .line 1773
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .line 1770
    :catch_4a
    move-exception v0

    move-object v0, v7

    .line 1772
    :goto_4c
    if-eqz v0, :cond_60

    .line 1773
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_d

    .line 1772
    :catchall_53
    move-exception v0

    move-object v1, v7

    :goto_55
    if-eqz v1, :cond_5a

    .line 1773
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0

    .line 1772
    :catchall_5b
    move-exception v0

    goto :goto_55

    .line 1770
    :catch_5d
    move-exception v0

    move-object v0, v1

    goto :goto_4c

    :cond_60
    move-object v0, v6

    goto :goto_d

    :cond_62
    move-object v0, v6

    goto :goto_44
.end method

.method public static getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2265
    new-instance v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {v1}, Lcom/sec/android/app/music/MusicUtils$QueryArgs;-><init>()V

    .line 2266
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2267
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->TRACK_PROJECTION:[Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2268
    const-string v0, "title COLLATE LOCALIZED ASC"

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2269
    const-string v0, "title"

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    .line 2270
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v6

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "title != \'\' AND is_music=1 AND is_sound != 1"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2275
    packed-switch p0, :pswitch_data_17c

    .line 2372
    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    .line 2375
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrackListArgsForQuery----------------------------------------------------\n   URI : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n   Selection : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n   Selection Args : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    if-nez v0, :cond_176

    const-string v0, "null"

    :goto_59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n   OrderBy : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n   IndexBy : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    return-object v1

    .line 2281
    :pswitch_7d
    const-string v2, " AND album_id=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    const-string v2, "track"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_28

    .line 2288
    :pswitch_87
    const-string v2, " AND artist_id=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    const-string v2, "album COLLATE LOCALIZED ASC"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2290
    const-string v2, "album"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    goto :goto_28

    .line 2293
    :pswitch_95
    const-string v2, " AND composer=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 2296
    :pswitch_9b
    const-string v2, " AND genre_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 2300
    :pswitch_a1
    const-string v2, " AND year_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 2315
    :pswitch_a7
    const-string v2, " AND bucket_id=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2319
    const-string v2, "_display_name COLLATE LOCALIZED ASC"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    goto/16 :goto_28

    .line 2324
    :pswitch_b2
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e5

    .line 2325
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2326
    const-wide/16 v4, -0xe

    cmp-long v4, v2, v4

    if-nez v4, :cond_e9

    .line 2335
    iget-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "900"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2337
    const-string v2, "date_added DESC"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2338
    const-string v2, " AND recently_added_remove_flag != 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    :cond_e5
    :goto_e5
    iput-object v7, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_28

    .line 2339
    :cond_e9
    const-wide/16 v4, -0xb

    cmp-long v4, v2, v4

    if-nez v4, :cond_109

    .line 2340
    const-string v0, "external"

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2342
    const-string v0, "play_order"

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2343
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_TRACK_PROJECTION:[Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "title != \'\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_e5

    .line 2345
    :cond_109
    const-wide/16 v4, -0xc

    cmp-long v4, v2, v4

    if-nez v4, :cond_12d

    .line 2346
    iget-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "50"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2347
    const-string v2, "most_played"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2348
    const-string v2, " AND most_played != 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 2349
    :cond_12d
    const-wide/16 v4, -0xd

    cmp-long v2, v2, v4

    if-nez v2, :cond_151

    .line 2350
    iget-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "50"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2351
    const-string v2, "recently_played"

    iput-object v2, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2355
    const-string v2, " AND recently_played != 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e5

    .line 2357
    :cond_151
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    .line 2359
    const-string v0, "play_order"

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    .line 2360
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_TRACK_PROJECTION:[Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "title != \'\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 2367
    :pswitch_172
    iput-object v7, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    goto/16 :goto_28

    .line 2375
    :cond_176
    iget-object v0, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    aget-object v0, v0, v6

    goto/16 :goto_59

    .line 2275
    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_172
        :pswitch_b2
        :pswitch_7d
        :pswitch_87
        :pswitch_9b
        :pswitch_a7
        :pswitch_95
        :pswitch_a1
    .end packed-switch
.end method

.method public static initAlbumArtCache()V
    .registers 3

    .prologue
    .line 978
    :try_start_0
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getMediaMountedCount()I

    move-result v1

    .line 979
    .local v1, id:I
    sget v2, Lcom/sec/android/app/music/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_f

    .line 980
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->clearAlbumArtCache()V

    .line 981
    sput v1, Lcom/sec/android/app/music/MusicUtils;->sArtCacheId:I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 986
    :cond_f
    :goto_f
    return-void

    .line 983
    :catch_10
    move-exception v0

    .line 984
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method private static isCurrentPlaylist(J)Z
    .registers 10
    .parameter "plid"

    .prologue
    .line 518
    const/4 v5, 0x0

    .line 519
    .local v5, isCurrentPlaylist:Z
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v6, :cond_2c

    .line 520
    const/4 v1, -0x1

    .line 521
    .local v1, currentPlayingTab:I
    const-string v0, ""

    .line 523
    .local v0, currentPlayingKeyWord:Ljava/lang/String;
    :try_start_8
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I

    move-result v1

    .line 524
    sget-object v6, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_2d

    move-result-object v0

    .line 528
    :goto_14
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2c

    if-eqz v0, :cond_2c

    .line 530
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 531
    .local v2, currentPlaylistId:J
    cmp-long v6, p0, v2

    if-eqz v6, :cond_2b

    const-wide/16 v6, -0xb

    cmp-long v6, v2, v6

    if-nez v6, :cond_2c

    .line 532
    :cond_2b
    const/4 v5, 0x1

    .line 536
    .end local v0           #currentPlayingKeyWord:Ljava/lang/String;
    .end local v1           #currentPlayingTab:I
    .end local v2           #currentPlaylistId:J
    :cond_2c
    return v5

    .line 525
    .restart local v0       #currentPlayingKeyWord:Ljava/lang/String;
    .restart local v1       #currentPlayingTab:I
    :catch_2d
    move-exception v4

    .line 526
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public static isItemInQuickList(Landroid/content/Context;J)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2477
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->makeQuickListItem(Landroid/content/Context;)V

    .line 2478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2481
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v2, v6

    .line 2484
    const-string v1, "external"

    sget-wide v8, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v1, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 2485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2488
    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_45

    move v0, v6

    .line 2492
    :goto_3f
    if-eqz v1, :cond_44

    .line 2493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2496
    :cond_44
    return v0

    :cond_45
    move v0, v7

    goto :goto_3f
.end method

.method private static isKiesLyric([B)Z
    .registers 5
    .parameter "content"

    .prologue
    const/16 v3, 0x8

    .line 3209
    const/4 v0, 0x0

    .line 3211
    .local v0, isKiesLyric:Z
    array-length v1, p0

    if-le v1, v3, :cond_43

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    if-nez v1, :cond_43

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_43

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_43

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_43

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_43

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_43

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_43

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    const/16 v2, 0x59

    if-ne v1, v2, :cond_43

    aget-byte v1, p0, v3

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_43

    .line 3214
    const/4 v0, 0x1

    .line 3216
    :cond_43
    return v0
.end method

.method public static isMediaMounted()Z
    .registers 5

    .prologue
    .line 2717
    const/4 v0, 0x1

    .line 2718
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 2719
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMediaStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2722
    const/4 v0, 0x0

    .line 2724
    :cond_2e
    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 816
    const/4 v7, 0x0

    .line 817
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 820
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 821
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2a

    .line 822
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 823
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 825
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 828
    :cond_2d
    return v7
.end method

.method public static isMusicPlayerTopActivity(Landroid/content/Context;Z)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2835
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2838
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2840
    const/4 v3, 0x0

    .line 2842
    const/4 v4, 0x0

    :try_start_10
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_16
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_16} :catch_32

    .line 2847
    :goto_16
    if-eqz v0, :cond_42

    .line 2848
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2849
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2851
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2852
    if-nez p1, :cond_38

    move v0, v1

    .line 2862
    :goto_31
    return v0

    .line 2843
    :catch_32
    move-exception v0

    .line 2844
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    move-object v0, v3

    goto :goto_16

    .line 2856
    :cond_38
    const-string v0, "MusicPlayer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    .line 2857
    goto :goto_31

    :cond_42
    move v0, v2

    .line 2862
    goto :goto_31
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_34

    .line 201
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 203
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 204
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 205
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v0           #f:Ljava/lang/String;
    :cond_34
    const/high16 v3, 0x7f0a

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 210
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static makeDefaultBitmapImage(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 1662
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "makeDefaultBitmapImage start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_2b

    .line 1664
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1665
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

    .line 1666
    const/4 v0, 0x0

    :goto_17
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    .line 1667
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtBitmap:[Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    aget v3, v3, v0

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1666
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1671
    :cond_2b
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "makeDefaultBitmapImage end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void
.end method

.method public static makeDefaultDrwableImage(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1609
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "makeDefaultDrwableImage start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_3f

    .line 1611
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1612
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    move v0, v1

    .line 1613
    :goto_18
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3f

    .line 1614
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefalutAlbumArtId:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1617
    sget-object v4, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v0

    .line 1618
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1619
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->sDefaultAlbumArtDrawable:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1613
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1623
    :cond_3f
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v1, "makeDefaultDrwableImage end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void
.end method

.method private static makeInsertItems([JIII)V
    .registers 9
    .parameter "ids"
    .parameter "offset"
    .parameter "len"
    .parameter "base"

    .prologue
    .line 652
    add-int v1, p1, p2

    array-length v2, p0

    if-le v1, v2, :cond_8

    .line 653
    array-length v1, p0

    sub-int p2, v1, p1

    .line 657
    :cond_8
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v1, v1

    if-eq v1, p2, :cond_15

    .line 658
    :cond_11
    new-array v1, p2, [Landroid/content/ContentValues;

    sput-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 661
    :cond_15
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, p2, :cond_4b

    .line 662
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_27

    .line 663
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 666
    :cond_27
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "play_order"

    add-int v3, p3, p1

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v3, p0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 671
    :cond_4b
    return-void
.end method

.method public static makeNotiMessageForClosingAPK(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 2728
    const v0, 0x7f090101

    invoke-static {p0, v0}, Lcom/sec/android/app/music/MusicUtils;->makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V

    .line 2729
    return-void
.end method

.method public static makeNoti_New_MessageForClosingAPK(Landroid/content/Context;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2732
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2735
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2736
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020162

    invoke-direct {v4, v5, v3, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2737
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 2739
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2740
    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2742
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2743
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2745
    invoke-virtual {v4, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2747
    const/4 v1, 0x1

    .line 2748
    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2750
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2751
    return-void
.end method

.method public static makeQuickListItem(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2395
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v6

    const-string v3, "name=\'Quick list\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2398
    if-eqz v2, :cond_51

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_51

    .line 2400
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTabChanged & Playlist but there are no quick list. So make it. the number of Quick list : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_93

    const-string v1, "cursor is null"

    :goto_35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 2407
    const-string v3, "name"

    const-string v5, "Quick list"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2408
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2417
    :cond_51
    if-eqz v2, :cond_56

    .line 2418
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2420
    :cond_56
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "name=\'Quick list\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2423
    if-eqz v0, :cond_8d

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 2424
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    .line 2426
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   Quick List\'s playlist ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_8d
    if-eqz v0, :cond_92

    .line 2437
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2439
    :cond_92
    return-void

    .line 2400
    :cond_93
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_35
.end method

.method public static makeReorderPlayListItem(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 729
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    const-string v3, "name=\'Reorder play list\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 732
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_51

    .line 734
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged & Playlist but there are no quick list. So make it. the number of Quick list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 741
    .local v7, value:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "Reorder play list"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 744
    .end local v7           #value:Landroid/content/ContentValues;
    :cond_51
    if-eqz v6, :cond_56

    .line 745
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 747
    :cond_56
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "name=\'Reorder play list\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 750
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 751
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    .line 753
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   sReorderPlayListId List\'s playlist ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_8b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 758
    sget-wide v1, Lcom/sec/android/app/music/MusicUtils;->sReorderPlayListId:J

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/music/MusicUtils;->clearPlaylist(Landroid/content/Context;J)V

    .line 759
    return-void
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v7, 0xe10

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    .line 859
    cmp-long v2, p1, v7

    if-gez v2, :cond_4d

    const v2, 0x7f090002

    :goto_c
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, durationformat:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 868
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 869
    .local v1, timeArgs:[Ljava/lang/Object;
    div-long v2, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 870
    const/4 v2, 0x1

    div-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 871
    const/4 v2, 0x2

    div-long v3, p1, v5

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 872
    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 873
    const/4 v2, 0x4

    rem-long v3, p1, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 875
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 859
    .end local v0           #durationformat:Ljava/lang/String;
    .end local v1           #timeArgs:[Ljava/lang/Object;
    :cond_4d
    const v2, 0x7f090003

    goto :goto_c
.end method

.method public static movePlayList(Landroid/content/Context;JJ)[J
    .registers 16
    .parameter "context"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 762
    const/4 v10, 0x0

    .line 763
    .local v10, list:[J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "play_order"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 767
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_41

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 769
    .local v9, length:I
    new-array v7, v9, [J

    .line 770
    .local v7, idx:[J
    const/4 v8, 0x0

    .local v8, index:I
    :goto_24
    if-ge v8, v9, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 771
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v7, v8

    .line 770
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 774
    :cond_36
    invoke-static {p0, p3, p4}, Lcom/sec/android/app/music/MusicUtils;->clearPlaylist(Landroid/content/Context;J)V

    .line 775
    const/4 v0, 0x0

    invoke-static {p0, v7, p3, p4, v0}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    .line 776
    move-object v10, v7

    .line 778
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 781
    .end local v7           #idx:[J
    .end local v8           #index:I
    .end local v9           #length:I
    :cond_41
    return-object v10
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .parameter "context"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 879
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V

    .line 880
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    .line 887
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v0

    .line 888
    .local v0, list:[J
    invoke-static {p0, v0, p2, p3}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 889
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JI)V
    .registers 4
    .parameter "context"
    .parameter "list"
    .parameter "position"

    .prologue
    .line 883
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    .line 884
    return-void
.end method

.method public static playAll(Landroid/content/Context;[JIZ)V
    .registers 9
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"

    .prologue
    const/4 v4, 0x0

    .line 892
    array-length v1, p1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v1, :cond_28

    .line 893
    :cond_8
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, " attempt to play empty song list"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const v1, 0x7f09004f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 913
    .end local v0           #message:Ljava/lang/String;
    :goto_27
    return-void

    .line 900
    :cond_28
    if-gez p2, :cond_2b

    .line 901
    const/4 p2, 0x0

    .line 903
    :cond_2b
    :try_start_2b
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz p3, :cond_3b

    const/4 v1, -0x1

    :goto_30
    invoke-interface {v2, p1, v1}, Lcom/sec/android/app/music/ICorePlayerService;->open([JI)V

    .line 904
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_27

    .line 905
    :catch_39
    move-exception v1

    goto :goto_27

    :cond_3b
    move v1, p2

    .line 903
    goto :goto_30

    .line 907
    :catchall_3d
    move-exception v1

    throw v1
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 812
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    const/4 v7, 0x0

    .line 787
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, " query"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 791
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_17

    .line 793
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, " resolver is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v7

    .line 805
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_16
    return-object v1

    .line 797
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_17
    if-lez p6, :cond_3a

    .line 798
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_3a
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 800
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_42} :catch_44

    move-result-object v1

    goto :goto_16

    .line 801
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_44
    move-exception v6

    .line 803
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 805
    goto :goto_16
.end method

.method public static removePlayListItem(Landroid/content/Context;J[J)V
    .registers 24
    .parameter "context"
    .parameter "plid"
    .parameter "item"

    .prologue
    .line 407
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v6, "removePlayListItem"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v5, "("

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .local v17, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_11
    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v11, v5, :cond_29

    .line 411
    if-eqz v11, :cond_1f

    .line 412
    const-string v5, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1f
    aget-wide v5, p3, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 416
    :cond_29
    const-string v5, ")"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-wide/16 v5, -0xc

    cmp-long v5, p1, v5

    if-nez v5, :cond_6e

    .line 418
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 419
    .local v4, uri:Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 420
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "most_played"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_6d
    :goto_6d
    return-void

    .line 423
    .end local v4           #uri:Landroid/net/Uri;
    :cond_6e
    const-wide/16 v5, -0xe

    cmp-long v5, p1, v5

    if-nez v5, :cond_ac

    .line 424
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 425
    .restart local v4       #uri:Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 426
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v5, "recently_added_remove_flag"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6d

    .line 429
    .end local v4           #uri:Landroid/net/Uri;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_ac
    const-wide/16 v5, -0xd

    cmp-long v5, p1, v5

    if-nez v5, :cond_ea

    .line 430
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 431
    .restart local v4       #uri:Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 432
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v5, "recently_played"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6d

    .line 437
    .end local v4           #uri:Landroid/net/Uri;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_ea
    const-wide/16 v5, -0xb

    cmp-long v5, p1, v5

    if-nez v5, :cond_f2

    .line 438
    sget-wide p1, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    .line 440
    :cond_f2
    const-string v5, "external"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 442
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 446
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-static/range {p1 .. p2}, Lcom/sec/android/app/music/MusicUtils;->isCurrentPlaylist(J)Z

    move-result v5

    if-eqz v5, :cond_1ad

    .line 449
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "audio_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "play_order"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio_playlists_map._id IN "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "play_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 455
    .local v9, c:Landroid/database/Cursor;
    :try_start_135
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->getQueue()[J

    move-result-object v14

    .line 465
    .local v14, list:[J
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 466
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 467
    .local v18, sizeToRemove:I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 468
    .local v16, positionsToRemove:[I
    const/4 v12, 0x0

    .local v12, index:I
    move v13, v12

    .line 470
    .end local v12           #index:I
    .local v13, index:I
    :goto_14a
    const/4 v5, 0x1

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 471
    .local v15, position:I
    const/4 v5, -0x1

    if-ge v5, v15, :cond_209

    array-length v5, v14

    if-ge v15, v5, :cond_209

    .line 472
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " list["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v14, v15

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c.getLong(0) audioId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    aget-wide v5, v14, v15

    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_209

    move/from16 v0, v18

    if-ge v13, v0, :cond_209

    .line 476
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aput v15, v16, v13

    .line 479
    :goto_19b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_206

    .line 480
    sget-object v5, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcom/sec/android/app/music/ICorePlayerService;->removeTracksSelectedList([I)I
    :try_end_1a8
    .catchall {:try_start_135 .. :try_end_1a8} :catchall_1ff
    .catch Landroid/os/RemoteException; {:try_start_135 .. :try_end_1a8} :catch_1f5

    .line 484
    if-eqz v9, :cond_1ad

    .line 485
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 490
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #index:I
    .end local v14           #list:[J
    .end local v15           #position:I
    .end local v16           #positionsToRemove:[I
    .end local v18           #sizeToRemove:I
    :cond_1ad
    :goto_1ad
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 494
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "audio_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "play_order"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 497
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_6d

    .line 498
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1f0

    .line 499
    const/4 v5, 0x0

    invoke-static {v9, v5}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v14

    .line 500
    .restart local v14       #list:[J
    invoke-static/range {p0 .. p2}, Lcom/sec/android/app/music/MusicUtils;->clearPlaylist(Landroid/content/Context;J)V

    .line 501
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v14, v1, v2, v5}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylistInternal(Landroid/content/Context;[JJZ)I

    .line 503
    .end local v14           #list:[J
    :cond_1f0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6d

    .line 481
    :catch_1f5
    move-exception v10

    .line 482
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1f6
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_1ff

    .line 484
    if-eqz v9, :cond_1ad

    .line 485
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1ad

    .line 484
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1ff
    move-exception v5

    if-eqz v9, :cond_205

    .line 485
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_205
    throw v5

    .restart local v12       #index:I
    .restart local v14       #list:[J
    .restart local v15       #position:I
    .restart local v16       #positionsToRemove:[I
    .restart local v18       #sizeToRemove:I
    :cond_206
    move v13, v12

    .end local v12           #index:I
    .restart local v13       #index:I
    goto/16 :goto_14a

    :cond_209
    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_19b
.end method

.method public static savePlayListArtwork(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1472
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1474
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1475
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v2, "sevePlayListArtwork mkdir error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_21
    :goto_21
    return-object v0

    .line 1479
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    :try_start_3f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_b7
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_76

    .line 1486
    :try_start_44
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1490
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_dd
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_52} :catch_df

    .line 1496
    if-eqz v2, :cond_57

    .line 1498
    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    :cond_57
    move-object v0, v1

    .line 1512
    goto :goto_21

    .line 1499
    :catch_59
    move-exception v1

    .line 1500
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1501
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevePlayListArtwork initSoftKeyView Error 3 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1491
    :catch_76
    move-exception v1

    move-object v2, v0

    .line 1492
    :goto_78
    :try_start_78
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1493
    sget-object v3, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sevePlayListArtwork initSoftKeyView Error 2 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_78 .. :try_end_93} :catchall_dd

    .line 1496
    if-eqz v2, :cond_21

    .line 1498
    :try_start_95
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_21

    .line 1499
    :catch_99
    move-exception v1

    .line 1500
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1501
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevePlayListArtwork initSoftKeyView Error 3 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1496
    :catchall_b7
    move-exception v1

    move-object v2, v0

    :goto_b9
    if-eqz v2, :cond_be

    .line 1498
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    .line 1502
    :cond_be
    throw v1

    .line 1499
    :catch_bf
    move-exception v1

    .line 1500
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1501
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sevePlayListArtwork initSoftKeyView Error 3 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 1496
    :catchall_dd
    move-exception v1

    goto :goto_b9

    .line 1491
    :catch_df
    move-exception v1

    goto :goto_78
.end method

.method public static setListFrom(ILjava/lang/String;)V
    .registers 3
    .parameter "tabFrom"
    .parameter "keyWord"

    .prologue
    .line 917
    :try_start_0
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/music/ICorePlayerService;->setListFrom(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 920
    :goto_5
    return-void

    .line 918
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static declared-synchronized setMusicPlayerResume(Z)V
    .registers 3
    .parameter "resume"

    .prologue
    .line 97
    const-class v0, Lcom/sec/android/app/music/MusicUtils;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/sec/android/app/music/MusicUtils;->sIsMusicPlayerResume:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 98
    monitor-exit v0

    return-void

    .line 97
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setRingtone(Landroid/content/Context;JZ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1696
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1698
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1700
    :try_start_a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1701
    if-eqz p3, :cond_1e

    .line 1702
    const-string v3, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :goto_18
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1712
    :goto_1d
    return-void

    .line 1704
    :cond_1e
    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_18

    .line 1707
    :catch_26
    move-exception v0

    .line 1709
    sget-object v0, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public static setSpinnerState(Landroid/app/Activity;)V
    .registers 4
    .parameter "a"

    .prologue
    const/4 v2, 0x5

    .line 832
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 834
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 837
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 844
    :goto_17
    return-void

    .line 841
    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    goto :goto_17
.end method

.method public static unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 248
    if-nez p0, :cond_a

    .line 249
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v3, " Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_9
    :goto_9
    return-void

    .line 252
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 253
    .local v0, cw:Landroid/content/ContextWrapper;
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/MusicUtils$ServiceBinder;

    .line 254
    .local v1, sb:Lcom/sec/android/app/music/MusicUtils$ServiceBinder;
    if-nez v1, :cond_1e

    .line 255
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->CLASSNAME:Ljava/lang/String;

    const-string v3, " Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 258
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 259
    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 263
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    goto :goto_9
.end method

.method public static updateDbColumnWith(Landroid/content/Context;[JLjava/lang/String;I)V
    .registers 11
    .parameter "context"
    .parameter "list"
    .parameter "column"
    .parameter "value"

    .prologue
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v2, where:Ljava/lang/StringBuilder;
    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v3, p1

    if-ge v0, v3, :cond_20

    .line 365
    aget-wide v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 366
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1d

    .line 367
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 370
    :cond_20
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 372
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    return-void
.end method
