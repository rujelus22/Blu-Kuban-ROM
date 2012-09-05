.class final Lcom/google/android/music/QueryBrowserActivity$1;
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
.field mArtistName:Ljava/lang/String;

.field mSortAlbumArtistName:Ljava/lang/String;

.field final synthetic val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localArtistId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v1

    const-string v0, "artistSort"

    aput-object v0, v2, v3

    .line 182
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 184
    .local v6, c:Landroid/database/Cursor;
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_3a

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 190
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mArtistName:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mSortAlbumArtistName:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_40

    .line 195
    :cond_3a
    if-eqz v6, :cond_3f

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_3f
    return-void

    .line 195
    :catchall_40
    move-exception v0

    if-eqz v6, :cond_46

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v0
.end method

.method public taskCompleted()V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$appManager:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mSortAlbumArtistName:Ljava/lang/String;

    #calls: Lcom/google/android/music/QueryBrowserActivity;->onAlbumArtistClick(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->access$000(Lcom/google/android/music/activitymanagement/MusicStateController;JLjava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
