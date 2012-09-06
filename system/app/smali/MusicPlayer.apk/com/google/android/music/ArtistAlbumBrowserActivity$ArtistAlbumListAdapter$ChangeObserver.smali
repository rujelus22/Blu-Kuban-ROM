.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 1093
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1094
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 1098
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    #calls: Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->onContentChanged()V
    invoke-static {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->access$1200(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 1104
    return-void
.end method
