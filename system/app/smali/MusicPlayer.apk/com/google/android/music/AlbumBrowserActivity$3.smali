.class Lcom/google/android/music/AlbumBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


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
    .line 332
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$3;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$3;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 337
    return-void
.end method
