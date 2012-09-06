.class Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;
.super Ljava/lang/Object;
.source "ContextMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

.field final synthetic val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field final synthetic val$itemPosition:I

.field final synthetic val$service:Lcom/google/android/music/IMusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;Lcom/google/android/music/IMusicPlaybackService;Lcom/google/android/music/medialist/MediaList$MediaCursor;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iput-object p2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$service:Lcom/google/android/music/IMusicPlaybackService;

    iput-object p3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iput p4, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$itemPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 926
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$service:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    .line 927
    .local v0, currentPlayPosition:I
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 936
    .end local v0           #currentPlayPosition:I
    :cond_e
    :goto_e
    return-void

    .line 928
    .restart local v0       #currentPlayPosition:I
    :cond_f
    iget v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$itemPosition:I

    if-ge v2, v0, :cond_35

    .line 929
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$itemPosition:I

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 933
    .end local v0           #currentPlayPosition:I
    :catch_1b
    move-exception v1

    .line 934
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "ContextMenuUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetQueuePosition failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 930
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #currentPlayPosition:I
    :cond_35
    :try_start_35
    iget v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$itemPosition:I

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_e

    .line 931
    iget-object v2, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$cursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v3, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$4;->val$itemPosition:I

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_44} :catch_1b

    goto :goto_e
.end method
