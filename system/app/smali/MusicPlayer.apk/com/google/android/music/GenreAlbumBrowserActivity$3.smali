.class Lcom/google/android/music/GenreAlbumBrowserActivity$3;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 518
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v0

    #calls: Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateAllOfflineSelectedStatuses()V
    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$200(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 520
    :cond_11
    return-void
.end method
