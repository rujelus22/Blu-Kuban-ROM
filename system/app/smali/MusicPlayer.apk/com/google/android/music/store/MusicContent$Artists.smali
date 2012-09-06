.class public final Lcom/google/android/music/store/MusicContent$Artists;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artists"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 988
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "artists"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumsByArtistsCount(Landroid/content/Context;J)I
    .registers 5
    .parameter "context"
    .parameter "artistId"

    .prologue
    .line 1073
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1074
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public static getAlbumsByArtistsUri(J)Landroid/net/Uri;
    .registers 5
    .parameter "artistId"

    .prologue
    .line 1055
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    .line 1056
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid artistId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_1f
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;
    .registers 5
    .parameter "artistId"

    .prologue
    .line 1023
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    .line 1024
    sget-object v0, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1026
    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1a
.end method

.method public static getAudioByArtistCount(Landroid/content/Context;J)I
    .registers 6
    .parameter "context"
    .parameter "artistId"

    .prologue
    .line 1065
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistUri(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1066
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public static getAudioByArtistUri(Ljava/lang/Long;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "artistId"
    .parameter "sortParam"

    .prologue
    .line 1037
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_25

    .line 1038
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid artist id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1041
    :cond_25
    invoke-static {p0}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1042
    .local v0, uri:Landroid/net/Uri;
    if-eqz p1, :cond_3f

    .line 1043
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "order"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1047
    :cond_3f
    return-object v0
.end method
