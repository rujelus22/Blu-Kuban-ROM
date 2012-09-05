.class public final Lcom/google/android/music/store/MusicContent;
.super Lcom/google/android/music/api/MusicContentApi;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MusicContent$SystemMediaStore;,
        Lcom/google/android/music/store/MusicContent$Recent;,
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

    .line 74
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "KeepOn"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->KEEP_ON_URI:Landroid/net/Uri;

    .line 76
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "DownloadQueue"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent;->DOWNLOAD_QUEUE_URI:Landroid/net/Uri;

    .line 119
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
    .line 113
    invoke-direct {p0}, Lcom/google/android/music/api/MusicContentApi;-><init>()V

    return-void
.end method

.method public static existsContent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 11
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 150
    sget-object v2, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_10

    .line 158
    :goto_f
    return v8

    .line 156
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

    .line 158
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v0

    goto :goto_f

    :cond_23
    move v0, v8

    .line 156
    goto :goto_1e

    .line 158
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

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, count:I
    sget-object v2, Lcom/google/android/music/store/MusicContent;->COUNT_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_19

    :try_start_e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 131
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1d

    move-result v7

    .line 134
    :cond_19
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 136
    return v7

    .line 134
    :catchall_1d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method
