.class public final Lcom/google/android/music/store/MusicContent$Genres;
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
    name = "Genres"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1086
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "genres"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumsOfGenreCount(Landroid/content/Context;J)I
    .registers 5
    .parameter "context"
    .parameter "genreId"

    .prologue
    .line 1191
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1192
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public static getAlbumsOfGenreUri(J)Landroid/net/Uri;
    .registers 6
    .parameter "genreId"

    .prologue
    .line 1170
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_1f

    .line 1171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid genreId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1173
    :cond_1f
    sget-object v1, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1174
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1175
    const-string v1, "album"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1176
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getGenreMembersCount(Landroid/content/Context;J)I
    .registers 5
    .parameter "context"
    .parameter "genreId"

    .prologue
    .line 1183
    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 1184
    .local v0, uri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public static getGenreMembersUri(J)Landroid/net/Uri;
    .registers 3
    .parameter "genreId"

    .prologue
    .line 1138
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getGenreMembersUri(JLjava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "genreId"
    .parameter "sortParam"

    .prologue
    .line 1145
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "members"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1146
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p2, :cond_19

    .line 1147
    const-string v1, "order"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1149
    :cond_19
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;
    .registers 5
    .parameter "genreId"

    .prologue
    .line 1121
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    .line 1122
    sget-object v0, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1124
    :goto_1a
    return-object v0

    :cond_1b
    sget-object v0, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1a
.end method
