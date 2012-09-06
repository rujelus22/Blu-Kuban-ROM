.class Lcom/google/android/music/PlaylistBrowserActivity$3;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 432
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->updateAllOfflineSelectedStatuses()V

    .line 434
    :cond_11
    return-void
.end method
