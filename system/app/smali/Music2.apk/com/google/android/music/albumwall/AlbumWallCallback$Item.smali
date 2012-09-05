.class public Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
.super Ljava/lang/Object;
.source "AlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private mHasLocal:Z

.field private mHasRemote:Z

.field private mId:J

.field private mKeepOn:Z

.field private mSortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHasLocal()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mHasLocal:Z

    return v0
.end method

.method public getHasRemote()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mHasRemote:Z

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mId:J

    return-wide v0
.end method

.method public getKeepOn()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mKeepOn:Z

    return v0
.end method

.method public getSortKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasSortKey()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mSortKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setHasLocal(Z)V
    .registers 2
    .parameter "hasLocal"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mHasLocal:Z

    .line 83
    return-void
.end method

.method public setHasRemote(Z)V
    .registers 2
    .parameter "hasRemote"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mHasRemote:Z

    .line 75
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mId:J

    .line 67
    return-void
.end method

.method public setKeepOn(Z)V
    .registers 2
    .parameter "keepOn"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mKeepOn:Z

    .line 91
    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .registers 2
    .parameter "sortKey"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->mSortKey:Ljava/lang/String;

    .line 56
    return-void
.end method
