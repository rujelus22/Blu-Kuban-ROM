.class final Lcom/google/android/music/QueryBrowserActivity$3;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/QueryBrowserActivity;->handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final cols:[Ljava/lang/String;

.field playlistName:Ljava/lang/String;

.field playlistType:I

.field final synthetic val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playlistId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "ListType"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->cols:[Ljava/lang/String;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;

    .line 263
    iput v3, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistType:I

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    invoke-static {v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$3;->cols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 270
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_27

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;

    .line 272
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistType:I
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_2d

    .line 275
    :cond_27
    if-eqz v6, :cond_2c

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_2c
    return-void

    .line 275
    :catchall_2d
    move-exception v0

    if-eqz v6, :cond_33

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_33
    throw v0
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistType:I

    #calls: Lcom/google/android/music/QueryBrowserActivity;->onPlaylistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->access$200(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;I)V

    .line 283
    return-void
.end method
