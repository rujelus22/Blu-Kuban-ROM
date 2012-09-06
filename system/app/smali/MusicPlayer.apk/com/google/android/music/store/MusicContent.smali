.class public final Lcom/google/android/music/store/MusicContent;
.super Lcom/google/android/music/api/MusicContentApi;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicContent$SystemMediaStore;,
        Lcom/google/android/music/store/MusicContent$Recent;,
        Lcom/google/android/music/store/MusicContent$PlaylistArt;,
        Lcom/google/android/music/store/MusicContent$AlbumArt;,
        Lcom/google/android/music/store/MusicContent$Search;,
        Lcom/google/android/music/store/MusicContent$Genres;,
        Lcom/google/android/music/store/MusicContent$Artists;,
        Lcom/google/android/music/store/MusicContent$Albums;,
        Lcom/google/android/music/store/MusicContent$XAudio;,
        Lcom/google/android/music/store/MusicContent$Playlists;,
        Lcom/google/android/music/store/MusicContent$CommonColumns;
    }
.end annotation


# static fields
.field private static final COUNT_COLUMNS:[Ljava/lang/String;

.field public static final DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

.field public static final KEEP_ON_URI:Landroid/net/Uri;

.field public static final STREAM_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "play"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->STREAM_URI:Landroid/net/Uri;

    .line 80
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "KeepOn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->KEEP_ON_URI:Landroid/net/Uri;

    .line 82
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "DownloadQueue"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicContent;->COUNT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/music/api/MusicContentApi;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri$Builder;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V

    return-void
.end method

.method private static appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    .registers 5
    .parameter "builder"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1334
    if-lez p1, :cond_16

    if-lez p2, :cond_16

    .line 1335
    const-string v0, "w"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1336
    const-string v0, "h"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1338
    :cond_16
    return-void
.end method

.method public static deleteAllRemoteContent(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 175
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "remote"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public static existsContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 156
    sget-object v2, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_10

    .line 164
    :goto_f
    return v8

    .line 162
    :cond_10
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_25

    move-result v0

    if-ne v0, v7, :cond_23

    move v0, v7

    .line 164
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_f

    :cond_23
    move v0, v8

    .line 162
    goto :goto_1e

    .line 164
    :catchall_25
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getCount(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, count:I
    sget-object v2, Lcom/google/android/music/store/MusicContent;->COUNT_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_19

    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 137
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    move-result v7

    .line 140
    :cond_19
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 142
    return v7

    .line 140
    :catchall_1d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method
