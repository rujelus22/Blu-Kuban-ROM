.class Lcom/google/android/music/PlaylistBrowserActivity$1$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity$1;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/PlaylistBrowserActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity$1;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$1$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$1$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$1$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 105
    :cond_15
    return-void
.end method
