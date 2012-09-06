.class final Lcom/google/android/music/QueryBrowserActivity$2;
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
.field artistName:Ljava/lang/String;

.field final cols:[Ljava/lang/String;

.field final synthetic val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$artistId:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$artistId:J

    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "artist"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$2;->cols:[Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$2;->artistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$artistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$2;->cols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_24

    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 240
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$2;->artistName:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2a

    .line 243
    :cond_24
    if-eqz v6, :cond_29

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_29
    return-void

    .line 243
    :catchall_2a
    move-exception v0

    if-eqz v6, :cond_30

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    throw v0
.end method

.method public taskCompleted()V
    .registers 5

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$2;->val$artistId:J

    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity$2;->artistName:Ljava/lang/String;

    #calls: Lcom/google/android/music/QueryBrowserActivity;->onTrackArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->access$100(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;)V

    .line 251
    return-void
.end method
