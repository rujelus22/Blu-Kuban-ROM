.class final Lcom/google/android/music/albumwall/MusicAlbumWallCallback$NewAndRecentQuery;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewAndRecentQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 150
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ListType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$NewAndRecentQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
