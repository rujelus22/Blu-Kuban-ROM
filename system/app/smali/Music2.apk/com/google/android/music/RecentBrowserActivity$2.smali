.class Lcom/google/android/music/RecentBrowserActivity$2;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 302
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 303
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$000(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v0

    .line 304
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #getter for: Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$200(Lcom/google/android/music/RecentBrowserActivity;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2c

    .line 306
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #setter for: Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumId:J
    invoke-static {v2, v0, v1}, Lcom/google/android/music/RecentBrowserActivity;->access$202(Lcom/google/android/music/RecentBrowserActivity;J)J

    .line 307
    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity$2;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    #calls: Lcom/google/android/music/RecentBrowserActivity;->requestReconfig()V
    invoke-static {v2}, Lcom/google/android/music/RecentBrowserActivity;->access$300(Lcom/google/android/music/RecentBrowserActivity;)V

    .line 310
    .end local v0           #albumId:J
    :cond_2c
    return-void
.end method
