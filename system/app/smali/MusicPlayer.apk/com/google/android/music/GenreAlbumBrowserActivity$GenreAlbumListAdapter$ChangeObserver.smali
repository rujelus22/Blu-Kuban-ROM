.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 1070
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1071
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 1075
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    #calls: Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->onContentChanged()V
    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->access$1300(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 1081
    return-void
.end method
