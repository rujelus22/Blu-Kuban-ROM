.class Lcom/google/android/music/ArtistAlbumBrowserActivity$1;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

.field final synthetic val$c:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->val$c:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->val$c:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_11
    return-void
.end method
