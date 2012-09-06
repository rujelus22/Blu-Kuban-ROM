.class public final Lcom/google/android/music/store/MusicContent$AlbumArt;
.super Ljava/lang/Object;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumArt"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1256
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "albumart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumArtUri(JZII)Landroid/net/Uri;
    .registers 8
    .parameter "albumId"
    .parameter "allowFaux"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1319
    if-eqz p2, :cond_1e

    .line 1320
    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "albumorfauxart"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1323
    .local v0, builder:Landroid/net/Uri$Builder;
    #calls: Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    invoke-static {v0, p3, p4}, Lcom/google/android/music/store/MusicContent;->access$000(Landroid/net/Uri$Builder;II)V

    .line 1324
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1328
    :goto_1d
    return-object v1

    .line 1326
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_1e
    sget-object v1, Lcom/google/android/music/store/MusicContent$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1327
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    #calls: Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    invoke-static {v0, p3, p4}, Lcom/google/android/music/store/MusicContent;->access$000(Landroid/net/Uri$Builder;II)V

    .line 1328
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1d
.end method

.method public static getFauxAlbumArtUri(JII)Landroid/net/Uri;
    .registers 7
    .parameter "albumId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1311
    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "albumfauxart"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1314
    .local v0, builder:Landroid/net/Uri$Builder;
    #calls: Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    invoke-static {v0, p2, p3}, Lcom/google/android/music/store/MusicContent;->access$000(Landroid/net/Uri$Builder;II)V

    .line 1315
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getMediaStoreAlbumArt(J)Landroid/net/Uri;
    .registers 4
    .parameter "mediaAlbumId"

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/albumart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static openFileDescriptor(Landroid/content/Context;JII)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .parameter "context"
    .parameter "albumId"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1278
    sget-object v2, Lcom/google/android/music/store/MusicContent$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1279
    .local v0, builder:Landroid/net/Uri$Builder;
    #calls: Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    invoke-static {v0, p3, p4}, Lcom/google/android/music/store/MusicContent;->access$000(Landroid/net/Uri$Builder;II)V

    .line 1281
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1e
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1e} :catch_20

    move-result-object v2

    .line 1286
    :goto_1f
    return-object v2

    .line 1282
    :catch_20
    move-exception v1

    .line 1286
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_1f
.end method
