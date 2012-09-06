.class Lcom/google/android/music/widgets/TrackListView$8;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFoundMultiSubmitterPhoto:Z

.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 3
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$8;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->mFoundMultiSubmitterPhoto:Z

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$1000(Lcom/google/android/music/widgets/TrackListView;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/athome/AtHomeContentProvider;->SUBMITTER_STATS_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/music/widgets/TrackListView;->access$1100()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 233
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_29

    .line 235
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 236
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->mFoundMultiSubmitterPhoto:Z
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_2c

    .line 240
    :cond_26
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 243
    :cond_29
    return-void

    :cond_2a
    move v0, v7

    .line 236
    goto :goto_24

    .line 240
    :catchall_2c
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method public taskCompleted()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$1200(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView$8;->mFoundMultiSubmitterPhoto:Z

    if-eq v0, v1, :cond_16

    .line 247
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->this$0:Lcom/google/android/music/widgets/TrackListView;

    iget-boolean v1, p0, Lcom/google/android/music/widgets/TrackListView$8;->mFoundMultiSubmitterPhoto:Z

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mHasMultiSubmitterPhotos:Z
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$1202(Lcom/google/android/music/widgets/TrackListView;Z)Z

    .line 248
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$8;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    .line 250
    :cond_16
    return-void
.end method
