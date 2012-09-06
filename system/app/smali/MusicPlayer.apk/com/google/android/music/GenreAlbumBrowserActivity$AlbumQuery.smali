.class final Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1133
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
