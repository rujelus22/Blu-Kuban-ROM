.class Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;
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


# direct methods
.method constructor <init>(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 900
    iput-object p1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 902
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->mId:J
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->access$1100(Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSongUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 903
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback$3;->this$1:Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;

    iget-object v1, v1, Lcom/google/android/music/utils/ContextMenuManager$ContextMenuCallback;->this$0:Lcom/google/android/music/utils/ContextMenuManager;

    #getter for: Lcom/google/android/music/utils/ContextMenuManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/utils/ContextMenuManager;->access$900(Lcom/google/android/music/utils/ContextMenuManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 904
    const-string v1, "ContextMenuUtils"

    const-string v2, "Could not remove item from AtHome queue"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_24
    return-void
.end method
