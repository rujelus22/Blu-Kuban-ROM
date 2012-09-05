.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResult"
.end annotation


# instance fields
.field public mFound:Z

.field public mIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    .line 269
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4
    .parameter "index"
    .parameter "found"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    .line 272
    iput p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 273
    iput-boolean p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    .line 274
    return-void
.end method
