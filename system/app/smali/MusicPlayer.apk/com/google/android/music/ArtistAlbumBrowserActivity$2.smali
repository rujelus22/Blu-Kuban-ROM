.class Lcom/google/android/music/ArtistAlbumBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicExpandableListView;->invalidateViews()V

    .line 361
    return-void
.end method
