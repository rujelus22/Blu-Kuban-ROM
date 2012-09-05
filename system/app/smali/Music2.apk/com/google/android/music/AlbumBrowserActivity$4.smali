.class Lcom/google/android/music/AlbumBrowserActivity$4;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$4;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$4;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 431
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$4;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    #calls: Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->updateAllOfflineSelectedStatuses()V
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$600(Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;)V

    .line 433
    :cond_11
    return-void
.end method
