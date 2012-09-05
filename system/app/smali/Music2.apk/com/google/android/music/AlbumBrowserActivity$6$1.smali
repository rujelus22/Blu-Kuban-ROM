.class Lcom/google/android/music/AlbumBrowserActivity$6$1;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AlbumBrowserActivity$6;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/AlbumBrowserActivity$6;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity$6;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$6$1;->this$1:Lcom/google/android/music/AlbumBrowserActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$6$1;->this$1:Lcom/google/android/music/AlbumBrowserActivity$6;

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity$6;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 837
    return-void
.end method
