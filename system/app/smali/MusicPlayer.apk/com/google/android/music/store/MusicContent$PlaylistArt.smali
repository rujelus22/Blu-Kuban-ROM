.class public final Lcom/google/android/music/store/MusicContent$PlaylistArt;
.super Ljava/lang/Object;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaylistArt"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1347
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "playlistfauxart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/store/MusicContent$PlaylistArt;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaylistArtUri(JII)Landroid/net/Uri;
    .registers 7
    .parameter "playlistId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1396
    sget-object v1, Lcom/google/android/music/store/MusicContent$PlaylistArt;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1397
    .local v0, builder:Landroid/net/Uri$Builder;
    #calls: Lcom/google/android/music/store/MusicContent;->appendWidthAndHeightIfAvailable(Landroid/net/Uri$Builder;II)V
    invoke-static {v0, p2, p3}, Lcom/google/android/music/store/MusicContent;->access$000(Landroid/net/Uri$Builder;II)V

    .line 1398
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
