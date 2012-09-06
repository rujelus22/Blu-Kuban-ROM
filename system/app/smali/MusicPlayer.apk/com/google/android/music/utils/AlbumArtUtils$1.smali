.class final Lcom/google/android/music/utils/AlbumArtUtils$1;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/AlbumArtUtils;->createAlbumIdIteratorFactoryForContentUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/music/utils/AlbumArtUtils$1;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIterator()Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$1;->val$contentUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 310
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;

    invoke-direct {v0, v6}, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
